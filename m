Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE371401B
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744762194; cv=none; b=fjFvti3Ej3EogqBmue68+if/8oe2VIhcliY3yMUVsRU/VssE7m/mQ64Lk3z2qf9zi/sHDmWPme8CqkR++6xhnAohaW/GKg03LTjU1sr10uGMArD/ZBp206cVf7TmgLMuP0SJnPmI7NB61FcgfWYv/xY3tnKL8zSnHmRepHrFS3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744762194; c=relaxed/simple;
	bh=JUmxx30lqt1RxIq+Q3JvaPFO3hNjk8mYIx+RkW49weU=;
	h=To:Subject:From:Message-Id:Date; b=bGsnbpjNl15lt5NXOpKFpXlyaBgMiawNnd0F7um0Z/H7CvRIbtzGucDNOyhQcJMh4FlycPpVShFR/GyDR807PLYXw7IWbvkMf0hxG+zT7lsFeWgttSgx+GV1I0TATm5L5WsHqTjzbUxfhUyVCisjLKJHghnU5Vh8r8Kiz4NcT9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glhhGTSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glhhGTSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E83C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744762193;
	bh=JUmxx30lqt1RxIq+Q3JvaPFO3hNjk8mYIx+RkW49weU=;
	h=To:Subject:From:Date:From;
	b=glhhGTSun4sWQdOsB527sCFCkaEvdw3A5MTA/Me6z0zaFH9GUp8Ay84uuv5ctywVL
	 g5LA4xptIdrMJvJEhBCvtpuRl6VMqo0dN+18PcZhY/2CMx/bXJGjTkm7tqOeLFLpjE
	 PN9WfEe1I/pd4Adz5oiv9tfXSP53cMRO5kpmsjBVCCvnSfgbYxz/dWyVBvUMDKyx/8
	 2QJt9vV+spw7LGelWUx647yyzz15MpbgB4mfNsddYS4sbi6wdvh4SYMIKd2BpMPHgT
	 QN4QLrJmOUeAegRJ2Vr0cObbVD4hqUttFLz54ev5FlmXINceCVOx+kGGgxU4N+Q27u
	 wijmzhf/OgthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95790C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476219360.5835.12533222004086794280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2968ac4e5b3b4b21a570775ae755052a3e10ef333a6f2504e2c3e8d7c6225398
Date: Wed, 16 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744762193
