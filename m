Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A119331213
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777883254; cv=none; b=tXTGeIeZuFfyCo2n/ytvmEbHfdBHG2fOfIXbUCX6iQw+NeoBE+4S/wAvWLLiazJ5lXLcm10a9Qz45lh2IN2wnO6ZCdQyN3ZiPSFVQlr242DQMjluz/Aq4vt3lFfXLEx8QUz97TBuUjMjCTgWjbyRpMRTq4N4LGm5VFF7O2R7y8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777883254; c=relaxed/simple;
	bh=fdGv5hP1NzkeBDJzsh+MZ2it6k8LgYM0rN61ti3cmhc=;
	h=To:Subject:From:Message-Id:Date; b=JDJpjTVYkqGnFyuYx6g+HzuHylqXaCPKXr3fpw6f/InSWfzxFfR0pKpr9UUe/dR96RkdFk4Ifad+OZNmOKK5N8s9iPR+qHnMoah5rDMMDgxTMRXqfbiQmkI5eGQgdrChdzz9Hcg8cYob6Rt4tm1N75oM86kYCUOxkF11I2to3jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjgRLICF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjgRLICF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7559C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777883253;
	bh=fdGv5hP1NzkeBDJzsh+MZ2it6k8LgYM0rN61ti3cmhc=;
	h=To:Subject:From:Date:From;
	b=tjgRLICFGbe3c2Lojh4LXE4KwXSZ0W9KO4GpXCZ1E/Ny9dZ81T0Fy8OY6mU7a75tM
	 AQgCIhhk3+OgvdU9yUpQ/bZe0IYWtJef1zG8czPIJcl9oNZzg5EzaYw5xY5QxleCCK
	 Mez5rY+1VNok8gukDw6SlX42MydKNnetjpBaUKFyagCymjPuQhECr5fU2znH7H1tuo
	 V5KORn+EIJUqXEu8hDh5XJQE1m7fUNbBhN19p0Mv1Iz+NQ1nvZ1sQlPPQgyZytRDb2
	 sPGYGMd1KKZiCO4rHXnpDZus0tVLcMb1XVmUMP60pUKCZbAz6Rr2tnnedvahzigIm2
	 aRtyj3UQZhOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA4CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788325368.29901.11212508029506329961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f70000dd46bddb63a60ae8bbc69943e83674fab268ec0f86fe6610d9241885b
Date: Mon, 04 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777883253
