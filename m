Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAFE29994B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771155894; cv=none; b=Z5X3Ig4ZZkjssQOFHtmykStrDQTOgVtcrCRa2wY6E93XgLEmNtN8qO4W/Y8zIgaWNBhiEB6p6O5jmRSav76k1dobt6TbnFLMguuLkcPx1tk2QSwBR7NXkO5RYYD7PRF8bn7NYQkGAX5dwAKpUloDSoahp5D13Dz5cShyOvK66n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771155894; c=relaxed/simple;
	bh=wBQALoXYR4PyWH+NzHgOQVnQ0Wbr60JJdOxxxZ0Lwnw=;
	h=To:Subject:From:Message-Id:Date; b=PhoTJuRqgtHt9owK/umxsxqf/qDSzgysJjeICL/YwnY7mXoTqmNm2233rYlmxzNEhsrGmgyUBz1HZSc6sdOYh0hb6CwrfnNUaAE1oizesoi880Y/YsKZS5qIKavNmnTV98Vt2uYn9hbD+l3OwQQoUpTqecehcoAGTmTvDmYzl64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv8ujXbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv8ujXbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA562C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771155893;
	bh=wBQALoXYR4PyWH+NzHgOQVnQ0Wbr60JJdOxxxZ0Lwnw=;
	h=To:Subject:From:Date:From;
	b=qv8ujXbxzm/fveleGgWa4l2GuaMlIZyZ8EI8Gb7ZZLrjuBxMs8N1E7yw3WYQUx48h
	 Dx44jYImsOYofGFipiZrhuledCKvElcdHU2bJdyW+bJ7+PXsEhGF1BF4X9nDB5Hjek
	 X7PPhujHUaS3hbTmiw+JrVCSQK0aJ1l2tnn7SRK6+BzOTbNm3V2p/6rfp7FGDOMwKw
	 +7kAIvtKDgv2vA/r3pDn5y98osAah2+y/qqDNPPkGtOodjGG6rchaQ62pYKZuoWAos
	 Q8VCZfdxQImmmUa6SKiT/q1qRTGTpmMES10xhCHmpnTHZEWsoEbZI3CYCHH+GHgl+q
	 ODXoUhbjURhNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40EDEF5876
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115589362.13978.10559313691031642841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b24fe4d660bcc44452597449ef91e44979072b9f50b60b05e4a18384bbb8d87
Date: Sun, 15 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771155893
