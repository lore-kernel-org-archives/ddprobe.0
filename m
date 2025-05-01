Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FE619A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746099594; cv=none; b=kowGDpvaHmSgGlOuEIJ6nJ7t4zP8Q6J9rcQAWbFG5Mvzj3K7SPwN5o+ymSK/JzdMX8tld1OGGl7nomWIGrGIWqMOWRHIq6Q5t4TRHyoyGI9t0YP9SukRf3zRGOm+RFbh37vtRWn90Rn3ahF7809VFZ3IKeL7Yo6X1/bMH/xby7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746099594; c=relaxed/simple;
	bh=/ixLLbd8B/oo4Xhco83zS4TaZAQ4z1MiDH/B4Fx9c2M=;
	h=To:Subject:From:Message-Id:Date; b=MVc59JFStixnR1ODFXCa2zslLOOJDHpi0Ad1KsW/DIaAEwVki/ZLF0pvjQU8tdVYG6mg21IPFJSjO56RLfV7MfnEiZn839R48ndpQ6dOEVgRFWimyZebnuvsvJHymIFdVHXBeApwo8tRgv1PUZUINS7ctoFuxen+4WFx0uOxx9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPtYX8oG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPtYX8oG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7E1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746099593;
	bh=/ixLLbd8B/oo4Xhco83zS4TaZAQ4z1MiDH/B4Fx9c2M=;
	h=To:Subject:From:Date:From;
	b=rPtYX8oGAbzkY1yuqXEFY8HSbx+kSd7Cyl/F9yK21sLS4J5ViA1eY9AlOuKvfD3P1
	 0iXi7qtUwEdqSLEO1SSAPnsur/1cfAECTB3HassS/ZN39Os4Eq3Zh83mjpeya8QcyM
	 2unGz/qva4cKtUl7+dbOasK2x08WL165NZy8wiDoAkZVoPmjWExRKsNnN5ByuhOISc
	 +hfwXJ3+wT7aefvSAAkkkau4DgQWTGwzDmZ2JWZ1zDBZC1PoGu4dli8yoe1SjJWyr+
	 CL4wNm/VoMqW2AQqSJ4mW9WwLk6o4lrG0IbL2e62Ih3KiOXU6rvfQov693ZjKYbxNw
	 aYlWRDO4lCiQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA0C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609959357.29114.14405913790329072711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948ce86684e5c09c544d59aa586bfe90c686e3742ea97dc748576926227d815b
Date: Thu, 01 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746099593
