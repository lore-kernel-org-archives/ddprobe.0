Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472FF2F37
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740369534; cv=none; b=YR2CvZjdLBOvxTF0zkK9/NXQ3Kk0TCkfo4sIjQ7bQs5JOfeLXd3PfVM/FTxwGZGimsQx9IIh0GCm8ZGmFwfOZb8uwUMVR0d4flygnQkZohzPswiCBX5UNmoKsX9xlC7h0DBGwY8pMs3ezHaPGNTZ4B3k8p7LBtC3NuKdmWHCIng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740369534; c=relaxed/simple;
	bh=ZA609ce+EpJy4LzdEtli9c9bd0B6qLsj+7snrWX45tk=;
	h=To:Subject:From:Message-Id:Date; b=VImavFRO9KNDAgcnJTt5IvlCZqbTjMGIoOOyx67qyPPBlj4VpQlvqwPbbvjC11YCCFCpk1WCu3bOG6jqBYPyTIgZ5eu0ix+fSb88eJgmB791LNYQd+cyKR+C5wplAfkT/iQrU8HMlCuyB25VMgtVNwLwCYyZzcmLzpKIBSVKHBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKUEPuWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKUEPuWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB751C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740369533;
	bh=ZA609ce+EpJy4LzdEtli9c9bd0B6qLsj+7snrWX45tk=;
	h=To:Subject:From:Date:From;
	b=rKUEPuWM7D5KOseCFkrIOfTL9DgUmQmfuYKym9dg7WzvW2fNTDul6UczYeka7j9CO
	 KY+rG4Rj25xDjwqL+9HLAQxKN+hHDtkJMhLe23npI1sTliQ59djHVueP6DJPtDZAc0
	 LyZRJ65UY3ZxMxl1jC5mYJiL/Ox/i/5Y++bQtl0EgnOxT+B0StM2YEqnEN5stBMl3b
	 Da3BAjODtrlTwDExxoCjwo1Tv7Az2HvQQ5Sp7tSXncT9bQa6Mt9HNZDHQfYK7h8jMI
	 uvxKw8tNUFCbXZQtgzT24UZYXAz2kagAABFbR70Iujk0Wbmy0NNkm9U6HF4H43hvfS
	 kpK27SyyPBzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD4C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174036953358.19494.14263636138189703333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323bd2473c6de53aefeb3749e41d80324294d57626837d4ec01e2f24f0096a15
Date: Mon, 24 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740369533
