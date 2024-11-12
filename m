Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E701AB535
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731399953; cv=none; b=KM0CyobAlK5zDvZAzLWVLw+jyMsCkbAt6uTJ8e1lzrjHhyI5Ye+OSTHWtG3xoRgdQ8DA5EIHfwLKgTynScFiYUijyvr5WWpxs54HZ3Ps2Law0gbgD04kcu1C5O+wjKH60dXynZjZ5DB3EetMinvZxObK8/V9aKOclOoHS7CcE9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731399953; c=relaxed/simple;
	bh=KZgOqa7dVGiKw4TzMwN6mTDxA5r1yPbRHcB6zyNX6TU=;
	h=To:Subject:From:Message-Id:Date; b=VRBsnl6orabj2Ig3ggbSiptf4+8FbX15qKBcK5sjfhlwKvZ8QbsIQElOMne7/U1S7QmbPrHRRzvRjoIvJmsvByLH8GMidzzYvN0q6mm4cSpTXJW2ZYIV9PhI5gujeKxkjBmZUNZ6TRryENW2fJFzwABHXFvhhgOLVSl3hVmmJ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFM3jNQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFM3jNQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD6AC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731399953;
	bh=KZgOqa7dVGiKw4TzMwN6mTDxA5r1yPbRHcB6zyNX6TU=;
	h=To:Subject:From:Date:From;
	b=TFM3jNQ6RdpqU7rTqXRUkvF3Co7P8XQcyHAI2b0uSXx3wYN52lPUuiVueyXL74qlS
	 T/XPah5e2K8slt2nfNOLL+PTtU/+5ihC314JrFzgP7++PjGS4rqeNI3TrAZSnsBU4G
	 5Q3prXGkb20P1bCwnUNrXk/Ub12NRI/8bpSrE7Y245GkiB3Sb6toZtGScRJIwmp1yv
	 7vUzS4VSA1/eT0Q9nq753UIsZ6tLAkse079Zr8iDCo+LUpN075HHk7KFeULIFqoO3F
	 bHjdlSHTMDgrXF6qUdHe0ZZTp3HdOl1v/1eJ2WyHuNOLOoGhAH/jGVJTgUJm4jT7Nr
	 sfXuerAY1DO5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98210D41D6B
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173139995359.26528.2767263850894890476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5efbf2d8d7adc602421048d5465c127e0391d95517f6fb6cc59cdfa83ac22e6
Date: Tue, 12 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731399953
