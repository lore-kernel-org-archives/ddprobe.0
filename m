Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9EA189BB0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760110194; cv=none; b=Ll/nmmSV2+//vdVG1Q4rudhindU73mnA71S6qtGksCaZSht6Y7IJClZZcmWsFf4fAmyZfceRMi5OUGqE/WoMuoz68qPMvb9pQWDQtf1FwGc9yje8FMv8Xtr4Mi3nF7MNHzrQ6HD8qdXNwOeqaFb2LeaHnAyjFDO9iR6AvA01fPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760110194; c=relaxed/simple;
	bh=SfkplsBAgVVGMIm5AXhrs4xe3CZSaGpAm4fWDqv53NY=;
	h=To:Subject:From:Message-Id:Date; b=ECPvuAI3dlyVGcIgfJPIqFi19BMPT/5MDX8cGI6RTP8G7huBWygZ28t/1pcZ5HQ+LZ5fqRcZ0G3ftN5jq8CZAj9h2+q7TX3A/OBIdj/lH/ipptao4Hz1MPMr5X8XSfGqxCuATvEDG6qtgmrs3oMdeeoZyMNTuN25YejJ8Wishco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWDxMHle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWDxMHle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C6EC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760110193;
	bh=SfkplsBAgVVGMIm5AXhrs4xe3CZSaGpAm4fWDqv53NY=;
	h=To:Subject:From:Date:From;
	b=YWDxMHlefqQfqsMQuVDNBt95KhakWMtigkSu/zkPc3qw60qt0UBVYD6Yh384GeFt7
	 fON7Ekbv/z4njgC+lgsxDDc3/BQFS4cIDMSskUkuLMOeiM6uHI3c4JS2gmdMyd7qmM
	 HDbd9TIShwooXcXHHqa5vWxZJhvz72+eCh8IFjskOISln0wy0vzzyxAZCpQPdhzkdJ
	 zP4JL+BR4A1QWaYGjSroPZDb/y0XNuWtIOS9Jd4UrfvljIljsnHrqBqf5fLWILbS03
	 YD6+BhKKrMiyOL2piXaAJuh6x9vnqV1xPHcXkXgmLtYzDpN4CceZrUL7Lm07iLi2l7
	 hvGLmvoQYLD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195FCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011019358.3100.14819191075655041069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca7a54119a6277fd4597541b845b8a4a2905603ed6c762511d940f61023bc6b
Date: Fri, 10 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760110193
