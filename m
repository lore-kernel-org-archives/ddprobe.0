Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331B2187870
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734824154; cv=none; b=ux5zXXYmaW+0A8rX6+4jCoXSOi6dRbYKXI6WeHvkZAZXiMl64D/Kv08bRt/UhsuLbXZa3mQX83CAVKspFQZgERziaeZyXtTKLg+ZxTt1VT54wYRwVl2LYB3XKZ8JD/ms0Tds1O2xUf3LSPtXSpMWfxhMz70vpcAKT0VMTVwD8qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734824154; c=relaxed/simple;
	bh=w2T0FZBNiYsgntloWC+ww1jJ6bXzXiyO/gQGtGgqmmk=;
	h=To:Subject:From:Message-Id:Date; b=eitm0M7X8u09wGtblao0yvnuPDN3mNOFfCzIq1lMjuqh01nNEazh1x7H3pP1pIe6LivrvYYcCgQcNmHzeYHx5V9VtYRQbHV0eVUKmGxOfe6mkzpwsNevDXn1i8OAwt8v8W3ZOUitZxsbxP/q1QPimQHhMMavbtQJQ/r9YKGfMsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/vFj1ON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/vFj1ON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90B7C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734824153;
	bh=w2T0FZBNiYsgntloWC+ww1jJ6bXzXiyO/gQGtGgqmmk=;
	h=To:Subject:From:Date:From;
	b=g/vFj1ON9qSxe78Xjq+qlUI2qIEjMr/kfTHVGph6dpVNNL6baNgevIHfq6B3ligbh
	 xc+U/q0T09oW45nAAlV4+PzPYLhPkj2COhspozpJ+llns6+6uwLViZhgqm2QO8mOSY
	 Stbe5CGMUb9GBTWXGIBs3igNum3l8KHk9qwBwnmMoZ6k99z5BtH3Jvy6xv29IM+PWF
	 4lB8jGcy0LoC4vedVNxqzh/wm0fhw+ImN8sZJlJJ+DLuI26pxqWxsm6PhRdBN4Plf8
	 n2A8ucjnTCKezk7ZtAq7JnMQGeyV/o+RnMTvSRRL3G2+Tj1OLZEDZLBzPypQjhCNnj
	 lf5ax8O6VK77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E75E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482415361.24889.1514545342684915555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9840d013ebfc293dc65d3aae675f6038a3b7feae55d402e84e177f878a3b23b4
Date: Sat, 21 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734824153
