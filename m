Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321D8317150
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783661314; cv=none; b=BKLeeGPsZyYwyw6hcyYJ7L6DW00BUaQESbmNdzx450Q+DW1n2/VYY5SkHHdntdKcyVnNETD/MDnqmHmpGRoGZT6grvaHrQwXBZqyL6+dyze3RTjCZ43YkHbx07ZnhLlkppwoc+xkWLgnUPa4I4xjPVp7dAFKrBgzxSxAwzUPGHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783661314; c=relaxed/simple;
	bh=DhEXgL5yfNnHLYOkhr02jNGcIW6IyZXsP9cqPol5UzQ=;
	h=To:Subject:From:Message-Id:Date; b=S4TV2u2P3NpytI4mZdYw6BL888lcvhSjrh1boBwSvqChSsi+AJ4leAoGs1lxlZvUGyyqHLLfGv8mJSi6NFFU3x6ae6w2QDFu019qe7c0vzZndONViWjNNqqeDKI8TSir7mraSyYWr8oY5gwUaAZq3GqKs69EY6eGlYxB4IMOKP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsinTHpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsinTHpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D94C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783661313;
	bh=DhEXgL5yfNnHLYOkhr02jNGcIW6IyZXsP9cqPol5UzQ=;
	h=To:Subject:From:Date:From;
	b=tsinTHpVpf31KBwWjeUZeuSIiEuBwiSzLg9Z2z2JDeKce+aidT1s43uKMOf/arK1Z
	 Okt9ukMT4uhFKKs8dChnqEmomkTXuVDIM0Cs9LB3Xszs1E9LFp2yFJMtklpFwGqa2H
	 dhQVFRDKBA3rgcq4LoVstW2QhxpKlR2XjpqKp3a14+sqPyU/0BdrZ1zLs0UAZhtOmD
	 Ein3dKTod4F1LX6jVCB9+g+ld1izaNn/+Cp1R1BNiuujat6dqjWFbZXbcKETtXyDSq
	 vK0p5kn2CuXjHafNBgpfCG3HUF9WPsuvuqgmWanMVMDIhdGwAqqHnQkOrdzv1NI6ZC
	 jUwknqK4KBZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB882C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366131368.18868.6281378029177188427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e17d29018515b6d394905fa06de4cbaa6f21b64b796f4b11808c0ce08b6042
Date: Fri, 10 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783661313
