Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AF2330678
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781764594; cv=none; b=Z5OvmCVSLhfZK6gRvR8nM+StD8OuHuhoEpWRAaXfnHxRKwZ8RJ3jH1FYmQ0lSTHMvStWu9DFETPYK2jRfDK0tYQd653WZrqfntr0nf0/Onn5YtZ3XnE+LUPf/0jcE0OCuIRycy4kG5xDzkCM1PXyanJTnRJ/Jgy4Kwv/eEPyuvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781764594; c=relaxed/simple;
	bh=kCpf1H8E5yOg3jkAhQUNQ9vzEcVVD/a4SMiVF4werms=;
	h=To:Subject:From:Message-Id:Date; b=JD0tyrL8DO+4WZbGPL2dvrhhoRaV874Nu3+9hIeWAychJXpM8xQRPM4bLeFc4Q9JhEvsLzOn238EVjTrv7hdguo7t4DhqBKMUYLO0c3JZphk3V33D97vaVxCKdQ6HfPjTvrv+uY+7NUDklvhHOZBgVWgS7KPgLHG7JaLjGozyvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBExh476; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBExh476"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94E8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781764593;
	bh=kCpf1H8E5yOg3jkAhQUNQ9vzEcVVD/a4SMiVF4werms=;
	h=To:Subject:From:Date:From;
	b=SBExh476rVwGTWh3SboY4FolfZkfpW5kRJNWeOmRgar1MpBFqMYq715LSu+QTgU+S
	 oSLHyE0aOawr+IDA4ilk7adMBXzYLHP6pkhcpbAdODHHfxHyJLq4U4NRdBDsAcScCX
	 OUCBJUQetzMYjyb17fHO0iYs+X9S5GrabMbpDoDM50Vy5CpcblQ/zCKM5QD8q5U1B8
	 ypGuDJmiBozbeaL8aOUY/VTsnBFHWzzU2gs+/po1hiaGg5MlsVsfUoVhcT0dXRfGn3
	 IUZJhc3SnuZ1V2klkTcwAQRd1fOrXRMSI+IFXjXgIdjirOjLhot/I4O0SLx227k8N6
	 0QFIH9Vcry4Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D1CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176459369.2777.808031593899944368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f1d0477db59921d806f61529b2e5530f115ab5cbd0b7098887f83c40a51519
Date: Thu, 18 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781764593
