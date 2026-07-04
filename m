Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C1CB672
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783170514; cv=none; b=ulQ9QZ14Z3louSnKGjkIJCnZxGH0JOIDIRjsDaZWNU1vke+kLfekp/jwx0OgxktOqrnRkMEVcoBqfLKHYQdrGqM9K9E6nLLHLKW2nKUvBH+wD/dga6xjxiNeWF2itGvXoOm9E8E1KpbWlGVON11xeEfK4RWrRYxm9jkVnGYPGfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783170514; c=relaxed/simple;
	bh=f6+4ykI+fL9waXXHwrthukVQ3CfgKOmkUlKVJYpQfKg=;
	h=To:Subject:From:Message-Id:Date; b=hvSdABwj0RpjuE35G00OXwVeccimLBwktfYJY5mBynKUl0Tgp65EboKULfukhVjPUMyfECJSlcdmodAhZdSi9F96Gle+w0wVNIDniR/YMWZjrXCHVqcqmg5dgV0LGO/matPQIiVkk91wVAVMxCUcUZBUJO/g/08qUiFwFh3341A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJqHl3Jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJqHl3Jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDD9C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783170513;
	bh=f6+4ykI+fL9waXXHwrthukVQ3CfgKOmkUlKVJYpQfKg=;
	h=To:Subject:From:Date:From;
	b=mJqHl3Jw8bcMgs739t+M9GIR6c4vrTwXRLbMUv980ABvl5AKA+atLV2HzmO3JbEsH
	 10jPQcvG2BN5IY3zNaeJ2VBeesy3L4RAv4A09TONucmwI7rR+gjEatJwsptg8EnrpH
	 BdszPzlTLoh+zsq6BhLXU8aMMDld/eYiylZFxmwkVYfRmLmTtoWO3vC25LAoUvdRYU
	 HIVdGz70FtQhDcC8y12ddFtzAvubV5dcZc5gwkgEwOuiKngaEojmi+LyZ5qVOT0w22
	 cixC5W+aHH7SwhGQkKH6g9oA6w59E85SuY4JiCYUM7UZBVSx9W8yrWLW/K0g0SX6pE
	 Zzm288IMWtdJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BDFC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317051367.16951.2713414664163419783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b5f9b285e12622104c16f36d57746a2c2add188eb11cd0eaf95548c52277da
Date: Sat, 04 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783170513
