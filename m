Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0683F1C181E
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711341497; cv=none; b=Q/Z7cxNvbq23ek0La92ntx2skAtxv8oTumUEVaxdJG4SxKfjNih9zbUxK5TtODvMoruCJJ2lSqbvNbiUvnwkzDUueuY7t7wUGYAvK4vHUoHmVrOHJdC1cGNHVa/gJLqSc1uJ9g5BAYRR7v+rdbptsdGjBeIH+ZfjGnOCuOLh7xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711341497; c=relaxed/simple;
	bh=9Iv1xfuqRhFTseDefbqOo8B2Rfuzl02m/8qe2qNbv6s=;
	h=To:Subject:From:Message-Id:Date; b=djiU88v+6j1negzIX4XJ78jwJCJyfJSxaanwiYGWRE5UtAaZku4cRglle7oet3TBobCIlkbxo3zL8Xpfk0pjajqXOIPmHyVbfyzWb4fvPerpm7tIGIPTl3/Oz2W2r5kVk++tnln5bFaLJuJOLGFbyDaUTN0pWck+JL2JKqI2NNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t34ipQ1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t34ipQ1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90BBAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711341496;
	bh=9Iv1xfuqRhFTseDefbqOo8B2Rfuzl02m/8qe2qNbv6s=;
	h=To:Subject:From:Date:From;
	b=t34ipQ1HnojtKvVwkidI+AwG5zQhFRmuTCePgHuMYJmnLZH3L1G7DDxsnE8gNRRoe
	 cd84xzTr5SIsAdD68GTp5Pt6F12LLcFXrFuFg86io6hxy7VMDZ215tlmcSpfQEK9BV
	 SgMEPC8QmgoTRITOY4lc4cNBmWkOt/c0bIQc0tdl1Ti4YcCxhBJGbrWQY9Ij6BhCYe
	 vfZuMFFIwEfy61Ca3YiZ21amH4GOx/UQON0UnHJoKSZEG3C5urnLfPVrdidLZxAV3c
	 sPiOfYtBv6UqNUbiQPDYQcMygZdFg2bcJN+x7DXI+BszLsHbTJH+y/Q1wgyEDxFaSt
	 fmlPri2JqiYOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF74C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134149642.20584.2379489070773015704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f13ccda4b764d563b856a5913d912566c476edb32401b4fbedefcf58d5feb00
Date: Mon, 25 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711341496
