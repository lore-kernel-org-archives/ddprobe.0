Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B139353EDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776335254; cv=none; b=N93KiBicPMqTqbxHv94fnAlYD95FtU3Z7bZTrhcFgzYb8MwpvyY5SlX2LZfTMfwAJHHos25FP9fo8ORSL0x1tXq1IaP2nZV+n5yNR2ra7gMLHXDWQyU7qcki2TvM+SCWQjZupQbfPLBJ9sNqRXiCGg1ESerNIzg+s0NHZkazadM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776335254; c=relaxed/simple;
	bh=IH0LQX0vYA7fn5BFD4VTKSwQKEG3EfOyF9HqxfdhUTQ=;
	h=To:Subject:From:Message-Id:Date; b=fzf495vtRWV7R3gC9tVwGPo4HJ+s/+K03Nm+5fHgfIH6YbLv1WY+cuJht8+fKBOaqO39Q2ajuUGGwmhHnzgRSCuFfCWSrvjzY8IfmmCvZrj87P7MjJhHNS4/7ZDfybOz7Ayn91TY4AUJ3vD1g4+BdK3Y399Q4tSVOvj3isZey+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZxXEWhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZxXEWhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4D4C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776335253;
	bh=IH0LQX0vYA7fn5BFD4VTKSwQKEG3EfOyF9HqxfdhUTQ=;
	h=To:Subject:From:Date:From;
	b=OZxXEWhiZljBnIPOzpcJRjkR+OwDthKWBq0WavhhAGhfYOSw9nweatDU4azkAakrv
	 yxNQ/zA5/PfUQimSGKTKdy4LCU3hoeG2/01+vY6QmP8VdMzGBjXRxsVHvKeHQFho68
	 0AlCOMUsjcWQ2Hug/2T47uMSkD2aZkaPenDtSKU70znHzbq5iQX+bqMIjSlF8blSp7
	 5sR25LA7WynPObvIZ3uFLO97P5KPsD+MhndBuDDp2W5+5CS5cy51maMlOLagNjBOm9
	 9wfj5E7LEQo4HwaKOML7CyI7iYEKVg/AwiorYXfp96la36NM5nE3i7XHFwg/vrZOFc
	 IFAHtWKP5qC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A956CF8A146
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633525368.2066.10379078406789676066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9439149be032200ea7254011d13dccbddb7e857afb6b3960f22e5b5efe518f
Date: Thu, 16 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776335253
