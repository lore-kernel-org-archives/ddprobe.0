Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9793B27FE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783454914; cv=none; b=EhQ/7JiBfifQxprEM6OshdmP4/nHrtJMOKXwYx88QOzNrmJ7K2t3RBt5rD3WVl+Bc6fxC1Pm/A5alep0zxVACuJXKTwdaJUO4DbyEY9/N/nZognieSTczdUCeiu0fvU+JEWA8xQ1m5vi+sJ2daSd+UPANpeq3USvcTeP9ts4Lzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783454914; c=relaxed/simple;
	bh=6eWtniO09muTnIrhWbS8rPmzI3UqxnAmd2WfhcCVt2I=;
	h=To:Subject:From:Message-Id:Date; b=dyJSc1HIXZFaGnOttyToW/yll7Fb77u4O0EtNuroQ/bYHnLKr2WaVPxtYepOwhst1CnjK9CDN3FE1dvGw03g7MOMuKsPaVp+Xq7pzr9sskp0wVZmnh7aJgJHkqGCv3XoG2FqkgOeyLbM4abtkUI6mmGfS8VPXNlqzIeBLzgLQjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEdl0Wof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEdl0Wof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9596C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783454913;
	bh=6eWtniO09muTnIrhWbS8rPmzI3UqxnAmd2WfhcCVt2I=;
	h=To:Subject:From:Date:From;
	b=kEdl0Wofs0SbLwdZLzEFwUlxQ6TQEAVrvDAAkKqpeTgLLZ2oV08wdkrTjzof85qpi
	 XdXdEcZ3eE/Ll73R6lx/UcuRfOM59E4rVWe3DwXQp11MgPGFVVpF5fcCmzCUAxgdWv
	 OtYfwjd2FqRbKsWmBN+h9i+YHaOBbeL1R+MuG6yIIIkGuhPG2CGjRm1d8e+ANeu1WE
	 rio3delOF/KeGztJZSrCwzTxa2Rh2HmO1PwSMLAm6xKussg8ZkDJBI45wI2uYlD/Yk
	 EEWVOy1SgYC7x/UBbe1hLF6nh4DsDhVtrI4QTFoy8ey2cleP8swKRYEbgIzWo6Dqso
	 6l35pugtd7IHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83DBC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345491368.7038.7001208312346245329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00ecf099668415adff0fbfee2a9d356a5a8539e862572985fbcf6899d9509c4
Date: Tue, 07 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783454913
