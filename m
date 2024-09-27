Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530574C9D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727396754; cv=none; b=gJpprFuxbLhZQj5ywqoHYVp7hOpJS4SPjjOxNdoiewArTrqAE82rKNN4tN32bu2+EIfKTjWZ1GuC2zVgXpAdXl9R95ah4+06YhxQVtyR43eyvh03HXrEczMgu++I8ry68WCEdZtkz9LNlCtteR8Z/URYLhUi4BzCtOKaLNeNJtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727396754; c=relaxed/simple;
	bh=KHh72nTeQXHlXN8HseyXHUZbSSCVlLREtUEmjZX4ew8=;
	h=To:Subject:From:Message-Id:Date; b=sjVbPX0gHpwHpIiW10vASP3B8pZ3oWmEidRR2GhXAaN/4tY+AKObVEtax8QkDKrmHyHY8RipLTGbvYcnqyeS9ctU1HQ+Wk2dxyfHL99q2ML292a5wgDNG19Uf5pqD9NjTq46HEL1te87bIW/T1mQhpNLo8OyH3sXjU5dHIlV7DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvTVDQce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvTVDQce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26D9C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727396753;
	bh=KHh72nTeQXHlXN8HseyXHUZbSSCVlLREtUEmjZX4ew8=;
	h=To:Subject:From:Date:From;
	b=XvTVDQceDRFW3sWbpj9kPTeqBscOw45KgNsDIAR1X041eudYFQ6KeUxHW+Y5hyHM7
	 poYL/LTSgaRM5k1fi8cOwTa9FHD/V77O8ZYfmo6KO2KmyFm5h1dQmO+hCfXpNOa6df
	 /pDAGtjLWNQmzVYkHXppHM29R3wgzWn9V3gjXDTKP4RY9Ld2ccZVBd9kOPy5A5Tuy6
	 Mn+K/Tf6WYHg75806G00XLdbjuZELI1ucontgyob9bcpJwSL2iNnOczi9jtFIxIjm0
	 k4cmdHf5RObsEbFmV6A29OVXLPqrNextVIidSY5up4KOxrYYQ1vDcOsBYdZQERVjj/
	 8+qyW1TynL2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A38CEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739675360.15249.591293085326385305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce49d26483b4182378ed97542881b3a894a4ddc7d5d1932a37f99377857ea947
Date: Fri, 27 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727396753
