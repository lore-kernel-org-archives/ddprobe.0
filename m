Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAD23741
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748130595; cv=none; b=vCaYw6znUi7Q2CzQK+zfRaLGeCN8eBQ8gdPxRP2Ed+o0enWeEcjQLQHPW9EKIN8ojUtraX54dV5hVNdraXbieqhW4c/faW7b2Nr1WS0MQsGdk5GKqp9qLRdR8w76jT9eQPtWQqw/wGmrUld6MOifngMjMVbiN2GKEGAfkxfPIqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748130595; c=relaxed/simple;
	bh=vcs4qtonLaZUYXzBSP6D4CH5RIdRCiEsGdKDVsGAitg=;
	h=To:Subject:From:Message-Id:Date; b=SmHRFxFExB62YqpB2ac02c7W9PFTh5B7NZPdOW5/KfITm8CuHmiYMIQWkLIQGWnWNr7FX+1d0GrTWTBkIJc84a4SsEzuO8OZTMbq7zblo/b8eAHAW+ggiVm3yqaoLL0QWS7BOIL27FV/mMtOaWdKrtqtR80V2dC3KFd4Ye4MYko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTDKlVzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTDKlVzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748130593;
	bh=vcs4qtonLaZUYXzBSP6D4CH5RIdRCiEsGdKDVsGAitg=;
	h=To:Subject:From:Date:From;
	b=RTDKlVzXy+nhSRzsBUfUu9x72JsfWLgKGS8MJ+TCHtglw1RgKPKyQLodgHJePEu2d
	 wcLBVH6RZf4T8nWoVB024MAuO88JOUtJqEv/o3q9I4GK5eWPGsd5MwYLbKHyqfsNUJ
	 TqqwKGwHvGhNSO8n1D+m/uZHrh8RG7XQEjEl6WkmPNG9wOkiuK62LRjn9A7aS3VfCf
	 Few3GFGVAvTjC7j+KE0BFYDv0K8LUyBH+PT47HaHr3CP2yL2y25nUEgA3Qq9JKSVhH
	 g0Ine/NvzcCkT60jsI3h/vsa0CxCpAsfpTsAtqeUxunwuRPU//CytpfwWRVlF0ROd9
	 bdh4zlZF+naew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C9C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813059357.16531.3068937275176487560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2ee77fb493c82f78dbfc696c6d6200a29cfb588d7b9bf4f9809fe7ae1d639e
Date: Sat, 24 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748130593
