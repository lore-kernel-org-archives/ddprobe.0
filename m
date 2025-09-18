Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D823112B4
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758211794; cv=none; b=CqEQte2S5P/q5DGLSq/uFKfEgtKDLXXpB8fLleR5jOfEcqDBW7lvA2pLP03zQ3FW9UE7xI/Wjy2CWM5Y5SHPI7tzX/T7NuSY4nRggnTCD5TkhtUMxAikN6uV+vu6Irxv4gZyPluHIVA4KqZykbnc92cNzCUNSygiWtJ2FeC/5IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758211794; c=relaxed/simple;
	bh=ovS0ATdHYG3qj6vB51efY1ICFU2n027FthPFZY1yrSY=;
	h=To:Subject:From:Message-Id:Date; b=UHmVjQWvPb0VHOmXzM3ciavqbkWuOYPBL9Ds2ahPknJ/7g8ps9jnKFXh55r1BI5ifhZOlfctPqDTWs6bSSfRfr8RixhHFLfx1EwpT/ifjbZLHPhQ7a1T0lmbu8A67pUlnSwexKiwP5oXFT693/sj3c6UHBZ9irwAfzbWzOIxav0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdTo0TK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdTo0TK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF7DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758211793;
	bh=ovS0ATdHYG3qj6vB51efY1ICFU2n027FthPFZY1yrSY=;
	h=To:Subject:From:Date:From;
	b=jdTo0TK2rf+7JNlY2OL812rC5h9J14bhxmlTWCjnsGGBJvFyGz+H529lO6/DinPgy
	 E7f9QpAHtWzKVPT6IciZs//0t+scrQ0OwoFxTOFedsTcSFBGPLtT+0HkmkMJ4Or0ce
	 pPVb3vaqGcKrItFe01IQWNv8u69zwA9r42w9fqpcFTZoCyrpHXr9aWixb+AEFPDXTz
	 0OedvzZM/nm7eFwAzauYtV+ENnbEl1ssI1CvrhwNMC06NFBVeFfRwvzdn7WnPibeoB
	 v08bVamH1k7l7vo2+ARMrfE4LfH7zALs8wc7dM84VJdxXv3oeNVRuJRXcOBPjXrmeP
	 aVdMGYAstXN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A6CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821179361.30818.6605389645865154077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6966af77888097fa64e7614b89861c9a425b0f21d7a3176acb2f8d4d6aa919e9
Date: Thu, 18 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758211793
