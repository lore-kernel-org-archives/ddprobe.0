Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282593F4851
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782476254; cv=none; b=TCy5LMd4MRJfRNBdW7eQEb2U3D7chZVJnwYCVLm/mJ/F0bd5dukp517nsX7m+B2Z7y5Mapp47hSqs41qWo/cOYuYqdeOnkOKc9o+gnsynpjQ8XyUZreB0vGKO4ulZkcxpHMXrYMU9U203Fo+SIo0/Z30Agq9PI+jLm7QIlz6PuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782476254; c=relaxed/simple;
	bh=+VB2kpm00ziOcOcNSMK4ZPQbqxpn9wvwp07SBCt4nEo=;
	h=To:Subject:From:Message-Id:Date; b=Vc46vNNz7a5Vft6K+Rq3rE1W9YjwkVE5+wPYziAB58sr6herFxA1n220GUs8kAK4vlOLL9PbhO4GlGeoIxG60JAOue76ghv1dgB/6vdB+wXX5HCXHSUwrhO5If86cWhPE6JWDNMX5Iz4xKuESlMkVpYGkvAu5gdpvahXoH/yUGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/HN/z9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/HN/z9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B45C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782476253;
	bh=+VB2kpm00ziOcOcNSMK4ZPQbqxpn9wvwp07SBCt4nEo=;
	h=To:Subject:From:Date:From;
	b=E/HN/z9DeaNPvRD2CVW/GG6j4quYtXJu3AHGutdQS3DLKmkArdh8xaZH9iexinO3q
	 DWXtlgvV9o5EvVROqJFTJLVk6Zh4tn2Yg3eaPTo1LQgoRqjdfIzmeRfPyVZnbeypVZ
	 6giWfuYjWuhCT7BH0wliL0zhtrAs0wXYQYH/WhajztP31I7yQ4+z8ABir4R1S0lr1z
	 TkcTiWI+seWlGvL/QLi3dcZd4yjeA0Vf/aeo5k7wV+P9TpnUJ4xYAT+C//XZv8X0xn
	 YBVzNL9vMia2Kv6Kb3m0fqaqYsitlm4JHq+wg44sU9wEvlSt8CXGgfL7Ll877lxGJf
	 eirjw/mlBdBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB8BCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247625370.25056.13940488394190789141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a474ae6430f5d2bac4788db0e160044c1d5289371c81aefa4601c032ae93f1
Date: Fri, 26 Jun 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782476253
