Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66A43597C
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752895193; cv=none; b=XLdk3R4O94Hd80Ono5aArn6MiffHtoWvr2QJYzKdZ43WS/5+c0x2Y3LZA0ZCEnWlc2N1G97+DIom9lGpHE4ojR6PPKKIYA/uuMbbpcaGVqhGeVnmxX4Cf/yPcbr8G+B/+iBlbhdRdqBrOr+7Vc4BwIHJ4AyWbINCVgBY3IR5+hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752895193; c=relaxed/simple;
	bh=zm1yUFYs431I0AyEuRoI/PDjyoNSo22vfsW+CSmKBHs=;
	h=To:Subject:From:Message-Id:Date; b=mnKvS33i9AzIgVFV50wQcw4orUb1x3Cz3gaRDuFl7RBDpBs777XMDUuKDeOWDsEwpe/IkNwTTe31yUecbPOdauyB7HnikvmX3W01DKt6Ozde10vFFRkDKb0+RnT42thwpIRtEeya11vdB9LHf6mItoC3REJdjnvj+5lGxktMHME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAXWUPUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAXWUPUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2740C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752895193;
	bh=zm1yUFYs431I0AyEuRoI/PDjyoNSo22vfsW+CSmKBHs=;
	h=To:Subject:From:Date:From;
	b=kAXWUPUSz0Gey9LlXRjJOA2TUTglJTV+SY7CbAdo2VsJ6lybT+FsWcX3+F3RZhWyJ
	 U66uzIXdRrhEfINa2SViHcxx6EbGUJ9Pb8kLVTAU5JzeqSDiQKBSXNP5pZxNlgOoFS
	 HHZ0/pyaXTz0KGOr4qDyR/w5zmafY9RQ+fMtY286wAI2r/9vA6a2FHSpR6fM8gNOTO
	 wVrFktWWyaEUL3iyzSJ/2J1KqmuM8/mT50+pWJIx7Jtd+K0p9GpudPG09WoOPhE3GA
	 NNCL12ickzAYYGeqcWYfyfwg+CfoThjr6B4cdQlhr4vlmuOtjsVU5FpBknxmnqv7yd
	 9htsZZE0k6l7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FCC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289519357.3805.1039516921967737540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129745a28e2bb6d7030c13b3a0fad23dcab28810db0c0208be43ebe0300aee37
Date: Sat, 19 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752895193
