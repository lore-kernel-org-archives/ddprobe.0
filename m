Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E8540D57F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782611314; cv=none; b=l0x0cSURwb3Ge8CJEHIBnNUn0MkKIm5HuHb8c9QmN4NICbZLqDH8XZN59DctzGURpeejndPfhil+1/yeOlGBH0lZxKtVgL9cQI3BLNiAVyJqLEHbxnTWL7POUWgWhR0+yDIpElOec0UU8H04VmntxPPo76y07h670BJ0YndGoNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782611314; c=relaxed/simple;
	bh=OR1S6vr4GZr6zoiTl1RzAGbEyWVcD1bE7opN2dcLW4g=;
	h=To:Subject:From:Message-Id:Date; b=DknXfjGuKV74+0PAbi/QIn0VppNV5QWch7fQu31t53E/n9pJInV9cvoEcN/rYa3R9KeHQwVVmupWTB25qiA88A/nEZG/OxyScFcx65aDprHLLnk8MBKzDTU2AxMcJLqU3bHzIHPkc03xk097r7rK07H7L8wEdvHUXUay3+Dde1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH82CWNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH82CWNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0410C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782611313;
	bh=OR1S6vr4GZr6zoiTl1RzAGbEyWVcD1bE7opN2dcLW4g=;
	h=To:Subject:From:Date:From;
	b=GH82CWNiUNIwsTYtDYXxQNI+xaXLmAKKp5GKaG8oAUh/jz+LcVuoZV0D6VtfvWDys
	 Z8ZpgKHZqRJk2lNyf1OlDQYbmIYjexn31nZnl/mZ5GJj0d0XMjrHKUbUTfc9mShvUD
	 q84BpPz/OCvvo3aPe+Jg+CpGx/S/AIrv0bRqctsw3DVeyzHXUkWTRMMjMr8nGbbAcI
	 vLZynWhkZ/cLC7cvuTn5eUvTSf1Zj2pEzkSY2i33kABM4fu+tSeBH02ynMOfFOtFVb
	 Reyi6J3/owvSBgLnbJzx4xFRwkxr3vjVaQEgfHfJOUoYDxI71eyK59CThbDICQNNTo
	 PGkZLaPrZ/i6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB46C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261131369.19727.15146788082889831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecc3ae9e097d5d80f68fecd8275b5d124b3f2672716ae4c138ab98b4fdd1e6b
Date: Sun, 28 Jun 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782611313
