Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D820FC1D
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 09:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716196943; cv=none; b=E4MZ7FDZ9gv3kLie0QaL3oLfJEOCgufG3kjEHwUkKvwQGSl5Jfn+GqovF4UuHmV66A73YIvSQ1iNi1RBOC+IrtcZ3Vjd6KFh97VjzbLUerlulvWDtaht3NvR3H5K5t8PrNxwULPviak/W8L+KBTmv+Ez2npqHE2PmmDvNBHopOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716196943; c=relaxed/simple;
	bh=x69ghwZ3EZwB0T7a+1Aku1OA3rujyUNdKbbCQapmfk4=;
	h=To:Subject:From:Message-Id:Date; b=oj3JOEN2URV+HyhfqbOZZ8wS1/Lbx+932eb0ciOZzrNGSfXTeR3P4oGFOLINkLllkn/isPZPzumXXzgNvl+KcrRnT19bbPSIu4bS6CV+HiCfGrVMYmWMERdJ0BkBGcvZfpkqbUYShDV00lyCuSXVbZGPMFc2P/G4ypOi9o8sDto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7tApp4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7tApp4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2813C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716196942;
	bh=x69ghwZ3EZwB0T7a+1Aku1OA3rujyUNdKbbCQapmfk4=;
	h=To:Subject:From:Date:From;
	b=A7tApp4puQgoO/2DgTatrSDWUiriRynGcGp7DG4f6pSixMarwe1POwKFqKyzoC+vs
	 VW7HuENbAaTJ93BvpMm3V/rMISgI6BoPIYnuvfizmLw9357m5790iAWGbUh6hw/oPO
	 4ZCkL5WaSGU3JZuJaUeR0mm7rarfVRUD+BC5zbwq5StaWyGsx68TOfeF+0PV8vuFOR
	 hAzcNa+uysvmNalpapoUeAO+sqvAHEnofHs9dWFYeHfiURrne9d+lYOHBT3RiHVal1
	 +D01BJZtT0iOBWHg1l/JzHcDoZrVTy/sWkuDDYi5PFuEWqE0CfNIA0xCxzOERxIqSR
	 3O9fKVE0ub8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A13C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171619694278.19212.5557638642357362478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f440965af07fa82743121690cab4660cdcac903797615a70e6a010e5c9f7a30
Date: Mon, 20 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716196942
