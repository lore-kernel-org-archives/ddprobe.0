Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517AB347FDE
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771444494; cv=none; b=SZzaOxpQVk6AMhEINVrqkBc46XC6XpnoMCuq80Q+xA1oPFqy2RHNs7Ohv8Tqh4uIFxDtuWaWQDuMKi9gbuF53suSm2ZsEoPJnzJ/oI6FQGeL8hYSGqQtlxj1IlWMLy+nWVa3rnLKH11UgYd/kdloAyLFheDONXgpEcAcFkMDDLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771444494; c=relaxed/simple;
	bh=9DGEnQ7ehekxmzn9Z/VbtFRtc6Z9K8v8q/aAIg8uomw=;
	h=To:Subject:From:Message-Id:Date; b=PJRMYwjpZJLqGgQ1Z7JpwTk3daZNw4Vamf+LTnodPcfSGDdwihxq9MLQgr8s9SvgUmYNdNcT1UKrpOWGjTDiUqeKAzOLcBUlZEdizUNDZSAoxBCmqSIHbepnhH+2fun5vzO96wfKfZ5FOK1tPMInImxmxYQhkpu/i/nB7MH2QDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5VV4Vzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5VV4Vzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0522C19425
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771444493;
	bh=9DGEnQ7ehekxmzn9Z/VbtFRtc6Z9K8v8q/aAIg8uomw=;
	h=To:Subject:From:Date:From;
	b=h5VV4Vzn1cugMR8sEPXauKmpCyRkXKmv9c7P3nLPQEJ3HwUSpc4UMKSLIa6tutgzI
	 oY4RvJbsFXpFnTph1i0yWSbdfpOFMVVlqbE2QEsH9wEhffh2HGYSZjGMCZuNSPyj+I
	 ATFtG9jWumeR2KbAULoLadSMxVbH7CNCbumvrFUmfjojj9hzPob9BWAxQMrsI24uzd
	 Au33671LQ8zydBb1b6qryllEbgr40TvUlRQ5NDjWkhRG91C1k8QiUI/puYej8q/F6m
	 SREYFeRzFnmsRWF+vF9YQ1uz7LYW0sG2HRnFKVFhVEKOFp6Z5SS6J6FbGuXlYo334U
	 eZig952G2bDjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9818DE9A04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144449360.8544.10151834293142124023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec8f9b5dfb5cb62388b1a040ab0009cd3d4c704ea9867d48604b4665305b057
Date: Wed, 18 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771444493
