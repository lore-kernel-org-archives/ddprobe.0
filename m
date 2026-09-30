Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE783988F1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790745634; cv=none; b=EaOeFMKbGT2Ud2BZlH1FKrQIExltnSawD+S6at81MMq+UNY+ZVkx+n73oCTB1nvCPd5egNkxiIXZ4MHVOVwVRodFu1we33YmlRNzb02p8u20vYI15veTteWYMfhdWc/WJOZaYen+meuFMCF05NKABgm+RT6xoEP6NUpzibBNqVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790745634; c=relaxed/simple;
	bh=J95dk9cslMAAYtNOHQ3v+YX5kDEWonM78WnoOh2WetY=;
	h=To:Subject:From:Message-Id:Date; b=t3Xh/xadcO3jGrYBEinfOibFeMOHwu8EomCEynofi4ht4Z8snJiLVisuh2hxaIfdDdQWmUpVzY0QH/ZdfahS4RJ7xHaNVS2zPnDmsogsA5WhFH9PdYo09M3tjMHG6PhM9zURePR+zqOmNVgDjZlZA6Ig7nXXCzwNW5YDkWuNrBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcExs623; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcExs623"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790745633;
	bh=J95dk9cslMAAYtNOHQ3v+YX5kDEWonM78WnoOh2WetY=;
	h=To:Subject:From:Date:From;
	b=dcExs623GmnOpS1zt2YqirmrnP1DfoZZP4OVwkJTxxJWZN7ZiVAfo0u11TITz9KXj
	 UcKmveYUjqO6+kOU5Hd0DzjyHSrDTPW5NYNxCOBePehmqXqG1dyHjBZq7ePuCZbGxO
	 WmskWbUf1s5E2cXUnjpuZtR637PK0T0gMALVkYCFPdo+lys9oZFknn2AhfkANmkVpx
	 EnzNvkgQMFXbY7iIGR6bojJpLcaVkYKVEkdT3oBig36isoA38CEcqq2jytFqIX2eSC
	 3Tn30bibnfTG6egzPF8P67JTWBM5YMPtDZQx0J9kcDMcRTjBJSL4Hd6GvYu8eYRQyW
	 1TqiwLhtjWm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC2C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074563369.18295.6816574810157328266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8811e30a994991c5934f61e03382023ad2f0a01a340006a5f534a7f9c1f46348
Date: Wed, 30 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790745633
