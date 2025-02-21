Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE4E1C5F0E
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740103134; cv=none; b=MErrQhqu7bA1Q7ceL0xpiPC09lwSww1nEi+6HVT/DM4v2dO686ZXUIMhYeKOcpdaY2YribPpl+aEu9iqL8oSgqmKNcow5n3Ey1GIc7x2zprdt3QTIfyCkQhja5HKkwhNXG9LxlkkGH4ZRL+pE/IFDVBBiStYoujpezRdDYq4Ua4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740103134; c=relaxed/simple;
	bh=REIaTTnUqd0azo/CWKFOVCy6rg0dwMGGs9W5adAtmMI=;
	h=To:Subject:From:Message-Id:Date; b=HOZLPgHDXHQVeVHYgWbX27Ddw8BbEUVYQEe0Io0QbmHqP3HoMfzEswLNIBdS+tO8JPLW23e6RD3nOt6G5A3P7aR/dS0u/q7AhjXiEmrOJn9gAvsA+MRGsiNJqviIaE+aCC2b8m3OseCEX8Bck8V6pdVkEbA+wra8OojvBOryAfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXt1Qm35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXt1Qm35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AFFC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740103133;
	bh=REIaTTnUqd0azo/CWKFOVCy6rg0dwMGGs9W5adAtmMI=;
	h=To:Subject:From:Date:From;
	b=aXt1Qm35SLGT1IKV6eFtHZEQl0YcaOU2EH/JYwx3Su6vjmFr4jm8Q7n9wMFNWJ2SD
	 BN8r/A/5VKwj4f3p7p9vEsB7ocq3yPB1phvHJv3SPhsmX+YXlxNRp9+cz+/FyWW2Ps
	 SLFOG2YwXnSYfM7+N7fSL/bb7I2FWtCzZ/p97jGdZggsTDdLtL979UNWkFYVbDINgM
	 QQp2QA4eQMBm2driwAEsK4tyNGCoPgb6snwTIf7Tgw01ezHIjftiQsldDXrFZyk8ob
	 Rp7rgfP3uHcu+kp51fHTc6AgqyGaTlwfKyNtAl/4yQgTv7JfGPleAQka+EDCjkm+Ft
	 ntzjD3/0q3PXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC7C021B2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174010313360.8926.11677666110831906881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac771ccdd036fab3115974f1f10cc278c51bfee9a6de81de749ce6d4b745aecf
Date: Fri, 21 Feb 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740103133
