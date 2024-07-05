Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D38145B10
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720199723; cv=none; b=ZBi60g1aSmU73D7kyRb+uJZMkg9aakLY+EhSV4O0VpeXpndq2ibQvyHa8+xz7vV9zCDB/LNqd98Qo2E5eFc4BgZ6weRH/ee2yS//HogFKTxY2qYnLZYZNsOJcmgXlCDBaSUoPFP7TtlZVVJ//FOJqtwPfLvmuKV1zIwoeBN9aQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720199723; c=relaxed/simple;
	bh=N0YImXI7CZXn8Rh3t5xLQDx43NoPBLZLEny8FT/1zRc=;
	h=To:Subject:From:Message-Id:Date; b=jI1HnYdW7SfeZTpP3kjfiEqxrJDgn6XFNOz8doJxUf1XqZYeKxoV04yTG2e1wpKMzdHOT9ujDRhosfDsA27mS2hUpS3zLfnRCBejeIYpzkFOlKoxe4ey7JlQenNMh+nF803ougUMRZf07OVr7hAJD81UzsFM3n0J1uYYfcVFEmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsbXHZz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsbXHZz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FC6C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720199722;
	bh=N0YImXI7CZXn8Rh3t5xLQDx43NoPBLZLEny8FT/1zRc=;
	h=To:Subject:From:Date:From;
	b=MsbXHZz103bXvXg0DbkF+ErtrYYyrbpIs/wkxBJACdh7nXVf9lMUOE5qVnnnY/zVM
	 t2QhiFAV/WgxR/sNmLb2VReia5jPr4LXgp3i4OZ4dJGvp0YmyeG+lbFRg5VWd36aag
	 cHDJWgGJn3RYuie0unXq3YHZpmIvkHiIOUUHY/5CTf5drUm4ek4U2GeyNi7E7jQaWj
	 T+sILOfWfvx8c96FlWtX3s6lTh21j6iANgHNU4P8oBuaaL09UdIQ+qyLT0VFqL3H/U
	 S01Uiy2t8mP7L4nJU3bGiWkTJRtjD1s9S+LXcOA+XgKalMk/06qkv9R+MpmjEpaid7
	 GJdWZ7DBfXjDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB920C38150
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019972282.25578.16300965872864171493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5f81362f9b7d90090249fffb8b9694dcbe49cd04482aaaf69f0b0daf7138f2
Date: Fri, 05 Jul 2024 17:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720199722
