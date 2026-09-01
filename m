Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699433932EE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788296434; cv=none; b=gvEP+0ewHSkLJnBwfOLI8/hhAG+tQmSa2sJw2ViF4bGokdt9TW2dLc3R0wEmOMdE2b4wQaMc3DKPQrVD40NmyRluXWvXFwnUW1abp58KaaOudez0J+RHyG1nqKvB+q0QwicbUyba/hqEX022Fu0tM52qLbYUf04ufi8DHzCDz+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788296434; c=relaxed/simple;
	bh=F4z26Ovdb9SAs470zVnPAmsDFA9dSAUXzbti6ABlnKA=;
	h=To:Subject:From:Message-Id:Date; b=p7t9n/UyXTRuH3n0AUzLN6/Uadg2Ts0cDLq4r8FrFiVmKyfjFNiWE2cvAVx5knWmNCm535eCvF8edw7rVlcdZrPN1vQAybq9GDpTHw8uu25ximHozQmm7otF3Wb3J5ATDYtF7xZSNBvg6cHEMNpmNHddQ8JWAW0HaLRMrcfIiJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pww4l7ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pww4l7ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788296433;
	bh=F4z26Ovdb9SAs470zVnPAmsDFA9dSAUXzbti6ABlnKA=;
	h=To:Subject:From:Date:From;
	b=Pww4l7gaCAJzcl/pj+huQebJ1P3SKLeJ3hPYYttD9LFT8YeCRaA3aeLm1GnIg3+F8
	 YPfN2cY+V3CQJqzVgnCBJY8MixqK42BfWfHvVEvoN5WIu9Tf3ipvYZRfeKQwEATVhp
	 tNDy5Mz+KjCSOGAZsDl+a2ZIwPgQHDAYONAjqEDwddaPdw7spKnMNovK5rfXRr9dSB
	 77VoiR7JZ2vxXZ3hXEsIQvSzq7ETN3pN9+O6XDbz+zZJACQMxoaBYU7thr+JmPG1/b
	 ZQHI22n8RcsXG1VSNdKqiVg+Z8jH4QWRzNCjM3LOaHk0KjF6T1w6tMScTerOCFIho3
	 DbVzyiVY2gBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D82C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829643371.8549.4813946019768197213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168d9b7cf361cf793f8d69c7d8c8e41824ad2984c72abac1347b07ac30e5dd63
Date: Tue, 01 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788296433
