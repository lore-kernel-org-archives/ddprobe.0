Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32156288B1
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728168354; cv=none; b=ttNlD+xLQPuHokrAUOMVCknUTBdX8bb9Ga+xQEDBvEVKzvljhA/P6fI0io/Pqiw0koD8tjBWm+qnNrW2ubGhFBaSBvNQNrOf71UGjfi8y1a962zsPS3Tw+BQteCU/5I/Ep5rbdhzzbRPlNKqkLLdhLsu2//ND2KXytZqicKqLsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728168354; c=relaxed/simple;
	bh=mJ15VC30eIbY8ngrCj6hXsf0aDZL+zrmMCcxIx9UvkU=;
	h=To:Subject:From:Message-Id:Date; b=tpPOAqnuh44KPK+NjiCcf2eT+7/XfaSZohCjG5F0R5jYlVBZ9/XM+IytUAWUAyyHSKAxxpYo8xIkp6NrBmWzSLnlASFBWF3U3YfgBIqldpg2xKK8IYW11QytZPIirWoLM38iAGkdzLYeSilvhPzTUgqrn+1mQDiEJXK/DJyAVrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN63ATpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN63ATpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC43C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728168353;
	bh=mJ15VC30eIbY8ngrCj6hXsf0aDZL+zrmMCcxIx9UvkU=;
	h=To:Subject:From:Date:From;
	b=JN63ATpwltr+ZxO2SV7T0Lw1u8BPWYF1Qmds62G7IM77K7bX9kBRb24Tgi+vRwWDE
	 h0q9/C0nlbxwZjmXzyliyNvDl4y7bARmiCwwSz6k6ZkTNs3jxKCA+ojgLLG7cRzX1A
	 R8s8pUSQbh94eIEQXsGivdef1SdJx3Yfj3qRvUi3ONRhNmWEVLyYiF8Wa7cxGOjkeP
	 M5pHvuZMtVVM8pxBwrWiyZTvwvPPpaqcru2KvhAGOYhc9dTuidJHLG+BbJxW6SDvrv
	 w8ydXpdb5XH79h0xpF7nXF2mqtyuZrsc+p/ppTAJ1IbNnNBDWx2NXt9fIrI2Erry0B
	 jEdGKha44CGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B279CFB43C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816835360.17755.16837340702423740685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2972e545ec2866f70bd6ba244de934c96d8b330744a6c77cee0bf8cf2979ac5e
Date: Sat, 05 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728168353
