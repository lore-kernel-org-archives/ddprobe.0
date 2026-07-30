Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9294F332917
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785371434; cv=none; b=eE2N7Y+jzenA0n75jlH2SGaJBPefIsbABQT58iaZc0zaYc/1oJNzvM8AOvTcQC5WbuYvMnIg1znVBhWnYC4URnnnLpVNBLWhFoddhtFlS1E4115qVWUBMqE3N6JSLkdCJx3DFcDUtYoVJn3BCXG0c0Msm8hds/KnkBxJIDpNOFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785371434; c=relaxed/simple;
	bh=OP37lxylbzy1vMBB77FMacK+3jN1MEB5fmXdZK7ZfYY=;
	h=To:Subject:From:Message-Id:Date; b=dieoZB0nXz5r9IwpCZYxANcX4kZYNtYOLCJBA89xZknKyc/rB1hyLObvEbRz4AgAhjZYtDHNFvRV5zSOpK3QVDH+sjuMGTHsSDpKx93xllV6OFicvGCq8NNJbfLLvk38oTyQh+b7J93E/fzaJXCHAXXYzKs0pEl/iwHpVPbGI0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GujUnRaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GujUnRaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10ACC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785371433;
	bh=OP37lxylbzy1vMBB77FMacK+3jN1MEB5fmXdZK7ZfYY=;
	h=To:Subject:From:Date:From;
	b=GujUnRaDmHhbsKNqddH8WqMcnfPj9/IV9LMPxwpDvCv+Ngp6Av9ogy/hnrSEBkxgE
	 YidXsmPHpcUHueztZFWZbY+Fc1Eq+HXS5ZV1h3HWEpTNF27XQWz9FKvpTwuQQT87TE
	 4cfqMMEMZfMqGq5oSzDoHL7TZyIMTIxnCZX8tshQa0z7LEGYeHK3VdsMWMkk0pbNzn
	 3LEU+0cWO3hMrBnQh4bNs0Ny5mHsT18yTuNAemU9LJMp0MQteKQM1Y6uEiFOxLveRS
	 FuAqHkRTBjqhBQUL2IxRUh3M5gdfFJgO3OzKmJ5aS9pjZHJt5ZK/hOuWFQSaeCw4c7
	 wXi2uNvbvqAWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE525C54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537143368.28490.6339886339503541962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3c1a097355c8e009aa0705baf68b386fb3b4f3b2f57be2645fbb845939e5bd
Date: Thu, 30 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785371433
