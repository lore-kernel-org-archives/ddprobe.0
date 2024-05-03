Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584D7D51A
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714765343; cv=none; b=AF1P6606R3aVGYD08pyEadTYqHREno+5dtxgSGa6IPJG2dERvhS7Tc9HkdeIZYjj5xocD4e6D/7t94fYoUxiVAnx+qr6diqcSNYYDshroZnmU2E2fwMlbIxAFZ+52OchTndA52MVSHE55ezKYYqV85oU0I66qrajVA3IPLXQoL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714765343; c=relaxed/simple;
	bh=8/6k9tz0L6pCsqKgCYrErFVClNCUeQpk5ax+6VeaWXo=;
	h=To:Subject:From:Message-Id:Date; b=hreS7QVXUFwrcmt+msJUQcoGfZROaWUsVIPIfrJbLlSV9MLodQkbH6HI9MtT3ZuwIlioG0qnTrsXRVXABdNgkORUvE2iXwFflK5r3pqorYMRCnO4kfi3UBLO2Nh0Jv3RxZJlDPNqzOEqejrRhzxAZgAppZCo4LMdyFoLEnlSYW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p65gBXQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p65gBXQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28CFC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714765342;
	bh=8/6k9tz0L6pCsqKgCYrErFVClNCUeQpk5ax+6VeaWXo=;
	h=To:Subject:From:Date:From;
	b=p65gBXQuwrdwU+2jIMeJH7C/dRRh+AxeK9bVEoD1wtbHV4XcByL48OGgeMzAWLh4K
	 M/M1ASbeU/35iTRLRW3XhahD4FK25PGEG+3P56+ysLjbg6a4+7pkIzQ40mi6L2HJ2+
	 pFxO64KImVBUABypPMfIYxWer6zD9iK7vPcBM5ymBETkc839uD+JcWVoSlIcyqKa69
	 8dUVU/E+KrPdVn66yghPJ5PQtCG1Ks820k+R70Q1N8X0BapPBp+grzThlo612hFfbU
	 kK0mpjUCiC3Emy3d8/Jb4JUbwX143whX7oOvfN7MugdTNyOT1Y4MgJBrRU6+A4Gqws
	 PPdIt0foP9VZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8C2C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476534276.8257.7112471015114616131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90fe16d894866c0340492653cfb8b0702ae87153c853a169665fd4535ba7f96
Date: Fri, 03 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714765342
