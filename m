Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20671320E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729445754; cv=none; b=E1o+CM2IIvKbNLbX8IFWNgKLBLJ6re+wvwclV9vfebkDVEYVfXifM0prskqjLB9KOW/6tT2JysGSYnxA2kT3llpf2JtwvA/4fQy7jykr5tgkK3K+kFLLjTLJaGwUHn9eBXJlpVsAyr9l0jv5Ti89MWmKIoj1lMBdHM89kqjs50o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729445754; c=relaxed/simple;
	bh=6APu1F+NieDSf1WsirC75B+yzKMyaYTvaxwulsregE8=;
	h=To:Subject:From:Message-Id:Date; b=GfWXg69N2osJghZfvg3JSKesyOZIpnU+8nAkiXyoghnlG3JNQ+0luowZMdCIGw0oul1ObbUZDoVi8LGSVc6JDEmo4TbrhUEFsikTSqR5TCQGOuxMbNYhaA++t15Zphhdk4H9l33D4IpOYSSt0PHzaJsKtH67fIxtFq0iCWoKLek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrP9DtR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrP9DtR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD825C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729445753;
	bh=6APu1F+NieDSf1WsirC75B+yzKMyaYTvaxwulsregE8=;
	h=To:Subject:From:Date:From;
	b=JrP9DtR2+ZxU9xXLLFQGHSLZIh9VT3dKqiNtm6Y4hubYQEnUlN5A/4oKmAbo73mMX
	 rUEkUFZ+mj/RgyZkOk73FbWXPgbTTwYRgghhErizU1LWWgAmmOLJ4PBsm+9j8sfmbO
	 i4WaGzZB3yJK/123bqrefZSpSoxAcqOAMJ7KxhQPvMRBQl8Ajp/qCZxN59e6siv/5D
	 T0xoJMn5saoiDj8H4pX7fqdYBYKY0e9niT7aymszaVvc8CmWX1aCayFh1M5OGUnNZO
	 riRXTPExQ5KZf+mxfmi0HakNB1dqe9SpDyhW4umQSsINojfO3EBhO06G+XV0JFsUYW
	 V3ABlxhn1+KoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F3CD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172944575359.17276.9775990337329995804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397d99e343f3912a58099154b6e89137e3747c510c408cb3138f722af14f23f2
Date: Sun, 20 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729445753
