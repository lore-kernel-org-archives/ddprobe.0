Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39749217733
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760264394; cv=none; b=COZPXP5ylT/tWxZhACBTJeL/vFjPwbgXmcbiMWivsCWIIBu9cyAZacxjAWSO/pStUiistd3V7kZ8BzxjDiNOYVAicjPn6ZmKHPsfquegIiM8CnUuYqAUUhqIAty1J9WIY2qHrg280BPV6AzNT1BMxUCpt9mCjR5iEPXEgaC5n84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760264394; c=relaxed/simple;
	bh=vG7i0NRFoI0v7JxreXWujUp5soKA02/A+WRPWp5RRz0=;
	h=To:Subject:From:Message-Id:Date; b=lIH055S9uRcpMGuvSnamquGDfIP/2e8ToLKwV3+VeTTy6I9ULlJ9hqha0y5xUM0Hzu2TPydvd4j3Tfmj1wH5acj7cjyucqziKr997vue2KQn+YhQdJiFan1NgKNlEy5nhgj99KGbFFXOzlEnkP41PsP8TEWMB1ZuFh2QYLrOz0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTyNNh0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTyNNh0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A957DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760264393;
	bh=vG7i0NRFoI0v7JxreXWujUp5soKA02/A+WRPWp5RRz0=;
	h=To:Subject:From:Date:From;
	b=tTyNNh0UBxYcgMq95MtSyik3v3uCQQdpmHDx01N8+4ddNVTmFt0CFCyPmYJtxpkIW
	 J4dmiLsNOdmpQaAsSwg26ekfeTOP5vb/VzjWhYir6IzqpzIiAuorQmTI2rf3xdstZT
	 71Q/n4VqTc6T5ACY1urjPQoRTjaElCa9pKysD/bR2VpLwv8pFy4ROnNmNWsAc1rFJS
	 8HNcvUxTnAsMDv68G0aCI5JR8Y5RdM1my2Iz9mqrftPfBXlrXx3ffvRLSr+AKWszKX
	 QYj0UTzLF7Uk84tB3r4uf8GZBag3OXjzTH1UebzODCm6IYBWnpDV7bFN1Ozdmed6cR
	 cepC3G/x7SphQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F5CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026439358.14767.9901631943062706301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c3cd1272b3663de5f1546d7ebc399e5c492da4f31ed1b0b711bcb9f4404337
Date: Sun, 12 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760264393
