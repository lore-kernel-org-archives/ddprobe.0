Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282DC4409
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728968754; cv=none; b=s1J2BRMexuSBxE5Y+yxDE/qZF7F/XrSkfGacFTpbd5/6eZz4whk5md5PSYAxq5I+cfGcJesODTVVQu41UNNUR1NFk+GzH6o/+wwbJwdaYWSM6g2J/8uXKGC7Yv8CCaqVq5XE7k8u/PWz18gQD0teO6tHPR2xrxAiEYhnOR/lIBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728968754; c=relaxed/simple;
	bh=mAs07jlePXt5JbdWSncUnJ7xre2NzwRBxJI8jmIutRI=;
	h=To:Subject:From:Message-Id:Date; b=Aq+FdQakvOExLxs7WSPgoI9X2Se7lfZ6a33Saq3wJVQ6vBKoLHQnqHX9LGrZyhFKkw/ICTfCePkYcM6+9sOmcgTBRXR3VIQkp3DQqiniBRD6IB5UAxHHoy+yizPImktOGZe+6KZuQxENvmRLX4tlkckaefyaIbByziqSBzhiD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFgIx7gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFgIx7gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694AC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728968753;
	bh=mAs07jlePXt5JbdWSncUnJ7xre2NzwRBxJI8jmIutRI=;
	h=To:Subject:From:Date:From;
	b=mFgIx7gl8RKY8YDO+ectM21wM6X/w/zwBYPpbpEunSWzRKvrgqJSZEWU9LGt/agIh
	 b7NKGrZACS57us8VUd43vDugeDjUpOREzyjp3vVz6cUlGc2we/3V2L6epPPC03ePTX
	 PO7gY4o0HMRulZhaVEIODkpSiI89zaImEySd2Rm4G8EYpfVfG1C1p+h8B9jb/GUa2G
	 lZ29ySTANIi76NsTvMuBnK3THObOmi2FQQnBc7K0t8mTl83YRPNSKz+6N0AOqOi36j
	 6QSj0U2Fekw9JuXkVLbzf3LMsQjai1L2eiFs48KZcp9AWA2bJcQvK8yn5DKS7VjB9T
	 LchfYv+XbgGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91497CFC267
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896875358.15404.10387629400555017493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53dbba2f58fe64cbb6816c52b0bcfb3c1ae2b369e0d06d7339a9a2d5e90724d
Date: Tue, 15 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728968753
