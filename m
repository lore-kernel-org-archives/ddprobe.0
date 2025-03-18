Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7911DE4E6
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742330994; cv=none; b=exvMmlaaahIK/AIPGxZokXh8vZ30xChEJ4vodE5PKVxoVr1AzOg85KQogNme8MesxICo9gJ/2OO7rdODdBkMJntlwVFfsU19eD/0TqV9MidhLuyaTtrzPTN6tFLRr0JegftXcJvdPRQWNU+56Cbu0K8AHF2wZN9XfLE5PkUCZBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742330994; c=relaxed/simple;
	bh=m8ExKqT6IPNUiQIlx7d688nVV9LFCHbAPh3X3n4gCKk=;
	h=To:Subject:From:Message-Id:Date; b=TAbzYAlWH7A48HIc3HWMHCaCjP0sUsohoxbIhH0YInyrGqZysJz92JNg0jYXrbrYRh0czNV+5sPnZwZ0kbWHPdKyN7h9SDLuL9SoQ5zE9+EFOaSuux7Xvh4945LnKH8A8GMWVRcs5IfCkQuUdxxQykVFGV6F7c1CesLMTFCY/8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Grirjf+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Grirjf+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B09C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742330993;
	bh=m8ExKqT6IPNUiQIlx7d688nVV9LFCHbAPh3X3n4gCKk=;
	h=To:Subject:From:Date:From;
	b=Grirjf+dKB+ojSgcZeR9q3nueY0VtyBpEcWotuHvvPmlrXiDVgRIU9rElyQ0S5SZX
	 e7E1kmZI8dhc/ZPYLySM8Lw2s9qB+uAf+0fSLL7Z0PameTY9n7UFFyr5+H2F0SW9gZ
	 Ra8DXBj2+gm9Pxm4phla536bZw2iY4lim1V8qr2he6yEgCuyFRUQZ1i6bnYmoQzbKK
	 3iwVXn4bAaBhDhmolWy2lP7LWWlcbUWqmghmSREbq0tAGtTGB/FnXnbGB4psO6bilG
	 AMj9Y908vAm6/7jlxn3tQC1MgXkmA1Dxi1C+cI13CkIHPDzke1ip4mA61e7pgKRAJk
	 IuCqdcCG2pdBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233099367.28694.16964539782921949543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1bb2489335675155fc92f82537e50f69a673b231779a7c2c998f09277df7ee
Date: Tue, 18 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742330993
