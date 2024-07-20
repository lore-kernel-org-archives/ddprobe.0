Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC583CA3
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721483754; cv=none; b=ADbefsUMStke63BL9q32ltCXHIEY4gK6cnRtrrRs6XcQhByfiMeTwV6iemj/mrIgjTQ8Vyuh/VLFsTNTqVu2JBpwzSp6nMQiTRKTr0JcIq3Y5HWZEgNfwbxejIXHZQRRKIwq1YDmVFpnMnPKExp7JDg8N6jxRaD5frqKdtGk3Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721483754; c=relaxed/simple;
	bh=WYIatdJf6KjMyPDzXJthLHukI8YKQoOsJAZjiMtlN4I=;
	h=To:Subject:From:Message-Id:Date; b=g8pP0c8n4Kd90UiGdxPYNqC1ggJyq3Ln0xckS+iDWsoCTkesukhug1gPfMvPGPE/y/NaiktkeSL4oTTr1ZNq83iMauiwNHfrVVigwU/UhB/pTnczRBF5OUFhy4fUfkB6PHeaMmtmelpeadg4AMz8elCvUq8LBvL3C+L/AxunEIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWKpc9Pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWKpc9Pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B506CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721483753;
	bh=WYIatdJf6KjMyPDzXJthLHukI8YKQoOsJAZjiMtlN4I=;
	h=To:Subject:From:Date:From;
	b=IWKpc9PlA71uGH30t5uSwb41jug9w+fuoKtJgzrt4Q3yrat/fQdDtwLXdLSrQHnKR
	 iS9WPFUBLuHwv1OEG0vM9ohXpSitv6lSRK/nVf2cC6CcTUqdV51bwB4lFlxAtDY2Ax
	 ZwoNS1zLeytejlCl7hDmpKr6Ro3yGAGzSOB9JK+OygBCkNxjzeHzm4RSf0b2kXENtE
	 l9yPU0CZQuogT9HzpDsf8naruhp+DnN15IH6JyyZVynV9h5UzKRw08RB3OdMVsflzd
	 In5eAHBtUG59q5a/u7u10A4fh0sjI7cMjHQzsigiNvtwRvR8RpwpwkFbsYg2CZnF/a
	 mElyzAWuoj4hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D805C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148375360.25241.8195211795030392851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3927aa8c4d9ebd64f02826463e4ca6e72e7b1dac801dcbdeba9d8a1e02ce9796
Date: Sat, 20 Jul 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721483753
