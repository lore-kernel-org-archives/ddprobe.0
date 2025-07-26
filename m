Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A271166F1A
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753524594; cv=none; b=RpivOALV2pbKIg11RGqZCBajI+ZPQP/XHGfkOgsGmf/Rwp8ySRnENAQRb2MMutyAQzO67F9pA08ECeUv2y44hnen5Se6T9/rNxprXePDLHN8KZPiv+6r5PUuEkwa3zHB1m7AXY5wpCYxiTynz4881xvvoQj9xbWjWGuanoDIMLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753524594; c=relaxed/simple;
	bh=OKtajiE9/DtyofMPyRkCYE5O+CBfG/4jj6FRBrtXPCU=;
	h=To:Subject:From:Message-Id:Date; b=DKRpbxOYi2jyyEPQReIwOasSSRVf1XHBo7UofaptdEBoaUcK6vuo4Uu1GfOvpWuBflpoFxmA5LQLLHr25t0lwwEbMaZRnXeXxqKjRel+5Ihkk9P891VGYUgPZAB6b8vOotbXGM7c0EHTh5Ft+E4y3M1w2DabPFZNXNwbh7Rla24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EG/ahj+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EG/ahj+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B7C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753524593;
	bh=OKtajiE9/DtyofMPyRkCYE5O+CBfG/4jj6FRBrtXPCU=;
	h=To:Subject:From:Date:From;
	b=EG/ahj+bmWD1N4dlVRmsxsd2C/P7i+YFDGA7HmbWR50GucXG6Y/FiHMlPMT23YciK
	 gnMFoSWB61ssCZF7bAJC/g4bJjlI10v1G3MNIeMeQcITANoLyE94mSzaSl9cPm5gfH
	 DeyUq1Mzj1/tBI9E3HxKwyF20dXhpnqrT98JKZlrzbLvNq2c2xIqDuTRXr4GkYr2yF
	 ZSKU3Tm1kv+PktCSVdjDShysqTYejAWRYYRSkQB4JhEiCcw4/Rz9zQMFlXHq7Hy+b6
	 aGAZXTEmelEqtC25Qsiu/egiJLUQcJrSPApzrllbasXPZQ46EY8/uPOjzSpyJ7sX0I
	 EkHlfnL1maGbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BDC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352459357.19458.2556813767758646309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12af8bf7469dfc4dd523c46c16c76a7e4e454f550f8c06762985e08381813818
Date: Sat, 26 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753524593
