Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EB537E5FB
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789272034; cv=none; b=MzrX8DtvF/oz0uSR1jeyTJsfMW+YkI+Gw7ENRlaDLsGq9pA9UfQntlv4pO/9jLHT18w4lLquwIWN1UumR+wdgkh2M9oKpYUVKiwTWWmLegcyJRJXqRGhYSSXyo14EQZhGpCcppOFkwLPzFf/dOkKF57V3ss/1J6oGaKeoRlwSCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789272034; c=relaxed/simple;
	bh=7E0FZmkEfIVsJnsLBxPOZjQ2zx0enKY06UJlE8v4rY4=;
	h=To:Subject:From:Message-Id:Date; b=PET1Wje3ultV1VIBVDudLCrsuvOkRurLf7Mplt+jFWEWMP//PD3SfRZM2m4KNtCfltPp6E86kWuk+k3RItGOXKxk6PJB8vIZToxAtbfHRL1d9MzMVsVK57o0TARY795aj5BLgRgcGTm7mAexHwADN4JVBTAwnRihnTaQlhnucls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5Vmry/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5Vmry/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC989C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789272033;
	bh=7E0FZmkEfIVsJnsLBxPOZjQ2zx0enKY06UJlE8v4rY4=;
	h=To:Subject:From:Date:From;
	b=X5Vmry/mHnI3qcaX2nZNWn4nCprATl0iFv6ehxKKUqT/tLEiKVVVZbxO7bbUim9RT
	 SeDmLrwU0qb4/C1W4EfNeO/qOBQrUw+owdHoS4hOWysFjwV7m1FgFqI+j9B1bXhzWo
	 VaKkLgGFABlqNxA0nYNapPU6JEdIeaOOWeDpQ7f+gTnDIMrm71MAcC2eDirkxky/kz
	 BoUFS6FtUcBJOcqllpooaDLm3QnjJ/SAS2mm1oXD71vaf7My0PYdKh1nOuGDeX1o7C
	 +A7RKuO5nNtDuCjQXFc49lh1C5cDoLrdsInwzY+/jg6cRXqR+Zuok2kfS/C+ZTBR4/
	 6qNGBpetFUfTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03FFC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927203368.31798.11621729539006503221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13e8602e8b2627f0a521a7aceb3326e7d111fb71f16a794df4eed5f90051b3e
Date: Sun, 13 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789272033
