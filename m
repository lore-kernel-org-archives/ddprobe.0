Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B65353A66
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783968514; cv=none; b=tPLQA/y2tGZekGlLUd7bUVEaH85G648sb+hgMpKaZLD1rwMjfEHVKr7W2z60v9L7wpHxaVpm7eJwKo8X8aeXRH+UHO2/kVv6Y/O9hkvfxB7oiJp7bJ+oSJ4UhuViyoHrF9losejEc0Kz8oJQLwMbUKlpgzNy0udZxTQC6SXQmJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783968514; c=relaxed/simple;
	bh=4430RreJmgK5/lwjNZjlWmmA+Dg6IZ+pzon7wVjboQk=;
	h=To:Subject:From:Message-Id:Date; b=d7XaJdrWN7JiH8UBUOKQ1kGrdYR1emxumuR4olsWVM9beIMufe2K8Li0hvbMMCWag5iEJoqELqaz+Iz+Hffp5nBUvYRXqtfHAy0rTt2f0xFyelpNn4aXR5k2HVo+CpxBdSM3MctvU4X1E+oK8O77b3P6KGX98+vky77Pk3IuMNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQGd1je/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQGd1je/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB56BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783968513;
	bh=4430RreJmgK5/lwjNZjlWmmA+Dg6IZ+pzon7wVjboQk=;
	h=To:Subject:From:Date:From;
	b=XQGd1je/wcViJjpxepmfDyjMcw4A14L6ls3uHA79wztR8zgHvD1jqrR2j4VaHEwNp
	 mQHOESK0/tg7B7CiKz8RmnLYAsuR8hVP228os0K+17unskfA0mivyGZ5zG+4rumavI
	 PmagLy8sx7qbcbkWN4plRhsgQdaUpxCHTawGxQqCuWRd3S1nscTRmg5kYrDKPZpUVy
	 gUB9d7YDEc2tToE7yC9dI08TDRxDBCO1LdjW8Z34cyvBKgXbnSwcwMyh6NQQ9wqcnN
	 byjiGB/xIBHfuhxFARQ+nuNBtFW4fwVJKAJaZdKP3TzgdA0DzkXlfqY2Prq6RwToXX
	 NsJEC2fdjS1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F8C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396851368.19917.4954314539612288420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2936ee414aea549389931fe8504f51e259e44ac8e5f0132ff6522b9d615c5859
Date: Mon, 13 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783968513
