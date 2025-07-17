Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195F01953BB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752717594; cv=none; b=WJ0oFVsy0VRv19Ug8uksci/mA3RViXngrSnVMBnX0Xm1fLEoDvIlkMkegfU5T3LdzPosxcySjTdQ/jmDBiDSTnjKfNQSgDuEtLXCymErWSU6TFlX1y3p3alnANb9emMHiRlbpgZs/3blOIwj35oFw4/wnkfZMMSP2KdV/9hQWZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752717594; c=relaxed/simple;
	bh=NUDUIABNxVvx16vmVaR5WNmlz2dSUjsgfG8bEk1AJh4=;
	h=To:Subject:From:Message-Id:Date; b=J3bpyXI+PRIsnGduYOptABptCd+FSegBbHlrFUTygRAVzVTIMlOcjn6nVVkyhhEy2+PcPyuo0L4b/xkpWW3RWhChe/pxG//Wb7f4A5A8+Yo1M9WlBxbh6PnHaSpfTHwLJu5VjlSmBPEcZ0S0B9YS+o674oRgZovtbBdQidh3tkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIOJaoN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIOJaoN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3DDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752717593;
	bh=NUDUIABNxVvx16vmVaR5WNmlz2dSUjsgfG8bEk1AJh4=;
	h=To:Subject:From:Date:From;
	b=HIOJaoN6Mvs46WPD5jnMx5vMnjEnZ/ZTrUA+PuGSPhQucdEbM/ZBlzRWMPQeCRvyd
	 wbSkSgHhwaB5IpFNb7v8ddzuVcyKRXi1mE40iF3k7lMjBiaXYhtaxd6HBRrr0ts4uI
	 iBYGvqz68zyVnSDef21SQnaylIEmL4OrLRZtP8lKwNwD66JvQ3Riz0sLn+8SrQfN6Q
	 zR/DdM/+v1m5zhSj0PbZdNwfSxxOFP7c1t4HUPQXfZqBhnaF0u8ceXhlknNcz49/yF
	 pWjKGABaHMRzHL7/OiU4AXLoSMHhyJwmx35Y9gUnPL/xZYg4a5F7fs9EQCCLLgm9qX
	 ASpIBfRo1p1Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F348C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271759357.25275.16441084306108214558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d23618178cbc874ae477364aa5e6af9c417c7c1922ad26c14ef9cdfa4684d4
Date: Thu, 17 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752717593
