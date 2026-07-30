Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2E23A7839
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785444034; cv=none; b=tFySpA/TBoyIJ6lIoVvczirzapS9/8EwQe8wh+fYXcb+GOzMlAtwBh6jlZO0hoqyFRRpKgCZvXXoQfrR2GEaJ9/ZdjZEiB6bJY+3YXva5AwrQLLsGIkjgyGnGl+CqjBf33qmWMjqP710aG9a2ODhAkgdbCn2Du1Aou30lxTl060=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785444034; c=relaxed/simple;
	bh=UqxumJk4bod1xATgCxE/b/iz4qkkWSQ7Iw5+KJ95VfA=;
	h=To:Subject:From:Message-Id:Date; b=ZDCEhep6/lHB6mHYpgNCei0XABLHJmckWrSUx9wUgntQ1syG23otdjfXtOJdvmes/HIy0/Hf5g+GBNSqfJX6EgdcngIEK3Bcdccd8zvOnqjl56m/GOG4gTiVigrhIMspjwnPEd3mu7aQ5Fx3g49pMItjQeeBiE0+Pwe7ZU/jhlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ncy7DbKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ncy7DbKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA33C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785444033;
	bh=UqxumJk4bod1xATgCxE/b/iz4qkkWSQ7Iw5+KJ95VfA=;
	h=To:Subject:From:Date:From;
	b=Ncy7DbKavC/hqYoC+QXTYii+F225y3U5V5ZafJV6HbpH+izHf9VVyBsQffpc242ZJ
	 cbVDBq9miCLMMwNBjTslZCljbVgPkj8Jw0iwlxi/Tx2SHrH/9b/I1sTAJLFCGu18eT
	 4HzQAr2+bt2oDAX4EkutFYmS2FTXvKu4LZBrtYvmBzZ18ygXcn8buyFqpVxUwN5qOX
	 UCObdvCnG0fCHunyIWRMPk/me9wo0ohiqJNoQwPGb0dtrrM4DLWiagNQM4I0WG74WO
	 dQZe/65+gtbAIUNDsDANM8nnNSszXYr6bSquRfBpQvx/jpE7cfEc4qJds6WhOpXRBK
	 Zmzl/zAsfoIrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6E7C5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544403368.22377.121102693524283681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf0e9586c0bc36042dee1205bca1dd8f689171a8e89b06e95815de2cd33ef0f
Date: Thu, 30 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785444033
