Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364CF223DDB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747992594; cv=none; b=lut75LHMnXTOdR0tByYgBysa1wnIdv2bM8rqTJGqVoJv1VKCKE0Lp+2B3P4Cq5y5VOGJmGQxQlPF72fuaqMgyxQuWvQGMaOxI0UknFEwDsUpvE6QHhgwS7bTTLm14/RJBABr12tRxt2GZewDBvJuTxsU6C/IOW+jCSUNShOMsFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747992594; c=relaxed/simple;
	bh=DIFX1c2D8rzV3HVvXEusCZUJJoKDuyle8lQPHn2dBPg=;
	h=To:Subject:From:Message-Id:Date; b=kVsLkrjfJUjqzEjrh3z9tP1oUfP2RI/kQJg23ivBEpU9EvWuvFVOR08hXNI+ZljX8rnX6Oc7SHjrSPQ8aMZrFRIPTW9FpTZrZigEmO1BEssmHsr/TOmw3NLoPQaKi956ASAylkeXx+1cDnHdq+Mmob+3Vq6//gPSvuqNHYM02Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEkuB30u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEkuB30u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A83C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747992593;
	bh=DIFX1c2D8rzV3HVvXEusCZUJJoKDuyle8lQPHn2dBPg=;
	h=To:Subject:From:Date:From;
	b=sEkuB30uJwOm+Cq3rtZeqDHroYjurngI5AhFNaCsIbMSVR1z2/S8qMjc92AyB2zRd
	 DwfupZ40TVal4s67FwUbqKLCahBj1YMRNLHROTfJIIi7ah/VWeo5rxT5inYw1Yv0XQ
	 73ecwXjKNsaNRnQvnb1cBvWAHUY8Fu/SKDyHc/fVqofJeRuS1RmKgZK4t+LURorPhp
	 rTcmvvuhXaxUP8C3EdfyB7cIntO0GeEe8YXi+B2vSV6+0WTP1DtLkuwl7SWdGFtHNd
	 9Nb0E9NBK+ervgkZk4L9EOyBZITaQgtIj77aoaFvwali8uYwI17PN00brar4zaGm/+
	 c0spVzrEsgUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F466C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799259357.8804.2071283919481265232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b78c74817df13f3a5aef86ce6d73e00444c4cb6502792f0c122fb6b079550f7
Date: Fri, 23 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747992593
