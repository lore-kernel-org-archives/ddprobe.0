Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21453155C82
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770264234; cv=none; b=kceWlMP3IwbV/FOSaIqN4PnhKhl6yHUFcpz2dRXm/yzWhetC3zCI8nwxvrJN7TzgHAXmajL7r8MuVoa5k2VTUDCkR+qHBeVsOAX6IgqKnxLZW7fnJRpMRBPKhLb18OB4XtsxO7Hf6o63XxBCyyf9tNBgLhftPMwaOBNM7fyWSlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770264234; c=relaxed/simple;
	bh=KYRohJ/XM6TBZ9rB8EkfZKMft9sVcAH4jRxc4CqPmi0=;
	h=To:Subject:From:Message-Id:Date; b=K3woT2Dw6fOEjt2NKBSe1gopL3HDVDcZC+zgrP+1niANs9I9sUM/Z36X0cUjr2f89+qRa96CFmQZQMaWEn3LBQZonBYlvAAeQkdiwVl+iA1+bsvYeS0AOaYgc3KsnIBY+OUemFdDCnU5BQjyhvGDUdkreelbMFVC24jysevvqTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAVBj1Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAVBj1Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4E9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770264233;
	bh=KYRohJ/XM6TBZ9rB8EkfZKMft9sVcAH4jRxc4CqPmi0=;
	h=To:Subject:From:Date:From;
	b=cAVBj1SerU1xrpBzr23gj7VZ3HzKvfgnMBOvuxZqK8v8zEntU7ovY3WmZx4QKtiju
	 49adUJsUgXMVftCvaS38O8Kedxcs/1fGICHW5D+W8NWHc5VW2MullVJYIdCjT+z3Y9
	 a/g9pKXw9Y/GVmRxwM8c/WPoG3w1HWGWK657NTcSkjgJGcvV4SAwhmnbCzuVgLVCgL
	 l29ZTJNvv1VhOB5WHnbCI9ERbDC88u4tNQPzKCL2oc/bRaWoSyB1GK1/x3xB00/UA3
	 4oNj1navaCENhWtmNxAlSiKI+eKiNI3ETTIvC3A0do1Xtn/RVzc4EHJfFZjMp2iuva
	 n10ozeADGZ6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945AEEA7961
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026423359.23445.10170196107696246009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb62b879a9ff10ef3246b894006749e4fcb0bc575d0bfdf146c6502ddc5b473
Date: Thu, 05 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770264233
