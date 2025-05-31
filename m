Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFC66FB9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748726394; cv=none; b=SO0bKoFKAV7i0oYmgyenjV8mLAZJ+mjCRnzgBoP8vKz/E5v8mNgRK0YBgdzUHV8Ie+hJoCcRiHakIhg7MIkMyz5c/shOU/Bl1IAy+SqxR/dbwCpPRk/xZmBn9OhmGGM+W98AL7LMngGWkO7E3r74QdLW/z9zwtfIDsROQZFezwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748726394; c=relaxed/simple;
	bh=frTmxQff9ToWqehuSRk69rSMRi47/CHUYywpAlbzetw=;
	h=To:Subject:From:Message-Id:Date; b=ObdzBWzIUC/FRk0jxrKKLgPlqPUVbTMFjeFbRo/CziSJkr3gYlDQ/mR27T1Sps9C/eODmvQafnSnIWK1j9S/iCJen50vZKcnFPmwD19p9vz8fcDcubEegG1bZmPWgXTtOpq626zfhsGTgBr5yaTpLUDDHO7XXqV1OwlWEN9vFqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5n5dYKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5n5dYKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7645C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748726393;
	bh=frTmxQff9ToWqehuSRk69rSMRi47/CHUYywpAlbzetw=;
	h=To:Subject:From:Date:From;
	b=U5n5dYKFA+/8Rst1s2ZexT85IeW9xlN52zcUxJeUD32XnzLFRNpeuEHSEWutZhtp1
	 IqE4mFrkbIfN5d4Dupz2uffL96+ORCgQIyAha/QYZgeePWG7HmJSLeEC9/gGAoEeoj
	 et/PNCAv7MXAmm7/K2kaIezOdrgp7nY+1Tu2GMO09gVfrKzhQPRRilWc1PQp2zPIAs
	 6+bGn9JepGONGykHZ4bcpTCVKVqKPQwu1c3xRN5EaNHVtaG6rLd5mqpziErf7UV+tc
	 tECyJMqsDiCTwUKmK6RSpGExoJC13h4q9V5MMg/vf76u5OmRO0K8OViQLYZlJfhVdo
	 LQDEOk1ZuuAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555FC5B552
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872639357.29902.12376283059173584839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb3d1e97d806fee452ff553dc0f9da1fb137d5f504caa5a90d79253852b4d0a
Date: Sat, 31 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748726393
