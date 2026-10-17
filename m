Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5133C32D0F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792230034; cv=none; b=q/gWN4KppsCxo9nHekJ9rB2gA1GeSgzEsINy/o6iioR1+Jf8HGfvzGOuVGwQI+YVRucUHcPHWqxjXMQrsTqAvAAqDh35S7CGZtajtAf2rVwSxGqFEMCYCetrbc3MPEUTpv5MA+zEY7hGYar+woBfyyczJjqa9ZsY7lo8U2n6jds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792230034; c=relaxed/simple;
	bh=Cma/nN88v5FcP7mvDvCkga6KAikE0mwpf76uXTMw8wY=;
	h=To:Subject:From:Message-Id:Date; b=DTWWD3A/8UIvgPjDnHQ6AhIZtRbIfROiVUNTlw+AZ3dhq39RJz5zGwkztpAVdqEGr4fIcpzToKYnbL5MOb+8WJx0ALHHnJ9Hbx7B5ll+4ojqSPgk/dEeAWt9mG/sfyEUvGUEXH6GZ1PxvbwtTE/ldWVrbZrO446yjq4ZdVvBTU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaGPbRYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaGPbRYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FC5C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792230033;
	bh=Cma/nN88v5FcP7mvDvCkga6KAikE0mwpf76uXTMw8wY=;
	h=To:Subject:From:Date:From;
	b=AaGPbRYwM3COqbVrK10Nw1fEtZQDtg2tyOG0blUyNWFjytYhl7NlwMGiEp/v9b+Eq
	 jpnDcJGMl8PMprVYbZH86lKBtoUMM1yYUkkHtRI3kla5iTg3v61ICcXXlp46LVLKiW
	 YaQYiY1tYdQtS11VSEifwI5NGycgbKccQ/Q/CR6TbcrAJL2NIeZuVCaV7tNvwNvIo2
	 EWHqGJcCrLIyO1tiRDd5MZvFXIuYdRxh2OVLE2z/7L0VMBUyVmoBzkNtfuPFsBRbAD
	 zzNLiUfrMYOxSPhlfy7TT7qJTq/HqlnuGr84Wbli1JrT94U1I/edRSq6mVIqERaFJq
	 LkgN9hsxZvOOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27ACCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223003369.11766.1981037777316332873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b042c8ec35cb99b0bb0f34d0c2ff747a0ec96775aa80cde5f6caf80f8a30289
Date: Sat, 17 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792230033
