Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2996463B9
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726799754; cv=none; b=sZFTjyXOmsBCM3Bg4ZRqcRv59j2B03eBk+Wb56hSiVNQS3l6SVorZoHDS/cBtVSD/aTNvP3hef4sI91cIc8WreGjxUifv8sYl4pHdHPn0yuK0NLpGY2+sXfWaxtxporm5SoA7Q6ApH/IjAUe9VrGCwJZU3a5NC/kNtrRGnNe1ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726799754; c=relaxed/simple;
	bh=AcYyN7G0NDnzlzLbFevpuM0falXz6sioKTo4/wJj/MY=;
	h=To:Subject:From:Message-Id:Date; b=E9yXgUgjA1B7U7nMFOK3nwq8XYz2ivv28J3yQVkTz59oTHV3up+pKu9ououTzcSHA8ItKlImVFZq+1R/KOjyxQpgmWLYd4dFygsSZtlumBOOJh/fckZv5ZrEoUyubbKynjkW3sGj9dy8/zIOEzvEGBNWw5qkeSAuYxXJtfZIJHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbX2qe/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbX2qe/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B4C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726799753;
	bh=AcYyN7G0NDnzlzLbFevpuM0falXz6sioKTo4/wJj/MY=;
	h=To:Subject:From:Date:From;
	b=hbX2qe/kBFbquFBTQHst2KIxvK2RY3jxpIgFhP24TkvS72hwF5AkoXweQoPTz1Xqx
	 kbND/GWeMHXuNjmVF266StO3NydmBt4Mahb67bjJJCblonZzx6WDFN8UVAYttTG4k/
	 FQ+bip8OPjlB2Rs0cZTe4a0QZPn8uNsJ8iLRsi0eLVs/hEdmPA/VV+Ckv9gIyOxJrW
	 sZFCGs3Z7dLX6PqNoS2kpp5Tk0XbEfJowPT5LLcy6XDzbcB4k8rQASh40gjC++PbUA
	 O95D3y0XHAV1p4gsU1URRS1rGJ/DItvAsXaGz+NxZLRCaWj490U46fIDad5EkllTWj
	 46tp8OCqkIojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92738CF397F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679975359.5582.7283541751641684471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387cca7dbdc7f6aff09946f91787763ca26bb9f5b9090a882b927a6a361d658e
Date: Fri, 20 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726799753
