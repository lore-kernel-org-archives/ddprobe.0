Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B6E22092
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714941143; cv=none; b=GYCVm3XenODakH7RNrYLNxKIscJI6nyxoCsn65qNxMl1XJzc0nyQ7dE4wAGkhjBaTWHRksr6D7G2F0SO6bA2DHAHcYG/CwGTQ8ogv/uuOIMnNru0hNY/3iQhIEpAyrOs77S10DwBPmwBN0YlDOzyxKi46AY0bDFqnQoEbcwRdWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714941143; c=relaxed/simple;
	bh=scRmYj0nfBvAFEz5clv1ADUnIQu0Zgxf5p7YLN7h5Q8=;
	h=To:Subject:From:Message-Id:Date; b=NsTqGtpswTdH/EfWviyAxL7GeRLvx855FgT/AwXYaKsTb8PMH18f3tchsA5ZXhcWYKva91C2Q9HS9Ar7SSa0WHpbN3I2Beh32XIV1WmTRLgJD1wi44pn8cCWc4s0udCxEYI0P7C/GJnNHqN6T3/5yvTEBlLcmey5LGBbwoy9JMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koQdlu3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koQdlu3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAA7C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714941142;
	bh=scRmYj0nfBvAFEz5clv1ADUnIQu0Zgxf5p7YLN7h5Q8=;
	h=To:Subject:From:Date:From;
	b=koQdlu3GQidXvhL1pe+Ano3/57jWz2vzRhZELKPnzTtoON7Z4yyR1aKKJXT8Iiz/R
	 czDCZ8KGs/P9FYEYVWJ5GGGOxre04dO/GToNjaq+H0eiidjGuFCfc9eI8Q588k7qB9
	 SkL0YPeWRKa1rWzxHhej8awu+tIXjK1FHNwR1HjGm72ptbrtmf9qoW6xq4DMNtaseC
	 7l0RKe+gNetMR2rkteZlOZ/HnvvG2pj43LfyjBSs9275alW3p4cOebIDYg/T+ZN726
	 oGlqy0tOenCfkAADGr6Ng+ZApScJRaVOv5CsJEv1FCKvWe5+V+Fs9nxX72DzXHiSZP
	 qxwWK+cHE1Usw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C371BC04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494114278.27929.11526368937617994085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a92412a2999d9e0cc0c29e015b75dc089aed82f71e1d7bb22196ccd875e1ab0
Date: Sun, 05 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714941142
