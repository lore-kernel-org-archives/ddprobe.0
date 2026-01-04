Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283832BE02B
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767496434; cv=none; b=hgSRlGO3uieToCVkJejfD1pKqXX1MkD+2M+j+r6bde+2n4ZsGPDm6Ca6qa03EAYFtteFb1Ws/bXDQpcoZ6q3S3rAmJnNp6Fs9N8CQZro6r1bCPnv5lUjVvYENC9EpVG+tkvoPjgWtb7i08QJkfs9MlLdk1Bqfzyz6T7YYKWpuHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767496434; c=relaxed/simple;
	bh=JYuZKbA/gZZhn3p0fEfLEVo0nRHXefpivVwOZS/VdQM=;
	h=To:Subject:From:Message-Id:Date; b=EwGcudlLSdkTKSozr0XNM0jKSIENZqbqAjF4k/JLmuyzY0JK1f7wL/vQRRqZg1TIm1PQ1SERyFb37AvsK38W3Dj/+N8EXAeBnsVPHnOKE3ScJdK2o3nJp32gCPtV528D8MhGtowom8WJTpmLlyspFAPxCy3G6PcTrTvspTq+1Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+aTyo7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+aTyo7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262BC16AAE
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767496433;
	bh=JYuZKbA/gZZhn3p0fEfLEVo0nRHXefpivVwOZS/VdQM=;
	h=To:Subject:From:Date:From;
	b=B+aTyo7vl2XeBe58il6cJNPbqSU6EHTMK586DaxkSwoFpx5BxieimXJE4qC/cDXvB
	 cqAGxVdpvYl/xDZ/EJBQCilZ238Ok6vQCJ0kHUqSpoHuf95a+WrpfSatagXyYRzvK1
	 uSki7dcavdnSBp4iNQWidUleStCMwMjz+B9IBoXnHmG9Eht+AcoGZHQJyENrwnYQvS
	 Drt1EwKwqLBAzq1oJDSSEXEo3/rNrO31XLgeYZ0K4QaNgazFAJhw+ucRk1tU+WhmIm
	 cnaOI95vzN5+od5bhy8LMIoQPrUHGpWdk6q8SIdwD8IvqWBDNtJw6R8a8RaWQzG4bc
	 h6ghQO+683tfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160AC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749643357.15597.2508138930547853341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4110d108c98177f839569a1ca6021fbe4d742d9e5a53250a34419bbd73d5596
Date: Sun, 04 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767496433
