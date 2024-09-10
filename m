Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3617E17C9EB
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725953754; cv=none; b=eUTApMKxRkZ9rQhJS1ja8j2TUTDSDe7QtuDcgtR9GS4Mi7oi14v26ijNxWigXPnk/pYWf/7lEx1hDbkJld49RDDeaGoV/AM/khLakxS4J6S3wz0XAgFjn7I97RyijrckTX6GdkI+BmdWUQjLbeRfdd4BsY7fCb/saVdilWx7lPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725953754; c=relaxed/simple;
	bh=Zt/rMkI2IevI7ubIRdj5Vz9vjEzcxGd8x0/G/Y/akvY=;
	h=To:Subject:From:Message-Id:Date; b=lHcemF+XSzXlye10TiVaRYnV3qvx0k+3hUmP3OcSe7+FE6nX2iqMFRm8RCqAA+azhR5dcHOuVD2inF44gT4vfJJD2Lek1A6HKRyRckvCCXEKBRjK2i6khUR86OT0bC7VnmRiYnMF8zrvfpN51/fUraUzfzWWgvHseco+83+qciA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYdQ6JEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYdQ6JEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0876C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725953753;
	bh=Zt/rMkI2IevI7ubIRdj5Vz9vjEzcxGd8x0/G/Y/akvY=;
	h=To:Subject:From:Date:From;
	b=rYdQ6JEa36xkBRuHZVsoMim3twJqDYiUMMI3schFNALydUtxp7U21UWzxxrPNg+zY
	 nG9ERDbKJ9ntkEbbGBrEn6euc7OPL5paK4oZFPfvOydPi1GpFXBQuNrQcmzH7ZwJ2O
	 rA874l9IPbHtsaQ/FXmN8jQKlZRSVcZ7G9YL4ztoxXO5j/LfVmuBeqOSdj1+fYXRMG
	 Dm0SvXxE5axdQvet6HAI1NUfvQFFX4AProSso7912DY6uMvjIxG53itlggi/wbC+HB
	 H2CjS1yg1jjE07jKojBwKiGKjeW100sPZmr2OKLcyhhSGYJHE/VFI6uxiQIt86GF7A
	 eqf5tuEW6I0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E79AECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595375363.4683.9040597215610969466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1add5bfabebf5613b61bad99c552912ade2aaa57e4535243164a50ee76e5bb2c
Date: Tue, 10 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725953753
