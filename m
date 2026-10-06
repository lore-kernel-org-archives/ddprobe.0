Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0B43BC68D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791282034; cv=none; b=Tv53hIvel2hD5DpbGPriepDQV4aIuWnpAGbLCB+FzJYXbFijZRdDywlXl8Cu3s0sLNjx3V9sFhz9MVSX6hefXMINRqm1pFg+UHAKX9hTQo0fiDzShj/1UBuk+rXHBDzoPwh/ZcGnxOYdo2M3i1X/Nc0M1kdDP1mWZaCHE8IofEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791282034; c=relaxed/simple;
	bh=i6Wh/eUVa0sfHie6O0Qd5jv7LOXSKIDAtaW0iaLZjo8=;
	h=To:Subject:From:Message-Id:Date; b=ePY6NaS+AlNFwZklC++1JeF2qHTth97cHAX6A81GKLx+xIxa6lBDgXvPtzgL6RxFcwRIHdRx9nfmTmwdez0/B6rHZ6oiKU6u3WmELpcqZCNaBheAP0DZDz9yBkGboMpPAFNWay0QRj4bt4hDs1hzPhY6BO7vOEfMujGCUsuylJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdH/ctrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdH/ctrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA8BC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791282033;
	bh=i6Wh/eUVa0sfHie6O0Qd5jv7LOXSKIDAtaW0iaLZjo8=;
	h=To:Subject:From:Date:From;
	b=SdH/ctrLO9nv+b4tf+KG1nVypl0kKaahp2wShJG2Ty5OJXRDTFyJB/twdGEKK4b13
	 P+TTOX3JHsNAusWTXXLWXW0NgPsD/qS6rwX2RmxbP87wUKnM7743USenG5U/ZZFaI+
	 NNb10Bsdht4ldBOXQjxBuxnhJZ3Y6NB89cVJJphU6UPYn1bmJooFvgcTIvWKppljET
	 /CrwijvZh8FY5h+5RTAbl0u1l7r0PzDw3r4lIGBffomy0tfSvYB67evg9746vFd0UZ
	 k9svMD3SSUNM3wbtyNlO8g5TdGVTE060fM+FDUVUB/FCq4WIyqP8Z1jjR51uCl1kGX
	 u2bX10hFYDWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51DCCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128203369.4342.11297426458960307215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3828e3d174524116adb350ac4cbc73ed8ec2f6a8a90ff1a20ab0207c84717bce
Date: Tue, 06 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791282033
