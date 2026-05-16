Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF8405C4F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778907034; cv=none; b=XwNHKERHU1v87cQabWA5FzpTHunWuvZ9fx74JWJ2rTsJKLGgMdqICk/oSm/fikg+ik0FHUMvbGdhbEedeY6ZflbDOdEAdlDaISEAWE2QPst6+cwkUg1F30f+saHTqBem1kddKbVt4WXtsA8/jfDDNsTbxM2v3ruSVll8MPlNm5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778907034; c=relaxed/simple;
	bh=R2QHKbG64CaeR8J0gdYfw522OvwrXZOnRPh7oauuoxc=;
	h=To:Subject:From:Message-Id:Date; b=TLBPAGa7dRpLbzJXcuz+R+qYhFHrJAxrUjxRyKdMkFSkqJNCL9pYfKIobWmLVIficWo2VOeIG2mp7fBhOV7ungz0aZjhB3TGdd2OLvB3m7Wf3NQidQvpnR3xco4UJs8qoB5BHSiTeotfkRpVh/hpBnFSniIhyGoqpSzPyioFX5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsmN1dNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsmN1dNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98B4C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778907033;
	bh=R2QHKbG64CaeR8J0gdYfw522OvwrXZOnRPh7oauuoxc=;
	h=To:Subject:From:Date:From;
	b=JsmN1dNg8yFT5uqwBirthzHJ8TuIwIn6ElXUMsh485i7EaYPN+qy5uwYQ5T1+tRva
	 PEUTRG5fKL4PxvchQNkIJQvzc6yTXuXWThxd0B717MoM4LxGMQFE75cg8iGkBwulQd
	 cAJBVJTSDZ1y60J4sGGtfs0fvLPCekniVz5BVWtI36ExJXSNBjx3GxT+W0YUsKaAJl
	 WcS544mGVHLq2aT2BOjoNpc7VuGPOTjNRNoy0BajQScbxwzkl5XwfXqJnERYg8Y+fY
	 J1zwUVvyD8bb/rKB4ih9kIop70dMawhmw9Ccbus4vs3ha9zCmgcnBpGqzWxLoOnlhF
	 vp6nviuFkdO2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11D7CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890703370.12271.9644646306737954750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5f1120454e4dc6aac0e04b4a3c2102bb8d97b82414c58a6783f8cb3da2ed99
Date: Sat, 16 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778907033
