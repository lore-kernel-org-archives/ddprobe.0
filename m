Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322CE32D0CE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761656394; cv=none; b=X4RU4VQoq/AEPeQ8R5Qg4HG3+KDLIv+flW/Zc7RVmhcA4sHpT2WoqmNDT8FJMHJreBYuTpW4TrnEmvyYXIAbIUofUPOcTCVBY6i43z7a3K17EtBgF5VpI7zefaNIMGi+0MFJq9117hzITWIoCe4qoLekABf56rAJaAVGMLENK2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761656394; c=relaxed/simple;
	bh=/pvbUMQ6RwwBYHoQ5VxXVDgeTg5LlM3xgf37+9BBzJ4=;
	h=To:Subject:From:Message-Id:Date; b=XkgW/FBOk1VeuRhLngy9y6q8qc54mE9YfUdzC9lsFBuWjTgt9KVCujoWHKtNcPeDprlQ3TNkrOJ++BJ7nOcLZHF4Zdtv5K8aS/xL3xnS1bKY4m6T+E3R0ZBuc/zu9zQfAa620qkCEnURdnI9eLiJ3ABWsnaakuraSxqBtI5gmcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPbCqrni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPbCqrni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761656393;
	bh=/pvbUMQ6RwwBYHoQ5VxXVDgeTg5LlM3xgf37+9BBzJ4=;
	h=To:Subject:From:Date:From;
	b=aPbCqrnijswp4R318D2YG1w6zyajnPhMHp5IQ97b6e+6qI+uTOQvlgvRpvH09VsvZ
	 42+lr0ECYUbPJV203RgvowMVPZHPlicY6GjsszA4c8zi0HHl7jjeMbNXkZXCTZu3mC
	 Fs4HteKnd3+KgvOM+6CGfxtFo6TwUimx4Gs825puYM0XPB9UgLRIe/Fh4CBzUaAmyz
	 b2+nJ6egn0gMSDsQj/d/5uMsOIEm5HaR88ozTDVxE+6bhlbtfAkqJkix1n1PymSWaI
	 BMSpR7fSXIF13pBRuupMydouEw0X5fi/dgadC/QaDYgQa1I2PDntFZ0keI6lF0SVgq
	 Uf6L4O8mfnF8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0FCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165639358.17564.4103377846630269440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad7daafa3bd76ef3e895d66c2263b85a8389228c0614f171d482a3fd41b32d4
Date: Tue, 28 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761656393
