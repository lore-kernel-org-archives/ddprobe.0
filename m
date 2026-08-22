Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E369272E56
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787421634; cv=none; b=pvYZFSdhNeI20m9hXrFDdbDo+bkaXYqHmiysQTpHEDA2peQP7aJt0ACEY053OOMlMtYWZhZfSvDcCIhYvaFzfgQ1BCxKWbbAHc0/g4bQBamAJ+vsSBFhNQejWrtQUZfdiE0JEpTBTRyNVcG3G4cWhLfc+ZYhy6BO4ibhRE/gNi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787421634; c=relaxed/simple;
	bh=IqSoJ178uY11V+Bwu5FNckMHKPd3C87OPHcxISI2Usc=;
	h=To:Subject:From:Message-Id:Date; b=V7u03RltYEyHtFlKrigC0nABNJjMogmf4JaP44sj80GfuqjW/0WKsGbsA34iGOsfYi2utGwq8iokmsZT1P6H2yB0xa/6AKGqRRniEJs7viicrX3Ds0prcGDmpmOskc0N7eIongQQJvRmOauksgXzu7iP2JPCdlZjCVXqNaRGLhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmvM6xsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmvM6xsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF96FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787421633;
	bh=IqSoJ178uY11V+Bwu5FNckMHKPd3C87OPHcxISI2Usc=;
	h=To:Subject:From:Date:From;
	b=PmvM6xsdsTbuCqkF3JHHaqcCbKW2pYtOZoWN0kHELDRDopitmYpGpM641nfA1wgMl
	 n3+dNhc/HIu8mfa3zfflYGApJsV3mqGRz86BWdZ9s8YmFlAhUW9uVNx3kukJLvPvQB
	 WPC2EE0/Qe3YcfMPPcFvBG0MGuYVorWBvvA24mSn5Nfs/KQlpO0kyZWnwtueEwlRat
	 SzE9ebrNvnXvKVNYQ8DVVfhGcvpe1WyxWDU0thVp9KdPwSy+MKvEX8FWVzseTamr8n
	 2zv8clqbz6HJDEkpu/2xkpAPoRHC/TNUH+HO7Itg5eW9/exM8oERKRoYpdxrSu99y/
	 dGNVkxDqRHgQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EBEC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742163370.17085.17809990119593334956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a67d3232ec5ed98236c1b79bd1b79b440562dec199f9915479997a17f529bc
Date: Sat, 22 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787421633
