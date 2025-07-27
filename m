Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0E10F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753645795; cv=none; b=ENRYUa59XHDZt0AVZNF3iABAB0iUDzpiALStmIoEG+PY5oM2nozWXnXY2kmPsGgacDVLHeiRoemxQbqCbh4Xb9bKlRbkyyXYwvP9hJ8XuslNxgnHZKt9H8rq4idUVX1vIyvIPclpTaFgUGdcCyNtKfBhG3og1UZdGPHvGQ60GAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753645795; c=relaxed/simple;
	bh=fHZMKjckCaD2GAe0a4AlV8Rn3GhlVrEHNB/JAhsd5QY=;
	h=To:Subject:From:Message-Id:Date; b=KQPmUuxcpM2LzI2mB/+b0E1QlVdlY84veD6N1JIc+9VUGdMHiRgwLxMtJPNc00BYROdSmzEydMX7eFksqNcbfcjv1YJDNuJ3yocVoS2GXBBhNFS2IlFDtabBwWp4mTZlEdFyKG105s9U+D6bqPS0l0lLysUSiaBz6YUHkCE4SUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0qkQRP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0qkQRP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4001C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753645793;
	bh=fHZMKjckCaD2GAe0a4AlV8Rn3GhlVrEHNB/JAhsd5QY=;
	h=To:Subject:From:Date:From;
	b=n0qkQRP2nuI5LjGc3UYvWbq60XvnLyUaL1gCesTnU6v604TpgChrqVOuLAHov2FyC
	 gc0WXjn0IBd3JVzvz3zny0Sl9Axt7th3l49GV3xuU+5XPa9WoYruZ3N7Qre0tv9HSH
	 LGeqvi3Oy76oVCs23UVui2JrVgyZVgT1PIgj4B8Fpo2mPUOyGiV5wUKHqLWbj3dnuo
	 3s9q1WUxm4eJtUDAFiEN/6DG6BWP4wExgju0i0wxcCghxUQHv0/PE7ZOGMol1yNb8a
	 uNHxghPtsJJBBhXDKnn6cfWcjKdl7TQIU+bJ8QBZ5MlFRkIOjqcM1v7ifTti0Uu3pS
	 24tLDR0pcQkzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93627C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364579358.6103.16155582558163817466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793f33371072f6e745e529325d0a90648906519a2532efbd12bc2c5b574a5ec2
Date: Sun, 27 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753645793
