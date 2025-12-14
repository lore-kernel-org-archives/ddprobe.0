Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250AB3B8D5E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765696974; cv=none; b=ZkLJArD214wtRArtmsGlEHiY4q4XOKxEFzpZ1zfht8JzFP57YfHhU/JbdZe6Kgjhr0uN+FIDIKEFoKW5iCA1KV6V5gTYO8AobCy3lGbVUmP5ul5/Linrq8WC7YpSEUDjQ6spoaM8tNgNHh+tii+cSppDsyag0vRyhS+Gz/Rx3/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765696974; c=relaxed/simple;
	bh=HENlsj9b211/G6cnCD5R7z74xOuJnvIpHJnmnBty+KM=;
	h=To:Subject:From:Message-Id:Date; b=O46gVRHehxlf4CqemLI0IKjMcP4WaxkJgyrhm/ctnwVeoHmvmK5X3iNu9Ht+0RBC8tnvlTTwH4tltbPC8OA2vYki490SPE9VBy6IPRurNzani3CPMiSS+TmEffKXPVC3jiG2/VSK7e6ZsHOh3XCCB6QlWEzC55eBjaMO0ePXs4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiHFkmQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiHFkmQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81ABC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765696973;
	bh=HENlsj9b211/G6cnCD5R7z74xOuJnvIpHJnmnBty+KM=;
	h=To:Subject:From:Date:From;
	b=tiHFkmQ69Mo868+Gv6LZqGfcnJq42hnZUC2o0T3r7xnDAgea0pysRH6lrnHL8H4Uj
	 L1HrHeT+Wb9XTHqgHah/7NF8fzDKoON/XHN58uFv948QIDr03efYXYUdVVxPHNCmlJ
	 l48UPoqvOYSmFhnRIfCGgwck/m4aPoqilm9FgTAg1BuqKqiDsEy4xY6gERVMF4zcS8
	 c1FbzKR5yQ7OYXqKEbNdKnuDS/v0geby/HJ8RYRyPq7PmGhoi16+GF8IFkSTC9qcly
	 Ucn9GEiI5ApBLxB2BCAUJJW8DJqXY1j/OGq/BKWg5NShqRQ7FD5nrtuiIPVmx3o1pt
	 8uyB9EHyXbLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C6ECFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569697358.8077.12598855351243440729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4f5af52f442a7f76ff870b0d084c9e5af3d860305e25e09acce1a287d36027
Date: Sun, 14 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765696973
