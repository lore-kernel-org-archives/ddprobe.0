Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1A13191C0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762189793; cv=none; b=IMMInk/I+tmjQzw9YvYzqShpjFHumZ/0yUQzXv/TyBE95P1KgVFOlMLG6ha5KWN4U1QLjeOQxtMpX3fkf/KYMNy6BrrEU+V5U0x/olXvBQh4jKU0kwnQ426XR1dJkDocVXC4ST93jerRXm+L8wJl+svtGNm6f4he1RMbRe8sPlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762189793; c=relaxed/simple;
	bh=xpdRBIaVn3yXCJwhg13xHKDowVbxlFWHjKaQLkXV3hM=;
	h=To:Subject:From:Message-Id:Date; b=K/6Oox/3HY2BTIhQFCKPbf9P8mgJipojPnSjnC9SlmZ286hMk6V4fZl+lqCISUk/UhdKopA8wEewNnzudUzQ5/FZzFU3Vc3ArOCjM4SzeApnJoekYK+LxeBr/KVRYoBlOAl9CBfVEUQ/fYvFjHJyWVM8GQm648rhyRmCc4CVFgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJPs2vhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJPs2vhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0C2C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762189793;
	bh=xpdRBIaVn3yXCJwhg13xHKDowVbxlFWHjKaQLkXV3hM=;
	h=To:Subject:From:Date:From;
	b=aJPs2vhEJJjkPqRQF3423qX2UlK/6h8HS8DBdduTPvenVTLzmKZNfQZO/TGHHI8am
	 zIasYxsZN7ktyTHAOEPAwXVZeGwqrrpKn6gMF6JJv2EMNgI4OoBe6TZ3KMWke1yP/g
	 h4mtl5nzkwbHtbx3yevREt5AjMkNlZlcFsLo1tFK1MVf2ACQ/MG/NYAWfwxBaSDK+4
	 Lk4hda/8v0BBfcNDNRufjHI4gii59SGmItmFkLykZtkYQrT9cermIBmEEsDkgJDjYb
	 dT1/SBCUEdmoCZfxwFVoz6g/80RO1EuzUGInlIoUb5ZUeSPgWHicWZFT9SbdJDPfeZ
	 /7Fe0SdhK+DNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909AECCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218979358.3980.2207281452910918239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e140979a65e160d99d203bc8bad7034cf53ce92b1c6bad8f21e7df1c75c0b3
Date: Mon, 03 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762189793
