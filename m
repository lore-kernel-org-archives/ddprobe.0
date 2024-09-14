Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2814B5FBBA
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726350354; cv=none; b=X7lXaOz58RDVtNZ1RRT5GaZ7XChvZbJsPPeYBcMcC5f55/8wDY1TJniNZFi8GZBKh/4MREqRfoUkaLyyitKML/lkxMQ6EmuuDK4+wQiHQDJ17cEHY0rSolyGNpvPsb0NBhc7OUYa2B2lCBWoIzz8oSmoC5NYyquqVId8joL03JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726350354; c=relaxed/simple;
	bh=XQioiZ7aqptKJq8FMGtUMfEASuq411KrrdKiMUD+Czs=;
	h=To:Subject:From:Message-Id:Date; b=Zt44deKvWhAuNoNWohQtNUWZKNohwOEIJCWLAGSa7UbPAWLZ78fjAwGv3jsHu8SJRZyqRYc2gnnwMI3+Qxn5uDaA09bEUje0Sa25C/CHI5Agwj/zunODAEz0T0i/ivd/wGgzkGv+z2rD226/1eQgDum8GX3eoH2xWwLiSr7nfRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1CAi9/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1CAi9/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282FC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726350353;
	bh=XQioiZ7aqptKJq8FMGtUMfEASuq411KrrdKiMUD+Czs=;
	h=To:Subject:From:Date:From;
	b=C1CAi9/3hrGex6ZIkAyZ2lUOyyouBVR4RHrRK3h5B1DqWTmZhzjeo6jPJ/67gedyx
	 YXxwO5X0pk8GasnywVSkZl5kHeyjXLLWWpp0NSkQ4kJJiLXuB/86pb7Tx5QgMST2hr
	 gq9+hnTa8f5fQd0vOudlzpd/Kzdyk+NxgXtziJZDugtmUfOwAR5Dv6nv8hRjZznIvc
	 8CNhkuBOetn4dzVV5H3TnMg5y7vuE9OxUcOB9oIuEBie9GrDup0s+DjbHCeD6HfXqw
	 jWiwTltdtPJE+PlymtOoOvYPrfnd7kAlu31iWZ6l31Ciu4bj1zWbx17P4+YM8jcl/i
	 a1xJmVL5+bg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2EC021BB
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635035358.19924.3807262734780402020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bcded378d46dc5ec395f01c88bbc301a4b75c8c3ad246d5d22a36f7bef96be
Date: Sat, 14 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726350353
