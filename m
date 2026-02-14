Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863E30BB8C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771101894; cv=none; b=UO9U8r+C0XBHtmVPJLHhA0fCETf25z+xHEDmnHHthdXVnbOV9tVV+pOxQPKyt2ZUVjN1koiXiskypcCND04R56sPVadpuU1uxpmHlpSvv96vOc9I8VTyP/okrvl/nhIPO0P76sUOQEnqboHHeWVrid8WPGPXqdm4nu3/eRvn4/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771101894; c=relaxed/simple;
	bh=GzwqfhiJAvxA+3YOz0GVBFFLgIPSe0JwmLNODStpDXE=;
	h=To:Subject:From:Message-Id:Date; b=YFt9qEcW/GuCQT9mvyJugO7HIR/ngpTQDArjMKIOvmrib2uViZpPjWYLncQqrZgWF4CUd+10W0vfT1kAZ0/4Nu4BGjJegz3zqzVTYatXlDZwA1EBfP2x/MSh10bcQCgg+3yeMeVqTzvEeWBw8cEf+S9ZRJ53K4oW+zHzXYdWmoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeRolzcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeRolzcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB92C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771101893;
	bh=GzwqfhiJAvxA+3YOz0GVBFFLgIPSe0JwmLNODStpDXE=;
	h=To:Subject:From:Date:From;
	b=QeRolzcmWhH8iIaCVUebu1OaqrZvRXo/L6UltK1DMlOyF+Hf4bRabyz7t2g8ETK5+
	 CVNru67/rB3v1an8fZlMUa4ohO7UEF8/IlRFXIK0hJTQUh9c56ABD7L3JLCWOOAt5F
	 frlRJDRHcIwQWEW6X3Z6O9U1MFvRPqBCyAxzLgjhvdHjGdlZSyze4vjAhMA2AH6KKF
	 9+SbhPlIfLi9FQDk7EacTRSNnyhotLHh2NTcm2tLUD9kHReH1uUoxqEOA5RmURYRxb
	 8WP8NeY1yNYE7YjJ4Wv8Rd6IuvSPFNsTxbnPSbI361Q+giPvSx4UbJjD5D1xInLar1
	 3x5KgN3p/amQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4D3EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110189361.29187.15442470876947245295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6823bfda8cc0c25fd62b115819953982cc206d58407e08a3f7c4091da95b7f
Date: Sat, 14 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771101893
