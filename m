Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7182F12CC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763551314; cv=none; b=eif3QvkiFBGH0bHu7CmCy9aPDolRvZIK91Z085CaYlta1VIlraL00LmvaUbGqB4VoVC1qkDRjH/Hv/1Be4TA+q79rUOEGxhfsPE/0HFAW4Z0motGI5VRn7iTWevk1DIFUOAe02+5p3p3bXCHfHVlX//fmV7cM+5zoIywTHbJVN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763551314; c=relaxed/simple;
	bh=ulKOR9ju0DvVkP1bJdbEpbAykeP/QmGDXqWEVQvXL4I=;
	h=To:Subject:From:Message-Id:Date; b=aNG4MaQKwswTVUzJmgxKbEzaL+WiAklejg/F5ZfJBeF89W6aaFXtLt7OrpWjtirWpZWY6pCkThpBgcF02VtzLkJvnNoX7DSlxTn8aoU556VlzoQhAahIpmGygfwyv3C4y92aq8QkSX1mw75ZXq8CEE5/F0XhKsuRCWGunn0IGvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxb1iM8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxb1iM8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4846C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763551313;
	bh=ulKOR9ju0DvVkP1bJdbEpbAykeP/QmGDXqWEVQvXL4I=;
	h=To:Subject:From:Date:From;
	b=kxb1iM8Iovvi7BwbqLigw0PRQ6uQokk+1PrVKG4octaBeSJxK9+rQpIMJx3lCGyD9
	 xjxgFifrz3cfwgQwSRxYDfDMgoz9eYJBDepz09fFPZkgBIAbM8JzEIk0rdJEN+zvOT
	 Z99RTQ1q0ACnIC2e0J8dcwW4YJ4B1v20g98VNt3q9ibejYuSa9FFQYgnjor66qloOv
	 vPRsJinjlcGhCmbn0VD7Xi5oujesWTOgOJq8WngD81tc57HsNqmzGGR/mMR99jvzvL
	 8W2G72g2wzS9d4uqz+gKP8qORfcHANHE3GxpRTXif3IyK5kymdJ6LD0jWpIWoqZlqG
	 Lh+LABMLYbx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F916CF31A7
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355131358.23072.5109615820334945099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9dbc338910641411b1540a824957a312ae3159c5d39d89ee947a1b2cfec794
Date: Wed, 19 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763551313
