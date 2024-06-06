Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645D1376E1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717700843; cv=none; b=iN2Mu9Pn0U2XEUm5YUIHQeLHSALazFte8aX49q9cW1ui/aeMBUik6MnGlA9Sxw1KMYR9EZ/RfZXlc23yZ4iNzG5V4eQ2FZ+JgRZ4gfoIdcQS/Ar9c5lJSPwx9RZbgVagr/JEWEOLJXFtGuGE1zRfKQPFdNoQu6FgjPerOV5woOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717700843; c=relaxed/simple;
	bh=Ygw7O+d+ZwbWGUAzf8swG9yJhiwwQ96kD6Cl2J4TMyY=;
	h=To:Subject:From:Message-Id:Date; b=Lj7IfXphA0AfyGMxtwDCcdZc8oBZ7Dq4UGR1/LbhvVVBV7IZAx06A19iwS8Lr1tPZuGCuryDH1i8x1VNzTtjsgb76WeYDj3irnJRWetr3ax/KZsAYCVsZ5ct0vphgzYtDzmDej87tW5UnBX26lQ6aZCAtRvWbJ+Lzg2cdaeK574=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwUWjcDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwUWjcDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9410C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717700842;
	bh=Ygw7O+d+ZwbWGUAzf8swG9yJhiwwQ96kD6Cl2J4TMyY=;
	h=To:Subject:From:Date:From;
	b=MwUWjcDbOKcsun9XZaTPAD+khenSI6YxXz6W7TSr2RNO2HebyFTiXrA97rs2PaDMk
	 ezunSW/prckDDyfnGvH/rC5KeqQ+S9DxFgd99rD7FPX5mMjQTuehdqCQL3AoKxSYX0
	 A+lxVNJuAx9AcS3LAxwFy3tOtYkMXcgucHfOqlNmkANdXkYJSVncyu6AH5WN/an1QB
	 TCLpPj4VO2czXFKRZ9mY4QvRH7kORQvY6dz/YWp6hAmTN8l0wJlnDPagpsAMz4sn37
	 cpgGvyNXoxP2KRKt+8j1JL5vi/ODwbFDZftGZp/ACdfHKuH+lmfc7FjeOXJG+B60u5
	 xub5+R4j/E5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAC9C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770084281.9637.17455114101074483831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2072e8e1bc6aabc427b8f652d3e550253d80932bbd07d33e15303c22b6e497
Date: Thu, 06 Jun 2024 19:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717700842
