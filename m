Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E88B45C0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766817234; cv=none; b=IK0QiIRmp1v8IzZgq6fYQbjgBSyxHuLyiIL6zFVOKZVSN8nWNFSgAvNItEIRUrhblwa9DiiuRoVfuiArEhJlWh7ws5fYx7TANgIZYqbGFVqnTNhBZMjytF0GbjrW7WPwZfzpWULrwwlaoc/FP1UVB8UeLuI18CuS6giRpDrqAcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766817234; c=relaxed/simple;
	bh=Tw4mLDkh46HpR3kpocpT/95ITlAOXTk9mmEfRZ/zzR4=;
	h=To:Subject:From:Message-Id:Date; b=NET9Ib9VyIWBjsQvO+9XRG+b+LSJT+pv6uLbIx1D6C6SkOnZ9fq3PdMAN9Z0ObdXpYI4fAWd3ymstZfX9cxovhy6dbLiTzSO/LzDfFpciRt+vND+zFIihOJuKJRfXKSViEETVSY9UlKWQa838Ljv8zqq9EU/A0lhDeeMpfmaIno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjhJ4X3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjhJ4X3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766817233;
	bh=Tw4mLDkh46HpR3kpocpT/95ITlAOXTk9mmEfRZ/zzR4=;
	h=To:Subject:From:Date:From;
	b=BjhJ4X3t5QpTpzz9FT9VB9NfabROKDoit7cn1wVE1lAMqq3dyPBfd6ox/REolbGpg
	 2phI+o3Q4l+9180SE4GQvRVS3HK+isPQ9Dld/rfk9j5naZnDB66Nz+f2eT5Mhc0mqx
	 pGePdDavkzjfk95QXUDLWK2jWtqx7ODe7ZqvTVum+5toEkKeXy2N14kYL9AZwXOnam
	 uKa6C7njfu722wCiRxe006cx905dJFneEmPY8tKwoQUYfUd9ZphVRhDcXm4eTbLHtJ
	 1P1UqtEE45Q//dDLWMLRF5q9abxvgFbfwIRPtTuvV0G1UFQfAbn5XWf3C4okTUyAqo
	 vSRtXvCzng4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A2E8FDC9
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681723358.28954.16827287073231827122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7291f49ff8bc9d4a023679281463201f6c43af3261333126ce7b7ec5d82e64d7
Date: Sat, 27 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766817233
