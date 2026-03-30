Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47A73290A1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774883693; cv=none; b=tnhw8MEutU1TPRkN52pdgaSsiDa2OPa1N5IQeGntmMzy5i722Apm3pJ2ii18lYFAJ9QPVH6r/my98QRa5TpsvHkQfeVnCU0nUrn6aFTC5XsbFHoui63ganhfAww6t/Wytg0XY54m7hd05VotfVoCU3j7ZUx4PJj4HadlQjVIzeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774883693; c=relaxed/simple;
	bh=zJJA7kDfckbL8fTCSqoAPiE9B2sIs0g/FHyK7hG/zZ8=;
	h=To:Subject:From:Message-Id:Date; b=ngkcxG5aG7sT6uIrE8LqHH06APVqstCtjS2UXqAjux/YpAVNZR2KUB8Cq77T51UrafYmYHAZ+6gnp1HxizVFsP+JyQ3+G1oL4oSwXRmmUORes9NvOQxtV3Yokqxk/KXOWCnQ/8xtQ8550URS1IGHJSSg/yk+DnL3ihhphiaHSk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx3CFNJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx3CFNJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7902C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774883693;
	bh=zJJA7kDfckbL8fTCSqoAPiE9B2sIs0g/FHyK7hG/zZ8=;
	h=To:Subject:From:Date:From;
	b=Kx3CFNJsTMUfeEq4eUruTpsPJq6SLqXMWpZIAHTLUyLLoy6uiag771ZdLJ2RiT8Yo
	 JtTzlB7uLTO9ofX6E/HJO5F+x5wqN3s0LVa5e76uPW1VXbB355wPCOLJSrjS/JTngV
	 euN0S6hRqBSuXQ9Fw1/ojW5PO2bg6sgKBhZY4dppZ/ZVRvHB9NBe1MbWZPH5/XNuF3
	 pJtqzmXCdUwRzpiEF5AUb5v82zF+LFSnPRdUznb4gm+50lip0Fr4+qETQAip0Z4++v
	 wonbukGCX/RdTkIoA6GwOkgkpQ5r5klE47WK7E/CgUktAOvuXbksvBYf63lkz/imxy
	 x5LY3WCOJtt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1B5FC97F3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488369363.12242.10902609557602806588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a420f95eb59216c82c8deb104b9ccedb2c6c58ae4d568c85f6ea6881b64e6255
Date: Mon, 30 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774883693
