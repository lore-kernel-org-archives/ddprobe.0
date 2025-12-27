Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437419E968
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766810034; cv=none; b=AnAX1ytZwlwG5hVLWpaHjx8DiCmmic+r+FUlMYs3UBjeW2/1Eam3o9ZSX3u5HyHLcjXE5JfIKitq/Ntdd2d5swBHjlJ2WY4mhLdrUFQi8ESKGrRhSwMTLfsLCMQymX91BHszesNLnnWArm8DNNPayqjIPi4JF5YTdSZ6rkypHKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766810034; c=relaxed/simple;
	bh=ir955f7X1y2W8TPqr/ltWTVXAYmJHhZuicpLEqV7hbc=;
	h=To:Subject:From:Message-Id:Date; b=MFzgoqi1o7EcneLoXlU5lTAMCSKhHw6yyo6UzC3J8XMTxo73o1ovqN5KHfYvKmLn970PPv6mX0/W1krr2E7jCJQA2d5Cd08zsfIskJXAH85ShN+ojTaHtUfcjp77W2d9T/rXHoBMvCyJX9cmnRvhDttug0ENACfkteF4IfWc9ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OV5KtXz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OV5KtXz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD00C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766810033;
	bh=ir955f7X1y2W8TPqr/ltWTVXAYmJHhZuicpLEqV7hbc=;
	h=To:Subject:From:Date:From;
	b=OV5KtXz8UBcOaCzpJa1cyAsdgGtrmaUIgV28UAjXTyfp8HEDH7cyaP5qY2wZOFe9F
	 bK8aMsfQzRlDqFO7BHi87WwpFSf5kvs3X9mQgamK19Ot+1BoaYAU54v1ae/COaeAPZ
	 rne6swSCcuj+qfQcyx7AH7bAYwzv7OlD/tcB1YiNFoyiiGh+2XchkVT2Ceoy0nMoLt
	 c2Uk+IFvHOw3cKambqL8KPR7AOR59kfcdIIk/3jq/iNv/A2GH9Y+JgDNYh+5/Nx12R
	 H5bXYUUEZpMgCKgsNac7zC72mTM+4okR/e7XspEMu+z9Mc+sxKJouYY1fka+ARaJ8Y
	 kjuKjQ9XgDQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9523E7AD7F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681003365.11273.11663534326311735280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00921e40a54a559c4b3f20d99f457b07b9476b9ed1232da233d7cfbb5eaa9522
Date: Sat, 27 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766810033
