Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD7D129A78
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744702794; cv=none; b=uHUWlB2vU95shn3F4iG3woDTtugyYdxmWTT0Qfg3TKIOxDKyLxmHtPtz3qecrVl4dj54P7fzlztIHA3WSix8O4NetIOJp09/+f+9zAmPj52YyAm1dlOTrwoj+gOsyLSrw+TQgaybA08fqbllPdOoTEzZObWZgCWyRxiAsMNkrRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744702794; c=relaxed/simple;
	bh=vchhHVDBO7V4dVMSG2RGnZFk12m4/oyqHfYkmXeyCk8=;
	h=To:Subject:From:Message-Id:Date; b=EaqFc/qrI6g4J5gs585U4YSb1sisGcfZjjd1zPxxWPpUfm7LB602CSUxWW4rRO1A3NNBDqLtyp4yWqyo7FewJ1VZmdMFfQwWAkna1dTj5oplOUQaLUZGv5Rc82Zo5eWZxSFPjwfuyLo9xZeBB09Gpe3OLJe+SrCLp91WB7aKZXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNCLbKXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNCLbKXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BEC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744702793;
	bh=vchhHVDBO7V4dVMSG2RGnZFk12m4/oyqHfYkmXeyCk8=;
	h=To:Subject:From:Date:From;
	b=tNCLbKXaahiz0nxIIJu/+ebdW1xcITxH5D05thokODvFBk5CRHFY1LMQsx7Vu2s4H
	 K83ob+nEvvZ8N+dFpRLjHU8ysccfI45k/vXVe6L++Ijbryphge0Hs5Szcl6weH10Bz
	 CU+y8BiMykyKtFtpHHhOek0lfiXw+D+CnaGFhAj9v4suf+YLVZ1h1WFk2L8e/sujIx
	 l9gm0hTkUt6/tpGbgRq0AkdDhyz+34pCQaZ4ci52ZFacrklgeJCVZ662jLNAtGYRPc
	 PDxrj5AQEqXLFg4Y8W2onvHq1+6rP8Ul8nPGQ1g+L9Ildcs2X7U+nhTi+W8yPs+vE9
	 ayth9Tei1ZoVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD8C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470279361.6068.16621111071086954535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6076dc65061f572e9c4e57d9fb02a1d26e89154f48f22ce8d1ef18ff8ccccaef
Date: Tue, 15 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744702793
