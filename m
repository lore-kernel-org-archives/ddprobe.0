Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972D4594A
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760197794; cv=none; b=Q/zvlKSyZfQwPUYeSWGBld7Uqr1Jt9Fie+5VSlK+J67wKfFWIdB3zI+f7Nr9vY4DKKmHuRoqdmJDRyyHURQ5JDzaZToVx4pe+nIzpWBp8UfX33aqoTZT1ihe3ShZIAxZNcOUiEbmePKyNmXZyoWes/FNGbM9duS3eK+1bIAebMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760197794; c=relaxed/simple;
	bh=9z754vNoTUEvYmCeUeqiNKHHBGXbhqp8sLtvmPt6vBk=;
	h=To:Subject:From:Message-Id:Date; b=sWA+qujj+uTESndUB3BukHw4+cV7WhUMRw0G5lLXESziBfNHEIFKuFGQIk92tvYv3c3iK+1GyRivywPcWcNI112S/+lcOese0ahTakNsqRfB/I8tJcuztrkVQqYnrIVvac4/ubQHvn3kPwkXlcIxNh8IB6lcRqHwNgNBj3rTM1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqD0QWg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqD0QWg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE4C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760197793;
	bh=9z754vNoTUEvYmCeUeqiNKHHBGXbhqp8sLtvmPt6vBk=;
	h=To:Subject:From:Date:From;
	b=LqD0QWg4Gj96bA4YsE48QZOeiSADS7yfbdI/XL9pSD+Gmj2eB13wVq1A2/971YMEX
	 +zWK9PzaDQDNeJnAttmBQiCUjZc2wyreXHH1TxZvmOpy0UaJssQnBXyfuj3W0detAY
	 DqVKjwdg6Fpi3D5qn7qlqFfh8LD7ItPxDG2PfNlM7ql7TZuo61OwFteKzBQ9DcRheZ
	 Dg9Pk5Dd2YTAhtg9WC/+w7a1l3hbju4pqAoZN0dx8XNa5eCOlAbWfXobboogE8Pw+a
	 Pt5TBKlpMEBhiYbzjrkR5uSZLB3TNxi8L0/7pFV4zThRUSg+UgnJwtwLPthaK6AXyT
	 zGJShLafSwjyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9526DCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019779357.20725.5229211366620093377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6fa33e1c65950d0d2eb1993b877bdf53494d6d98e9bd0a8209a9ac49cc6bc63
Date: Sat, 11 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760197793
