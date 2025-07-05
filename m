Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9A16A956
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751691594; cv=none; b=tFF4Z+kzTdYiVXXmw300e7f4/4i4II/p12klN+Gtqs58g/aX48dEiEmt5iiFS2IyoWmaW4O7e7boBVww6IMknhawMvio/zS9oitWoIRclmfEt4U0admRuIB701NceO9yYoMzuursAYuarRXWZv+UwqnsHv+SmZ/+h2RHxyl2OYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751691594; c=relaxed/simple;
	bh=c7g8wSSsNTjhuQ26dCsDnUaObu7vj3MMYUdocEyRApk=;
	h=To:Subject:From:Message-Id:Date; b=hIwrLVtXXiXUwXIqoCgRBkrR8wlMOV1JuK59CxbYuoZernUlEp3ITsSpJFDbmwuX9SC3qoWj7PacTC59+BDN9SpPXdK4RMmHeJkGKCisboAcm4GkaeTQc6u9dMGqNM3GMCS8dyX0EBNsp/CYwzhInASdKaFs2SOSZe9CWbdxMBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vD4M5G9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vD4M5G9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C69C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751691593;
	bh=c7g8wSSsNTjhuQ26dCsDnUaObu7vj3MMYUdocEyRApk=;
	h=To:Subject:From:Date:From;
	b=vD4M5G9TLKs6WZDyBZ57Sg4APHy/o4ISVqb3W9EQTQJFQHqFSxq0G1qrw6Kg7sYQE
	 m0dl8sINtRjtXzQY45QW6TYBcagHFy5nMogMBgsikCbZCkSc7MqBZHYDKymUR8SxWc
	 QvUjweEjdSBrVZDMrOsNTbN2UH4Y8O6mXgAmY9Mn177SRHKkYQYSYovF+q7ElpVm01
	 22hh2vJPiH0ospzZ+uu814XTlQMcxPDzyhO16qoT8rFRue2DV87HFufoFqdH2hZvut
	 yR4/nN8a/0yX7TTteXNu9llNsgRBlT/0clnejGydnuA8I75R+HTOUFpoA0DnxuPATP
	 QGPL1wwLPWSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B92C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169159357.6355.11101788435772547794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed86c514a4fb24805ea06e17df7be590bb8114b8db6d0616818d84b77cf168cf
Date: Sat, 05 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751691593
