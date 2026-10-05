Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466D4414429
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791243034; cv=none; b=HRVMWas6T/g/NYkT9mW/sdCF/qW9KdVyqdT5Kml1h7xVZWO3pD/dIpbDyQVT5GhzG6hcPhNfXw1P+rUZMNjj5H2Hz/G8ShC6z48c4sGOyRVm4t38R7iVbb0yqm6w/NnSr6pG/kMIwYHCbovaokVg9JK0y4s4l4cC8Fe3SaE3UYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791243034; c=relaxed/simple;
	bh=enqvMt9TvXcKDIu8OPOAPVSlqvb01PxvltKN9A8cvy4=;
	h=To:Subject:From:Message-Id:Date; b=epVMWe6GzgBz8uEY8tSMAwrOmBQlW1sVzutZAoPkpRC2rBNd5Pmya7UVbU+WTWmOct2tbKydkOcwKdxNfSjAaMYg3dUuXMuh+kPOOIZ48R/XpbCFF0qtaFoP7fqII6dlZN8P+rEPtH08jHrUF8DxKNpwjoUX4mEiRZ1EAkIossk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfNrc+JH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfNrc+JH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0976C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791243033;
	bh=enqvMt9TvXcKDIu8OPOAPVSlqvb01PxvltKN9A8cvy4=;
	h=To:Subject:From:Date:From;
	b=lfNrc+JH+CUWi6/2jFcAzX75MkdhNrS1iDnJdgvUkKoeMjWP9awJrRbvu2PHLDAEN
	 tItbi+yx5DQoLsmXhE9NbfwOtgbYcEtPgbaTZzXsWft9JMo7XFxfOREsy/6UIb82fP
	 5AOrmDZbMHTQqMEC8vF0/ZoUh1hr2K82zGE5a7bTXl0GP6c8RDIGRbofAfWo+ToG0q
	 Qv46q4FIqNReQazDIMWx+L9GoBPl9fnmsYNkT1zpwpUFTCTzZKFTjmnFLOttQYE/yn
	 Sh48QdxpVoB+t1kDrtqx4pluDeC6OaMfysbZjr3Ac4aEpBY19LeSiFW6RAp3KM3w/F
	 lyG1+m4fqPGBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC532CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124303369.29019.13198719747716552494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb05c16a77e421bf8f2d0a1259e2f55932ce372ee9b32b2cf89faee0cbaf31b2
Date: Mon, 05 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791243033
