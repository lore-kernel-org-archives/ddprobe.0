Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DACB256C9E
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764775974; cv=none; b=GGTNfXBO44aogxx9DzK/yxU+K3pg66GF+1cPq/h8zhkPHk0xITzzqlatpL9xq/iP418lW6wg8J3wPpFhjjLDFvoyv58ZOw/HrIOvkpn4Hj40jn3AVh+9XeXXuMtYFdF3xcObwNDw+dqscmHZ91WawtlSLPLMzaSP4IzPKq2X96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764775974; c=relaxed/simple;
	bh=RZre8tUt7T84E4ZSIYOdjOF8BIs30edE6eb0TyGEM+E=;
	h=To:Subject:From:Message-Id:Date; b=iwHTTCzFMqcZcVqWwzftyZd5eje8EgPjqa2P3oslmKiaQc55Y4aCCdjMaI33wMs/QhgBQBUw9l84K76yTbsPHbLvzRcVUEwxjpaLy9sE7zmTq0C3dM9CJn2Vr/mUNrO4nMLZR+2scBj5bR/lDDgVfSe/mM6RaVK9xEsyTwfgJjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9MNciIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9MNciIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0393C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764775973;
	bh=RZre8tUt7T84E4ZSIYOdjOF8BIs30edE6eb0TyGEM+E=;
	h=To:Subject:From:Date:From;
	b=W9MNciIcK5Vpw4hkHu0My2B6tjwQg/i9LwFSqy9FDOUXieeqM90xw8CrIi6Fgrjyv
	 P7JS94KPg43Krh7tt+aaK82En6D8JeuY1hDwVjyv/QE7DQC/MKd2z3OgsOVilf4/T7
	 BhE3sSxcR8KiGEgF8K+xVh+PYpiDIZPwIxmo+L0YRnb7uGfWf8sagH2nwnIxqhyu5I
	 q8b5cq6HXzawvCa6Q52HOZjh6JUmwyQuS55U8ANy+5Gjcrli7LoJW4ArQTVCikzPVC
	 XrQrak5aQ8guBrAYKePcNhABM18HVtQOtFnpITHMj3UAjIwMQlbw7ooDDfU9sk5Xtu
	 7uq+w/FvsOl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191CD12690
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477597358.6954.2645894765126466246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856998267d10a6186ce8370b5fe5f6b133e541d5e9218d7ee2dd893d139d0a5a
Date: Wed, 03 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764775973
