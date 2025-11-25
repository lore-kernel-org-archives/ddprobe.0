Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8C31531C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764030174; cv=none; b=rTDDD5ImoTJK/SKhDaH83EZT82B/jOs9EZwtbonDd2lVsiACS2vTdA2NNnOAWNqYaUQ9INcVDwVMT/NSLLganZuskMMa8fAYhuC4mRd7iBjSc3aG1ihsBw8MEcSvxilNnFbZKNyTcmaO4aIg/nVybkxOXCHlM8DHIGLEt+JeOFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764030174; c=relaxed/simple;
	bh=4q8JwkKPTOPImaceyF5CnrrphvSkQ+deY/WinrvTBxU=;
	h=To:Subject:From:Message-Id:Date; b=nJMu9+2tTwafGUB0LvQBm8x2ZuLFcL6nnSmET0tZ4hVSKEvW0Rm79I116nldr7LNptGlugTDbKQHwDRBKf6GSiV7iwI0AMXQRZHAhaNJTxDb6z3xDN4AMMmX+bKWmKIqtkdLOVeI0C1Y3RA4AdEGm5kb+AM9NaKQEHgANrBIv/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js6FixkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js6FixkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA34DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764030173;
	bh=4q8JwkKPTOPImaceyF5CnrrphvSkQ+deY/WinrvTBxU=;
	h=To:Subject:From:Date:From;
	b=js6FixkAUzNvzZICemkSy61Z9kX+/24H3PXr8AsSNOS9g+FPLcKgSvHnYdQBIEddk
	 5X3jDpBs3QE9THIt7tHZq0x3QdSpI4M6TBHBkGEm0SbF3wSXCPgRdc4Ki8dBMCPAF8
	 67KPWqVm2aYsC8eihsKKMNc71RRxEUAZgIy131kwCyw91z745kgvTPUjwn+jVsO4JG
	 R96VEthFDvI+Ly5Q/hDLR2vo6fhqw8zgUucrlXyOLDyhtsGq5LsE+VJzILw1QflDnk
	 rGKiMsc2ahjCleV6AXIFbmUYo7jwizguzDoPhv3qg2eBkvbVp6X5v1tbL6opcIww5n
	 CndzNEPXXdu8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97137CFD31F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403017360.16581.3989541510529867206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a888bdd44294c9166990ecc7042fc7873ea5678536dfc0ceeee588f93c842de
Date: Tue, 25 Nov 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764030173
