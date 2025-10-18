Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEFC274B44
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760764794; cv=none; b=Kz08HIiQ6FCIM+s089PCuftYGwAlO+VRwVSrOV+SPf9TEgdk7qqKq94APp7+dDF5gFoBKL92CQnHmBGC0FWnJYb/Oy5NMwxEtozU3F0pkzOXybcFL8uATB7NnwHEBc9On/l6Jxkc4FCZheW25OimklEaUF3ZIuQQN991levrHTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760764794; c=relaxed/simple;
	bh=ReO+tDtODVZ0vLnYvjmv/tFAi3NOA6TC8DgugojdLgI=;
	h=To:Subject:From:Message-Id:Date; b=iCCH/YYnFcuP4D0tOU6CgaeSTfjuR/MdSo1diOACSQot4N3nEvEflLMU6jagtUaEBSdjQUeFlCZNQowk362CeabaYjCdUT7956eEAXSYIOo9JlE37VhAUihaPAdYf8Qp5L4V25TXmgrcFbtFmp9Y6HnYPyeWgeVEqDc3z92G0Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryZXnggA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryZXnggA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D9C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760764793;
	bh=ReO+tDtODVZ0vLnYvjmv/tFAi3NOA6TC8DgugojdLgI=;
	h=To:Subject:From:Date:From;
	b=ryZXnggAlNun4DHsx4J3pLshCoZRTnl3pDS/ITwjy6p807fAZvESyoEz4WvzEHcwR
	 bL8Kn8nquLENiSEc6a/TwhESpkuoKLGvs+n3zm6p1XP0bvHq3XsVTyQ4CjuwNzHjvU
	 ABEGHldSsaeaQ+rs5qxHfT/1FcR25aZxzaUCXdPFN2D3yME0CB5OjUT4JAONPBA5pw
	 JGwVUM3u+pNM5wqI8mspNZwh9i7T9vnyCYt6lgBJV3e8eF5d+V5FYZnzl1cDYCwdqP
	 dd3f9Wvdl1TBfhChRKsVan8axIQhpuhG2NJfcCyh0ncRhBYBON8V3FmF5Xn+v9LBZ8
	 0ZxJfg3Cypplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6DCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076479357.17933.16112375822122232582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b502fc35da7174b4a015b7797112f3cf52ba6dbd80b953371609d1ca6a30245e
Date: Sat, 18 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760764793
