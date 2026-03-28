Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C59175A5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774664094; cv=none; b=E5+VJ+nXMCpShyHqqecJXjEMKSDM+J3PoIZsvCs0HO48uFngRuYf2N2h7mO3eECDNjyEi/oPQzJl4LMfrgmCLam0+2AGZGE626GqN3nfAbMF+voOt2tBEneYIgwQfHaaYDOBsQ+4lpurEUUOklm8Tj/aO0hCNUPja/LpePWqfjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774664094; c=relaxed/simple;
	bh=DYNS2TUgOCJyVRtWL3vUBG1Ds/JUrHaWqiqjTJfhyig=;
	h=To:Subject:From:Message-Id:Date; b=plkvXsNpjSVzSwEYwZeEmxSFMhXUkD4YhL39JZniKMfOitGI2aqkQlHnqm8BGL4Lo/sPjOBd4tqN6H44cypzlupiioExjQlpTN6YQQmTp9+xwriB0oAZcgP9MeECxrGjE27cbr3oYdgoR/tJmv9EKM3gTrInmemRNgBgX6kLM0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkAoPSl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkAoPSl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7DDC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774664093;
	bh=DYNS2TUgOCJyVRtWL3vUBG1Ds/JUrHaWqiqjTJfhyig=;
	h=To:Subject:From:Date:From;
	b=dkAoPSl+mrC61MvFoNzaBAhua0L32pfTkn+q2cNlVASXbI448y8VYpc8pMvTGloxM
	 WYLChMRH00SUEmmAK+cA5fv1jwcVirvanHERLTpO86aUOzOUYMMYvsEoqpa9vQ8VVx
	 x12iBa+lVvAduMgKYtHuqjO0ZPdYce4tze+0HQX7izbgT0rn81BWmtyRiQ6u+kae+p
	 wcyU8k81Ikme5G3jaeKfKdNBiEnNfL7MHCty5eVQCHSioZsVtWgO1J8aDQ3ATuCmQK
	 Z+BKTprQi5OiQTJQKvqJDmZKgXmy6njhpGOVQ5Al3FiaK4wpcJqfIZZ5mF+bhwPra5
	 9K+4X7F8XnMIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470810F3DC8
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466409358.15376.16507240539945013293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd86bc4d6bd732b4320f88c9ca79d2564bb76c4baca807add30be170c8e74d9
Date: Sat, 28 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774664093
