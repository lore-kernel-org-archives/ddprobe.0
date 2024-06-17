Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CCA1836FC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718615303; cv=none; b=gmq2HBnEKcR+UJcAIchRHdw4sy+7aWON9jZM3EfLNL6Z57J+uQtd4DxqsTITroZT4spcU/RVKqzZxyh85eZskdV62OjVQZKOaHJrcHzxSxsCXJrzwE5HR3NVrYNWDDGJ4GOVTXN/4FF7PtWR/+1VuldZupx2K+GFlbPviKxnVdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718615303; c=relaxed/simple;
	bh=+KEXE5PzqVNjF+tZtwyIVIDgT8uT7byvG02V81oQlN0=;
	h=To:Subject:From:Message-Id:Date; b=XncyLt4L3XUhT+bouWfmRcc0Sw3L0Bl2j1hMMqwH6zhFVpIULZpLi/vpnodkf9mPj0Jx+scTp7pV45Bp7v3zhjaHryoFTQ3Uxczwx7LIdTHaJs6yz6J8U5K8q2+xy7oTIHOU9YaZNovg2imlroPKKBppTzWIbiKzsw9N7UnQHyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmgW+8iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmgW+8iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 071B5C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718615303;
	bh=+KEXE5PzqVNjF+tZtwyIVIDgT8uT7byvG02V81oQlN0=;
	h=To:Subject:From:Date:From;
	b=pmgW+8iM1d1IIOJ0PE8AL8vWFtVe1EAl00a7belHFz+ybYClnDNUm2ujSiP5nnmcZ
	 aWo9HvmwCgqhLxO1H/g+U2XJFA/wPy5cGMSNv3kKuYEpeoL/KiNqMvzT5eI27eSGWd
	 75uDHrm5weA/1ybxilrOzZs2QTT8d5BAI8S57p8QmV+iH3k9jERTqXpt9V8BgokVfU
	 bAK1kwADEp1ICx8KIbrfhT4apLjD6x+8Pi5v/Dfr85w6Ns8oNrh678QCOTvrnLnMfm
	 hzJZC6tYNr55BROewAadb/LW0A7iYZe20wvkkj6a1B7Q00JqDE11Hk3L7nXW1Tr1s7
	 vNbS6KOmB+z/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEA51C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861530288.16343.13421469380272967248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03aa7129032fe78b0568d9af0e384a73a5c905aae30ea2f3bea1382cf6f0251
Date: Mon, 17 Jun 2024 09:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718615302
