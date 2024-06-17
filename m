Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FB929410
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718603903; cv=none; b=ooCcyk7KvZPnNRldPRqAktHL4ZjhtMsImBNdgkDFNkNuqCriBeoiW1o964nOaGHbbX+Gdm6uQvvLbnRH8KiekjhAlitPmAIRJQ5mMqE6kACWnsUiIWX3smPIIkeO2qyjd66uFOpLai/Gl2Mnx/kzTAMCYdiwLLl2Nlu5NSgIi7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718603903; c=relaxed/simple;
	bh=6Jo1oniJ7ae9Luj11MhAUwsBK0SxF6vCYy2BsYBypWM=;
	h=To:Subject:From:Message-Id:Date; b=N+LQjG+Dfv0Yzuw+ni9W3mku6bOkYx+GeNi5ECC1etiFKmxsydreUXRWt49uk2KYFf9lR+rpvG0To08WkOv7w3b4ujXXrsnCPKZNqdfFh32iXhn8a9dkyd9VhrSNsfuPKPYAYqWQ3YXXUUv+vBBcS6KO9ackcrwEmBosxxrfyI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au5DsHMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au5DsHMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DF1C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718603902;
	bh=6Jo1oniJ7ae9Luj11MhAUwsBK0SxF6vCYy2BsYBypWM=;
	h=To:Subject:From:Date:From;
	b=Au5DsHMPzDmcEwIPjdiYIZKN/6boct1V428rNKE7Ami7zQ87KuqjNZ8g+5zKzweoP
	 JEFx+AU8qxoYjUsk9OVsh+QIOXDxk5pnyMbwxEB3O0aNW8G6sQwg1ZObXNWoysHb3o
	 iOntPs6SCJcOjw0ff4bHrsViVnfuH2Tq7VlJLqdsQ5mUDrdrA7vMnfEJchkIIjloNw
	 0nW8ZU5cMZvfKhmH95Ybz/AEbcKPwsIO3VsnPeVicq6pkD1zdIVMEyMVwqTnQqzh1d
	 TALrfQmLB+gke+Xp/p6px0hCW+dPXkZE8133QjD0RzAjyMwFGo/572KGULpTBIQm8b
	 nw0PnRtXkq+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C624DC27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860390278.24045.12059413570788296973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ed98a2d9416207f952491485b211c954acae204fa573e59103133c3d643606
Date: Mon, 17 Jun 2024 05:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718603902
