Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57040343D80
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784288914; cv=none; b=aWAC+8MnFHDLVquu0rLkr4ML4rTgnXMhHWzzhalvm2Djf9Cw+g7RtszOsYFddDBA5ZX9vpMI8/SlJlv1L9xgIjcLs4iUPcHcatkrS4zyG7Vj/8s/UBBF1X/yVri8P/kNA6Z73LnyxRvXXtrZnBO3QJqAjGwa/CKM87KxbFtg0vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784288914; c=relaxed/simple;
	bh=dHWBnFgF9FI9c8UhhP/r5emxcuY4zSmaAWRwzeH36S0=;
	h=To:Subject:From:Message-Id:Date; b=MKaRuhURaZKhup6pzsKb0fWi7c4ijicJgl0fjrgb0OWtFsD8vXARF4CYrfZDAVfKP9KfXLLvdTPFeUtO2/mflUwWQwjSPwMF6JbpWtX57Jk7SbKkyC3WF5Ws32GTrxBkFLdu91Wfwi31Yw0kOwOuwNR+knUTpf60BNJNkQzN9dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIewPhjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIewPhjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00AFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784288913;
	bh=dHWBnFgF9FI9c8UhhP/r5emxcuY4zSmaAWRwzeH36S0=;
	h=To:Subject:From:Date:From;
	b=AIewPhjocVFCboKeuQlijX2wi60jaKcUw26VC7ntf08OanU2rrEtL7B/ng7Tpb+9g
	 kCGTUJk+7ZehMYNzWBFKnMzkkbDoG8JTSJLs/ZsZAGD9WEPktUyu0GmAHMp+HRBTFN
	 JuDeJi1qot1VXYvqRW1uikR+FrqGLDJsYGwQEAt2DVWS4FpDB+CxIESE3jQ9R4YZdA
	 nfR9NmOLfTfd4i3QjVfHYrItFgeU+e6yedjUYeT0F2XR0rrxJewxwrW5RtMTxFCshF
	 Vuco9MlH7wa/67QN1OEFgNioTyes8W8GeLvJYqb824SE8MqHP9noKRBnBtcs2YJ/j6
	 GUV3kLwT0765A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B7FC44520
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428891367.24970.9726834815752998858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2cf209539fe0a252a930a132476ba7c7fa38a7eafa025877aa4a14abad2a106
Date: Fri, 17 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784288913
