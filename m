Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CEE29BDBA
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770108234; cv=none; b=kSXUKJPLFC3xXZ2WN3pxH2V2yQqLgIITfI4cZbSt/uslQaQwuTF3nXvYl0MvQ3SxUxj1jDd/HlMTsFlPQZhLjx5jl7Q3KwIobgeeb9+1Z8YdUt2TtLSDVuKcc+lm8xSs3n1SwkhH7p7f3S35LnAgmhWdlJSqUWOhnvznxYSG5nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770108234; c=relaxed/simple;
	bh=xslra0J44LkOEciCp0tqtHcdUJuvMDThapf/L4tFZMk=;
	h=To:Subject:From:Message-Id:Date; b=hHVgCvzQRqgAAZazMqOKczM7rh+bc/oU7vylN9qFn8ix1xesWxipZZlgOaxTlEFy9vz3j3OAoBO2nKj3QUvq9kWrBsOjUsVGlVDY8l85wsw5k6vySFjld1ykITsHdYE0Ib/u8cMBnsbkgzYiv2qvpPnePRzGgWKr/Q5JpYcKpW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9J8xmBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9J8xmBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC17C19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770108233;
	bh=xslra0J44LkOEciCp0tqtHcdUJuvMDThapf/L4tFZMk=;
	h=To:Subject:From:Date:From;
	b=r9J8xmBNmd/vndjWitd98kldWA79J1KHUcHHO+VGDI6RiPLaEBCPPHTK2Ar1aJRm5
	 bsnAFeilMzJ6IGG7U9WtP0mb2LaMhf4DR4WOwVhMYKFNFeHlz4i+r530ONjHfvKBJb
	 k2XParkQxMP4idnityPQfamHkwOtpS2gpn1VCyFHt5ne95Vh467qygLPZ1PzPhr1ce
	 UxPPJFDR4oRfHx/vBeBn3rd4xjr5EGuD3SFgp8xPqZyImmRsOW0IkDxEpi5DWZqiLp
	 Cb1YFiVe3Q1L9IIOClam8fpW/zQz5H6RhRIePFZ3Ehq+ak6cz/m3ezp+jg09vzGA35
	 eEjggmeh6MfYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC0E8305F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010823361.7999.4540184854013210984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc2e8b4bfdcde4b6500503a53eedff3c618d2bf3ffe24c6edd6dd289657f79a
Date: Tue, 03 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770108233
