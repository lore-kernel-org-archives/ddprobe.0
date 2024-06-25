Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C221170838
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719327803; cv=none; b=RQC/+PePrej9E8I8aDWGs3SgumMvlm24kC8a8Wls5k72EgGWt6k2OmUlHea83hzeLKdQRPQYePBE//D3JgugiK940bvwMavLIhE1HCdgMce1DkwZui49EjPp6FCZyNZwCB27Z8pbwWgvK4uPAD7oKSMjBypjdYTekaoCz5Trir4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719327803; c=relaxed/simple;
	bh=r5zjw8ymH/iKFeBWyCiFcvSv0wzoRVkys0+Zh1cALUE=;
	h=To:Subject:From:Message-Id:Date; b=LqfpMBwBEkrOyR6D9V/ZIUJbtht9GXkq3DGgYztkdMpe5Dge1ZfvY20iC2KhkcS+GJRWpkNEimQoEM9uRD+4ks1SWCyJDeE88rrLnWZglH2gMQQRgcABOc9thfRxuJlcnw4K3hx2IlKqkrzHwFU4BRjxO02zjuIJDuZUkdU1CFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtawiSqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtawiSqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EC36C32786
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719327803;
	bh=r5zjw8ymH/iKFeBWyCiFcvSv0wzoRVkys0+Zh1cALUE=;
	h=To:Subject:From:Date:From;
	b=JtawiSqfFBNTAdEfnVKwoeo5TXP97nlYPy/YLzYc1urkT5NywnbQgW1HYj+ceLZga
	 Um3ju3+c9JuMO75KGeTgMX1BPC0NuLfhOeV/c9AKfWVMuTASQ6zRVwnDGVSouybpR0
	 wZrjfuy8zhDgnFsgjkgRfZ1hMrMtK996VVrTYAbFHYFGg/ZExXV5HN6gqeEzt6/vwt
	 tbtToeO7sEGnsVNjp/Wp9AFvOH3BwG6qSEzP9qWRfqwfTACooTbXENeSPmBQOaQZxS
	 qRN3Twl8mOq12kHGw9PcQRD/X6RTyAG5KZLPJ3+eaOS44IawdxXt06MWq2ybtxKwGL
	 SumYCsbmtgBOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5745C30658
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932780285.26930.13361918895632371513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23430619011731fc2d09fe3cd66503bc4636168f9618a4020330849c796e06a4
Date: Tue, 25 Jun 2024 15:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719327802
