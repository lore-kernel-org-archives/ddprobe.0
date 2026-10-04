Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BCF35E93B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791127234; cv=none; b=LOu0wmFwEsxO1QcPLObaYny26npX4mzHLFBiwUQ7LGUr010//Rj64b6wwBKEHjhno7z21THOcumOmhZy+I2KnbKiCGLkrsoz5AmrS0J92H2SQnPmmwdtLmzlr5oDXlarNSc0FqoYAnYZcvSdSuyx+u0632iasb4tnnNgbIznOfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791127234; c=relaxed/simple;
	bh=g+hP721IV/GqROehmUstQCceX+bOVIkRMWBAlKECnhQ=;
	h=To:Subject:From:Message-Id:Date; b=cYEHJm1S8o2GYPdbDMkgrIoVzmSa7LOCC8fyAWO/3v2gcver16RfAzqnvweQJJApAfTAJr7LbhhR1t2Mf7C9FedNeZiS8pxEyF92GwmgGc+p17jIhtEAiCHpx9BjNUSn89v3dEMCHLtAmr1rjbSESd299Lca0Fo24uLV/Xv/Nc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFCMHFjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFCMHFjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6462C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791127233;
	bh=g+hP721IV/GqROehmUstQCceX+bOVIkRMWBAlKECnhQ=;
	h=To:Subject:From:Date:From;
	b=aFCMHFjG9Ykmfq4z5Wo1cvh6VWkY1+JphWw2Wgh/+MnZJF4GJBVWNzPr0ecZ6nWQS
	 mw9qhuzLskqz5TEp8/rmJuqthVYnCR0GXFcCygXtQvlqF5Nciulb2Je4eS2Q2YI7KR
	 fwe80zB0rmOcQOSAONIIxyQ3U2N7km8OfKqai4l1iv4ehiuQbbcAb/0XM7Gz9bKjLo
	 ffKMSv4RknhZsfdMw/R1tNdIoet/Fu3Te7ro1I1M8HHLaGjUz9BuAkTGqX7WqYUMzD
	 Nk/2XaZh3CNz7Gq8VXdQAodsY2gTQ8YTcLXrW4TK7xYXFwwggCP5ii1ZAAbj3YcyRK
	 6dzXptshZ734g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF14ECA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112723368.25147.11018196301129958496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e2de604cd3f433556219c52dfbab8e5353aa39cf6c234083218c7792c06b95
Date: Sun, 04 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791127233
