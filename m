Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A911DE2C6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739954934; cv=none; b=nhHRFNF/hi2a/1tTfzK9lWnc3c5nz7c2OTHYBgEK1nTuOh2dxVtJ93wBoKP257YOtI1s+KGZQr3HUrDOJ+TydnZ0eLpek+IfQexemALfgQiH7WRLGid8crUA6SnVGEAi/oJsjV4ixFmObRx9ZVkbaI+JwNZHssr1bh9re5WaTd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739954934; c=relaxed/simple;
	bh=gF6TMl2BEWh74/oTQMVU/vUf6NZNjtucE5CWT7GbRds=;
	h=To:Subject:From:Message-Id:Date; b=oIZDdKs8Z9RxrHLISpQvt+G/6saqfR0Fm1ZA/yINcKY/kw4Ybzlxf3qlUhtpHMhq0OKhan9W/JN4NWQp3pTlAFC9hdrKeMceHVeh/inEE0AcPnGtZ2erwZTf/qr5Ydk1qmQoQKqmmYhfb7seIMEC9urJfe8Rdojjc1nD8vURUos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDLnOzKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDLnOzKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC73AC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739954933;
	bh=gF6TMl2BEWh74/oTQMVU/vUf6NZNjtucE5CWT7GbRds=;
	h=To:Subject:From:Date:From;
	b=IDLnOzKZt2lMzDmFqHLiG3qlWvjUW0ZxYB643CioF7rolj/+n11X7B9NI5zgF97Bh
	 EZNblj0md5cWQqr03wi223wmnN/hQSshfYhYvaAREnyQTyy0626mdbrWUmovM+gaph
	 LzteEyTh+gvB+xLcgys4/825oSGb2qdBRomLe13Tnsu7c2i7pAtUB+w/Jg4eVxTsbq
	 A2NBHPnZQkryrf2FQvIBYa8IJu5ccaf1zPBlcDTMjVW0+cPKpKcH5dl+sKVEYnITZQ
	 YBn/BiD7/5WFStdWX6QoJAeF9RsTjJjS8i9vE8m2U2/1j5SEZvfQ6fXqqjsqvRzY+9
	 bw8M4xEvJnvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94002C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995493359.23594.5428232939219160044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68991eb95bde07b7674c8db639f80446dc6d163a993721b289f5e317554d8c3
Date: Wed, 19 Feb 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739954933
