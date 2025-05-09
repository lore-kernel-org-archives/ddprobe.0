Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC15238C19
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746808194; cv=none; b=JgHTAclRpiHnphDTplTW800MvcrT5AUb6u0gA2EKEzmeh5FM+tSnICeKb53jZ0vaIEm8v5NPQMAj4t569TL3F87aRpLJSDXhWtyOQPgMLZBV+NHlLs8Pv4zOAf0tZSJBwQ/ssE2FDP9fgWEFG+YsOUVZtRaDhVzZUBTaMFAtRTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746808194; c=relaxed/simple;
	bh=Ax8z8fsmEtt4XEF9q7RDxw8rI2vRsDiDBi4A3BmN8+k=;
	h=To:Subject:From:Message-Id:Date; b=Os7XgPx1Bez7/hOi40CkQNHi9Wegvk6dPB0jVTiM2XLhH+VUuJ5PjrVsLpYjOn7lZS4f3q0MQEuK8TfPnAwJ0mLgKDGOEj6B9u8dCnDCyRaLnicHraK/ch4wZFP4k4YQnT48HmCO0hVxT9Iy6p4SESnB/E7uU/zFdAusmLoZylA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMcLYHuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMcLYHuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D50C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746808193;
	bh=Ax8z8fsmEtt4XEF9q7RDxw8rI2vRsDiDBi4A3BmN8+k=;
	h=To:Subject:From:Date:From;
	b=qMcLYHuk73vyFa5OWG2lFInQawW1oV7PRmPNJgT09iun5x7TovvRFGLJ37F7RUsiV
	 LmzzDgdE4L23L47KTwcssIS9kddHZq9BbJ/SJikUp0ZQnmNaOffG6iVrHZGWVR9Mt5
	 SCEdnvOreTrIroPkizT4ZVoSlDljHN7tQpfmvMxovOvH7iGzA/mep2lCh/yahHXKfK
	 WIAZMwO+qPtlISa1NBa2GN8LuTg7gOeaW5uTfg9ehWvst4i35hgTEbzBzHc9/zkUvg
	 Dq/pO94mAtUGq1t/XaAU6FhRqMT1Cf0Syhf94K6CdEdM7rjABuWLWbG2tpgIr5YnkC
	 3/trNB0+/UY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB9C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680819357.21335.10949797654633833193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d35069f70c0ebc8c174046d4d81fb911487d34d539e8b48a4805063795e8fad
Date: Fri, 09 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746808193
