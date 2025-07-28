Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD0A18A6AB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753717194; cv=none; b=G4J55ZWuVKPsuo6ActMDCuw/nrAGVomvcIezBiV/sm/91gurS4wz3kyZoHZsLYbfi8HlzXZTIdpsbxkrydGfjQBb9vPXmOSWFqRkdkU9b+UaAWlSphZJt937wju7jjCqr6zm+NNLSj0keNbXPJqiry35RXY5f9dM0nVQqWe8INI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753717194; c=relaxed/simple;
	bh=bcmF2MlM9wAWEWpHikX5bWJ3Km9KVqc6uYu9ESYYplA=;
	h=To:Subject:From:Message-Id:Date; b=HZxk59w2h2Z5RnxbB2jCRD4Mbp39S3JrkBz0PK2/+i5os+eVNExshLpdPQWX1YyE7lZcfFtFg+RG7gqlK0sxAX+piCaTBRJEtX5yy9BG1XfbO4f2fKx/aJohBf4Jn7OUHI5QKq2UIgw8DumAW507GA1BHlLHhFM/54gagz4RnpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tyq0g7q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tyq0g7q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99194C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753717193;
	bh=bcmF2MlM9wAWEWpHikX5bWJ3Km9KVqc6uYu9ESYYplA=;
	h=To:Subject:From:Date:From;
	b=Tyq0g7q7Pku7H+SKZOTvruHNWwOqBmupmCrzgu6vWveSbV6gWgn98mcgEsmJ27zwI
	 HIL5WkVGhSkaGNLShcNe6t5NFiiXtGmXnilT6s4l/Nr9Ll39jyivKP7rHJwoG+D3jw
	 5YAYDVnlze5zdts+lRRj2mik3n2Mrucdt4i4xM5VwHVYkiptIrNxa9Q7dfIbG0kjsj
	 oBbHJOpp/Q7/EvjPofeXxM6sZxKA0vh72/FPIRHPchoVFylqjirK3Nhu+69iD4jxKb
	 HcVDcm35pXPeYPJOcjaWoTkEHD9UPt6Hv/CihFPRj1P8eYOJ3n52KUZ7WElOCWOkmU
	 NV0KXP53XFPyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B3C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371719358.17602.13246562020247837201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8789235593d28d8be0f608a22a1b05580cb119cdd8d6b29bcfdb98789b0bac7a
Date: Mon, 28 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753717193
