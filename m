Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2F3388862
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787406634; cv=none; b=QVECjaRSr1S0zfXa52dbBj69wSL+YBzvO9kfZkbv1r8qwT3kmloGTkzoPvwHS0joi+/qr/kMpNnwY8p+s/0Kwu/zQSMJvzI/EpvDBo5+fPBKFpSSwG/EppqFO71kcW/VD913zX7ln2aUFrnfVVbpjaq7R1XZVbdXWppLjE82mXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787406634; c=relaxed/simple;
	bh=5kbSDCUco4WmqZ7LvpuYJWFu8frWx+p+QEHpFPCpwuM=;
	h=To:Subject:From:Message-Id:Date; b=SJeuXXoI36vUnGmDi4FVn0/Selcwcl8mKCZMJNKhYPcmjprZsVvtXcPD4IX2bY8mMOH1TeeiYK5mWr0ZTyQhDWNZTgFXgMkPOOXRHZkDjUzXONR3jxms06chybJReoYrlRCVH71ahhfgr+0i7NU3r5/i/S6OZgX/zen8251Q+kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grQ30N+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grQ30N+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B73C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787406633;
	bh=5kbSDCUco4WmqZ7LvpuYJWFu8frWx+p+QEHpFPCpwuM=;
	h=To:Subject:From:Date:From;
	b=grQ30N+7aNzwuoIcg1pfyxQXCmKdKqQXB3EMfE57Q+gQQmuhAj67jchGk6GYImnnp
	 /TOk8cwhN594xXI1qD8aFkLVJ40a+w2N8N8smz6tqQvLXP6SkhH16i7J4NYoyQ9ZJq
	 REetUF43bEnZEbpus45TP4+qAZA5348JEzbjkodWCC9GUXHRWtZHXN6+w54j2DdrSa
	 CnM9jlK4Xi8s/0zues6EQIdY/wkanMdRHyMZWoWf1e4X7hmRneKcJo7dJ8eowrjuZN
	 rELPm/8Kom++ZDKX2ubuwffyCk8qcJbcQEX9MZpX05Qy2hGGk3kpN4crad2PlTZiou
	 5Gz4ltYYJmsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB329C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740663368.31549.5451191873089164052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6754bb036f8ca967df555d19602f80c21ac9b501f937f1f009931fa3f048954
Date: Sat, 22 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787406633
