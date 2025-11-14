Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C7F246335
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763081994; cv=none; b=FaZDF/fY3oUrbs7g+x7yJ/pZLi+Dw8xeFrDbL3gdMZu1eVqIQJ9QMHcezfetCHuOmNocgG45vJJE5gTyXRaIPOOpgbJ9duJ0xc6C4lF2qWoYuz8/FoSalDiQSy9nV76MAeAy4eSR7iYnUcch7YITvRKMM5nJjcDYg+lkRzX4yH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763081994; c=relaxed/simple;
	bh=a4uyqnwglJmEw+yN37KLe0Ua/qCmElsKjJTfkH9GucQ=;
	h=To:Subject:From:Message-Id:Date; b=WPBXf4c+ZVDpR3v8xYMGfWLA5VqPA40fCARTUY9m0GT8sai8RgGkqTsP+pKmk1IiazdR/LgQ8YSzzB+v5kXgIlC9eAXPNRYK4u7pUj/p5UdzICy+WLrXhF09h5+aI9R5UURwu6hTbYLtbkhpnqACfYQe6gQhNTUx8VSCxa18hdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgcEpjzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgcEpjzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF4C19423
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763081993;
	bh=a4uyqnwglJmEw+yN37KLe0Ua/qCmElsKjJTfkH9GucQ=;
	h=To:Subject:From:Date:From;
	b=bgcEpjzsHsmAeuHIJ9ZbssdnECtzJCRwDyy+0q61rJxoXUXQIuxMRmNepyqUGYn3N
	 hqMR5CCSgDouoVvvJDxv7RHFwJUYB4JciGvwl6M2P0HQCeBevhDnANWM59FtIBNGD6
	 F8gLSA/vEkDsTPNPtgH+6pV3WVejGNPAPENjsBDAdlMCpgPSaKdR8PLoKvi3Vpx2HW
	 0HPTbceZrGbtqL2YFbUiRlBclY37uNM/sREnjfRB6VC3hizZ6qQ6nEqE95Bb6K/4VB
	 5cKb27h9/o8s/fTWnkPEGuOL1sOoGxqpSQtcvEdvYm5uvhy6kodNGvaaSXr8qa3GXp
	 YarDnpM5V7ksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6FCD98C3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308199359.9620.5234307265913716898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5852494ac1b59dd2f420ab0a6946c6db6cea81c3102c81ffbf96053c76b2e434
Date: Fri, 14 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763081993
