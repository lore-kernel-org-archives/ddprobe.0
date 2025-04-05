Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3411F3FE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743865194; cv=none; b=b4xjWkAsLJ8YM0i2CxleYyKw+niWQix5fI5PrcqLuPb/dFAHw2cFHlO/S4wRYAbUE7Po8A0Ie2L6OFXSi+ujSfJSH1p1cZ8kzCBvNMBuVIK6E+CrNGywIyGaGyLiU0qQe7fb8iGw3csA4P3Fv8IEcWYKV7SGs7uPNOF0VWkAOhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743865194; c=relaxed/simple;
	bh=jZHxc4WaMiDyA852URvwiCHp83IvbUaHuKxA10k+1yY=;
	h=To:Subject:From:Message-Id:Date; b=O3K9HuFc33JMTkS6PY5vvrWIWvlrLIoQcLhfPyKyw9R0TdrZ96OTOdq4k8hvBhdlUF/XUGamabOODRbuRJVw3JWDNMc2m7hAWQAFMDi5T9uGuIeQ1z9voFa4vpwPS4NgXrPnUL+9gEQdVxnx4nr6DPRthP9+0+JAPZVXNd0543I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFGF5ymc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFGF5ymc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D156FC4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743865193;
	bh=jZHxc4WaMiDyA852URvwiCHp83IvbUaHuKxA10k+1yY=;
	h=To:Subject:From:Date:From;
	b=qFGF5ymczAb4fHfy6Y9t/vmkWY2mor+u536/cb2lrCDtsFgELKfPYLfcgfjT+LnBq
	 DIjRZOm/NeVjvXDw2/ZIjPcI0+ui8hFCnkoAr3S8OicGVI5x8mFh6B2wpVaYyZJRZO
	 4Cmcw+vbguVu1qBuNGdtEnTrxTnSNl41J47Y3ODoHPmqZYzEWlFtK6ack7kjCIHUzP
	 BIzpqSOLOpRfXYveZbRJovRUnSgWOvj639N7pnPr7VBk6OShmUCFQ6zlx0Khe3sfJN
	 r/hanAa/Qx93vk5QC1Ys23NrHZH+foHB3VCj4O64w5pHQ9m/8AYquyUNg46f2Ry3N0
	 Rv0Ewf7AKzbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7592C36018
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386519373.28777.10054425563746043843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7324384abcbecfa90346ed01c4c4f6da85e085ac1f4eeff53ae9c8ddb49d9cac
Date: Sat, 05 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743865193
