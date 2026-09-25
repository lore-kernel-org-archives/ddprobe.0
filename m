Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2823D9048
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790312434; cv=none; b=i5fjvfmd2VE5g78oM9QTTHKjJz4iUt2lhNaeSTgaf2u4bPu+mjm+TEjB4Q3B1TiDHdDUUqVM9UmfDkDGJU/CSvMI6JZNx0mKVuTNSxyuB5vy/FgWUfZarnKADVsCVw7frqtm0EmUd5U9UgijFIcQJs05z247wwJ4fBuC3Nkf6nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790312434; c=relaxed/simple;
	bh=Qvip3Fzz87pmQcbY0XgekTO5eC0n5qDCWC13kTU02Ac=;
	h=To:Subject:From:Message-Id:Date; b=lYEnsTvoMMMBB1MwGZCMtjSQdoRrNr0VQ7Coa6Cw/t1X4XxD5RiZGrXL9Q2QkCpjbG4rc9pLMvRntQHAGZUBMPv+YujNINi8ze/axFJbn5MUCGpAnDuslMryE2/5bmcf8GFm4DlgM4HhDZxgU3ZDgJ+hhTX+fmR2xYmW1/GNOlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODRk3AjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODRk3AjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDECBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790312433;
	bh=Qvip3Fzz87pmQcbY0XgekTO5eC0n5qDCWC13kTU02Ac=;
	h=To:Subject:From:Date:From;
	b=ODRk3AjQA/aPEVu1pM3SQM7FjkhDev6QsUoGDjWwZ7piytNSrpmQSsNJ5YOjdDuOH
	 B0OPxwoWJVyAtngz9qpwAPeoy7JovOLzuwEeN6CcX2kKGMbkzEd927vzIU68Brqc1C
	 G3SaqDJ9EAkba54g0CtccLJ1g5K50MErbV5nQ+mSVgb89IhlcW6PLUk6OxP2E7/M21
	 Z9Thbfsb6vbSOMB+szi3BjTQ7LMQu1kDdOGBApRXSRbS1hySCpQ87/2/62yqqU+f+M
	 q9QILO1+Ibc0WMdDNkSmGLdGJf4eKCV8EPplM6sFAiogE+Vgu6R9Eb4N/T8IPwji1G
	 kJH++s8mnnHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE75C98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031243369.30952.6297128602059219913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e0709d13989ccdc250b5c047395af7addf1553eca4e66709f9c0d8e0dcc3ee
Date: Fri, 25 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790312433
