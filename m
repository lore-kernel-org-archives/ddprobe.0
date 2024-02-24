Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25241367
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708733297; cv=none; b=sJA4x+SM1/KexS1kN1XRHTjwY66yuLc5K2lkwBOgBo3rdLiAkhcWHdzW/Az0lj/zqD7x3Q2LsxIKqwCFa15BrdbHjPQCfOf1z0FXEHFkIucdycE8IdV2mtdPcRuSTvkiMXpDETztcXepHbf1TcGwiP5hCHcU8hiAQC5SlAoysMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708733297; c=relaxed/simple;
	bh=jjWvk+QqQSui7y/JH4nzvol+sZqWlKxO9BVta/oQxWk=;
	h=To:Subject:From:Message-Id:Date; b=iGu4/K2oIm6WrtScHMLfHpFRd+pkqC03DsT5YMFEbi+5pYj3VNkz0fguCF8ZXR3wgJKTtZk0K0qdlp7O6f0lz+31SVeyzSfE/mftMRly1xZwaTqbWZ30BIi6SaeUkgVaWcc7JwKzgRD550aV5+Bw6wxEIPpCnCY0tWzlo5VSAWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAsz7vOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAsz7vOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F7CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708733296;
	bh=jjWvk+QqQSui7y/JH4nzvol+sZqWlKxO9BVta/oQxWk=;
	h=To:Subject:From:Date:From;
	b=qAsz7vOVe8mcO7nnbrzpQC+2xTaiZcJzfS6/3HHnfydx9pPINF0mbTzcJirpj338f
	 6dlTlcY+YlIrmZqQ2axxiLTmLY6qa8xyeFbki6Mmitt9tPJ58XOG5PA4dINQyZAajq
	 gamiMXVhssV6ANCQaiWt2MRmC26ghEiEPNP+o4C9PBEcpBqfC+WgrumpRyu3ji1hjy
	 A/LxCIaeNwVPXoxWtu9sjPU5OQ636FGo61E7pMZVdYnHemcM3j9NHaa30KRHvYJmWv
	 v7rLgsyLptgdhJO1/cPilo1AwjjnHeYo9dtxxBdmF0ie1524ARh391W9gGS4Sv0u5X
	 z1rh2IkVpTWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F41C54798
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170873329639.32621.5460190802980703469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd7f40fefdb0df053879f41021fb182dcc798e15bba3481a454bbff9804f274
Date: Sat, 24 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708733296
