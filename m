Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3C65C617
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707607697; cv=none; b=K+69B06H13UM4NAO7Y8YMjBn/LOXcnanfMRI5fVjJWn0Q33eXE2yDWoSLm083g/LoF2/sJdPphUsXEg8VCB68vuf8h+UMXH8OAC8tUoGkQ4xoLLgdQAbR0TsG6Y1/3g79PTL/hPoj4RV4NY56bKzv0zNL0XJVIsfyYl/x7my9DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707607697; c=relaxed/simple;
	bh=IJiM1yW7QKnuDjZR631ibbjDAVZFebUNPGjFgdkzqU8=;
	h=To:Subject:From:Message-Id:Date; b=AdyURdS0C+eMdCZCJpRK5kTpD93FqM3tBXUF+2KsXYlaDAc4vfgBucTpJ/cLD9WiIsnXpEJXfoNqnPB4xXKtvUDZDNya+5xPTdXKrxNrCprgQKFnqAgAp0rtyZUr7RnUgJ30sDrJQbwv57RPB7nxsSoWDjN1eXD3+DNs3AqiIH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS+SI655; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS+SI655"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B246C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707607696;
	bh=IJiM1yW7QKnuDjZR631ibbjDAVZFebUNPGjFgdkzqU8=;
	h=To:Subject:From:Date:From;
	b=NS+SI655R8oh8STN8tTIekhKbG41IpBLF/ZzDmSdYUUY9xw2ZAJy/lzR2T+juBMK/
	 Vb+CalAG+Tk9cbwNxwVDJNVrADXYB2LvFX8riqwyW3lDwdtpR5Me7CKCZUaN/Zcm0B
	 hnSwXLMPGkMT6mDaUM7sab4lrtcBs0rXEQeEIRuIXiDqwFEvWxVgiaPuWqxTM98k2J
	 CP1D523LlmLB/GB/LGSagBvqInKINS53bjd7wZ0nGQQleW70VTgtQBMrJ93e28Rmew
	 mg1BYpHj7tvxjjKCH8mrbsKsHEELUdhM03LvMokKsUFaGs7Xi4TVEF6epUj692REA0
	 DKcPjzevbGlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7FEC48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760769636.15127.5971006568211420747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20808dfea9a8e3c4b86ffe4bf04c91b4fa0224eec45380d9d1a2554a4b8b0db3
Date: Sat, 10 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707607696
