Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DEB31A66
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706468897; cv=none; b=Spoqaw+k+i/6uneUi1xfsLXwq9CEbdz0QBKYfk7HISS9OM35jL9eUU0XvSQUOh6Q90IWr3zRx4kdn69JvbcSGJ5BTx1wHndOUREkmbHZzEVvC1l9nlLgEqHepUG8D3/k4c5GNdO3YGRSr2vrrvg8arlEBvHFCrZM+fsdEg22ruw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706468897; c=relaxed/simple;
	bh=HaupkrUsZ0E5d5mO/epVMCYl+EWqgmKEnH2GN3avMHs=;
	h=To:Subject:From:Message-Id:Date; b=BHSGZ/z4dcIP3ow/iR/o33WT4YrkLaBGWPlXw4RHtigXpIJgVcd9Zam5pHEh07SulaQFu1cHENLXz/Rvzj4qL9Q6vmSttNhfTwjztr5fx+zyvf1dB7oUr8ns1avusUZUv6pE2O+RefLIiac7WKAwghFl+4qfvmPPxLKZs/+9Tkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/hEASZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/hEASZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD12C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706468896;
	bh=HaupkrUsZ0E5d5mO/epVMCYl+EWqgmKEnH2GN3avMHs=;
	h=To:Subject:From:Date:From;
	b=s/hEASZy0d3hoiS8vUcZE0yEx4lEeJqo8EuB1kOCZm1ETggErtDjWI7HncovvvJBG
	 UFyT4W0hejHYW5bLBFATfNUpoyut+i3ixcebcGvN4/1k0HJBYliZGBPGzTS/pVVbQi
	 YUeMwbtLh1vkMRLEzftKniPulAcH0f62EbGmYlTqBWnLq8rSqfIQToopX4Wr49GHEh
	 PwC7L50Mr8X3jwu+6/ANjTuWQgFMA5t94FKNR02ekt0G8XsnSttooGwNsWaoyBj3b/
	 HAJL5FQ7oseskRqHLAjpAFfsk1tavcnYtmc2uzLcjq0ifDwqVvGtPEWx44Tmn7prm+
	 5qO2WDbXFaz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61757C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170646889638.24514.7089801606487279391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c3910d36da71bb04de0a651c31412b8a253a976178203d1a72ec7159aa210a
Date: Sun, 28 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706468896
