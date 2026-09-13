Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3902C13D53C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789336834; cv=none; b=RH4VQMB+xJNLPKrjoUQM/ibOC0uJHc5+LD4RLauFCokjkKuRhsVplZvbQwPvDYb3YHv76M3hJL+IK13+cSZOyLcWu535eJUMwwqRPkKzxzDPvBA3o+EWzF2MfP+Oy/4dEYZhOZYAwBuHzvPUenSlF87pfZEccUNNSjWDZQHrdD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789336834; c=relaxed/simple;
	bh=MgHEJgN+d4Y2X2fRDCsk1dvh9QbjtV0nU9ATHdsK/bo=;
	h=To:Subject:From:Message-Id:Date; b=BJ2Ykt6ksAFjIBJh3Jkn0a4vquDoeJb9n6Kz8oOkBflLO5k6nVreLmTF10F35iODBBNpHnQQ4BE8ZsqJ8XqkjT3Q/lV5+gfVf0luFZai0TASD7fkpNCGmHZCeJKn0TuH8TkAXMhu/kHyBW+GWNYhx4ZR8APeNmfe7BVSsql58G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhkZDTjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhkZDTjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0574C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789336833;
	bh=MgHEJgN+d4Y2X2fRDCsk1dvh9QbjtV0nU9ATHdsK/bo=;
	h=To:Subject:From:Date:From;
	b=HhkZDTjdEAOxrPEiPh3kOki5PVWbZHIJv29a/lVDf8z23wtULLidPtZ9QaBov10uv
	 T6GS+GdbcqUSVFOmIWUf6OfUn9hXXNcFlx+GMAXE1tUTDuqsJ+7rqvE6m/OLNcdgY+
	 oGdIC5A+Tha7xD7vKF+VvQsZFnmqeQeWjq+Y8aVzfvkR7TRWNIKrsKKrjhca+Ynlsx
	 ikV30J+bh2C/85LZi70MJJ8vkGhcseCnHzFsw1UzD3+yDTeCMPzAaxvZrEGOOA8ev+
	 npfeOXc6VHAF/2P9+99lpOAQi7yOCVRfsp+QOVaNnpPcZy9HloGh0kX3b7KTBwindg
	 1kT/ZTaNEIlvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C8C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933683368.6823.11997620367919408883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28817ee870333a97df0a754b91ce735961a6da562e588268c0f6f13755b9114
Date: Sun, 13 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789336833
