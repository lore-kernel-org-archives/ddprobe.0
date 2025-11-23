Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405991ACEDA
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763921514; cv=none; b=PHlBzW/n+g66nW+AWv/hsBZrI3BiT3SPfdD6c0NLsT/sZpJnEIDvg6F9nYaA1d8J+PTWqwTZKTeSMTTGSnbUSC6jdKL06jsOg1JZRfRE/K9MD1hU/bGorJf4IkyJ5Vnyr41z2g1+0rmfuECFkGOnwp9g8wLnQ2iMebQXWdTD8r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763921514; c=relaxed/simple;
	bh=7cDmC4rc2EK/4/bNBRV4Xql9CxUiaCFmLslIlo1uu8U=;
	h=To:Subject:From:Message-Id:Date; b=FbdUPcA3H9hVlHaeNW4CpUER94B4tlJ+M3Um4S2TeadAKYgYhJ+o4nsk0QGOUBJDUyeP5oYaNfYjKoQxZ/y3i+rFtCMcvfQjEg/TUodLsXY2Bdjr6psmRTHuZ5krzBgQRsr74fIrosAs+VPV49Yei9/sJJjTmzjgWbXnJeMAY24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIEZSz9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIEZSz9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC544C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763921513;
	bh=7cDmC4rc2EK/4/bNBRV4Xql9CxUiaCFmLslIlo1uu8U=;
	h=To:Subject:From:Date:From;
	b=SIEZSz9UrYztMchkxIHkOAadUTCKSxO/bNXDV05AYT5ZezQ/95YjgD2xjcHoDGNHF
	 il2CGokGGtGvZcAwPzjJ/CwGuJ92rBTtfLXSrqBG4vq7Vax5W7Smoq0StrAHE4vSTn
	 d0d/b4aCM2BSRT2knKY0nCnCup4Z/SnghZefFbpfioJTDYHFyIVW7oZWQHdlasb/BO
	 3PcHBbxklY+DP43d7XNV/uVv+O5VANSMaK5QeaOMNSuUqS8UyfwLWk8ZZ0dzmYD0Y+
	 AAKO7wuqK3DwdRMg3dRKCsY6pKD1IKjqitQ5sZ64oFEwBewtj/PnPOJRHjgcHWzRGm
	 ZBjj7XamoovOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998AECFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392151359.27786.11382397528744828535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363c5e5b3086cbcea87ccb58f73c4c7d3ee25229eaa5919b790f5ae44e377c09
Date: Sun, 23 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763921513
