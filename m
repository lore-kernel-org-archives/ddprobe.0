Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1687415B54A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717773443; cv=none; b=E4Y8x85zz671RQcZy3xMdeY+UMt21oY0Mn45HK9WDB+os2HKYk0u96AwbaVwMnlBzMxHHKK8jUROcQGCIvow1pkrejtIrcnebcRWUnNyTx5EyF4967v34qfquRtTlA6Oos2McNDvF9VSMwZrrkBdy6xSRtG/VNqeBICrwbCYSB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717773443; c=relaxed/simple;
	bh=3c22VsrvT749Fpk40voJjVhDSUg7ZOXNX+Q2GC8EuLs=;
	h=To:Subject:From:Message-Id:Date; b=bUuXEdL9JPaeATKTt4RV9y4fmV7PFuCSAb0rrA+z67iuy1iELZNGVONT0PIT9Pyn7W1eiyLaeCfzCG54J+BsMjTGjRwBthWHU6zuFN7FzzMl9Sv/AqHbmZY+NpIT7pkMaPyhAbSbtwnz9BLKGUZWWOzpvCPcV4XI7TJ1dVVeHkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxeQPtju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxeQPtju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E044FC32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717773442;
	bh=3c22VsrvT749Fpk40voJjVhDSUg7ZOXNX+Q2GC8EuLs=;
	h=To:Subject:From:Date:From;
	b=BxeQPtjutHmS/D/+Emre/7kgSeuLvp3RSPIW5Vdk3i/Xn4wyA+V1SBIdOJMF7Af4o
	 ySceL7eFMCTGLGm8p1n2mMtpdMALb/zyds77D1wths4GcSkOTI6ykT4JPO5Ud6X7oX
	 DvI7lv58WTxpJkj0yO5kbsPafdF+S5e5/IGilAByd7lBUJuElcnkZ2wXtkPNQONwpE
	 7+SrYA1kslQmTzwQSBDaUwrMGIa80eKFqDAlcVtnV7Z/OXUopWkLtKbC119lf9R3+G
	 tR2xA+Vfv1HpVHtS8CtBgHDX/XOGLF0hKGXrKgWLtDvW6SGX18ZtrJ2Qyf9eXoBcDq
	 Uc7KZoQI72WLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67CDC27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777344280.25958.17229455505082211001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943b345304b8c61990d7bdbc5693d72c46b9081fd38700295ac686bab8a82cfb
Date: Fri, 07 Jun 2024 15:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717773442
