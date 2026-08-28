Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B32A36826E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787949034; cv=none; b=hR2IxAhdLGChAAP3mHtUpVEqNoymKtEWwCCzjNXcitu5M2DGvh98wISo0seYqAE+5hf8wce1a537Qh3dcNzpbDJbUSrLTA2/o6598CISu253qYR/VtGiAWahHne5BWnWw0LfXSgtGY0jFMHE6nMSUztUJAUz/PXJ6u/EIjxGMCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787949034; c=relaxed/simple;
	bh=DSFzA0DAbqeXoynw77Nd7H2yCwOmM8ppl8/waoZ7CP8=;
	h=To:Subject:From:Message-Id:Date; b=n4XjNrI3kARAUox5N6nx36BwMv1HXa5dq4EQdCQfsEns6PoRbeG5I3E+z53VRgKavbptNwyre4nFC0vD28DcCgI8L68tpJm42M2y2j7SyHkuYECQAj/tn7EETwqJf5hZtCmz4N9Leaie/df8KBN+i7AzQ9YVPIonG/KYZr5WnWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0HpMGV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0HpMGV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD978C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787949033;
	bh=DSFzA0DAbqeXoynw77Nd7H2yCwOmM8ppl8/waoZ7CP8=;
	h=To:Subject:From:Date:From;
	b=o0HpMGV9/MArC6BVf5fDKB0nRX0zG5gluPEBQbdj6AeIg42eEuY3hhwCVsgz0YNxH
	 QVjsKoYgzmFQQOj2hPiV96HxxnrSN42MCHn+gMFl4mrxceQLwcwtIo5Xr6QsHNzs1s
	 hQ/3rQvbL92yyu6BWkXunEask7V28F/o7A/D1e29kSUfb0WBRvWDAEUBAxEiAcjvF7
	 /tIEW5a1j2NOc5cO6cVS3tVGghkRemEwOuIPXnD7qK9f4PvoTAg1uOp3naujAR88n+
	 4k96x3YUgpBzG94RisF2awzAv/spopPygPYKbVMb27OophXji/WNI/3lHK1Y4u3mRK
	 il/Il+0pVYL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB6C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794903369.28406.12515251136747356542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce1f1ee49085dfb5e141c37005f9917981318b0429530f415bd48bcd9c64e12
Date: Fri, 28 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787949033
