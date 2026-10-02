Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAEB30649C
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790955634; cv=none; b=aFxeYtsC/eu0xx7KV9BmAm27ihwPlVOkvOi0vx/SpwS/smGwUe+SHcVo8DGqDW+8B9tRnCI9IDUkMy4v2IaP4kb7XoksIUOLQJF1eGt92vf4v4Ns9C2Yqfa8hMVSjWhHe+YzFjYZ5Saf5jGKDnT2bUIsLVMhXk7uCPO2/qlH7lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790955634; c=relaxed/simple;
	bh=+MmvFqEfbi1FrdpoEMuizH6YbBMw/t5HYeUzIB9BmSE=;
	h=To:Subject:From:Message-Id:Date; b=paD84aTipqzbtzLin3TAWwMUdshZuIX1/wV/NW5Oenu8X8tn4g35KRI+RWpc29LEcbdkv8EB6DXrsULX3ouOb36LQfT328Sd044pHy3jpr1SihnPHJDuT/oiEI7CmI5iVAQuLh3zI61jhppi3gFl7HleUu/tlsgKPBkj5zAJcQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSsgRxle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSsgRxle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA860C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790955633;
	bh=+MmvFqEfbi1FrdpoEMuizH6YbBMw/t5HYeUzIB9BmSE=;
	h=To:Subject:From:Date:From;
	b=mSsgRxle+bHYclS2wrdiUcF+b2szPcPz4S+jlGKFuwcPW3Q5wGCwns/qDFnrhtmpD
	 +v2y6nWXdU5AfQAR8kTlxxFfe5UMutMXs+hX04q5G4/SG1NUSk+O2aVlbkt1E/zW1C
	 +uAKXAMAeS4hdSNXond6gBiQBwIFqEHq4N9hvt7bftkkizPTWNNC+BRTSYInwufqOn
	 mV3iZgcfWte6mh/nR2YYqwWIT7zoQS9nGppZtLUWTjCc7oMNp1MLRfHQdqH8uHrM8X
	 oktdayak61nKXzv2W+ZfrcMB+PRw7F53cTx1wK1xCZqymqmrDW6d9BzpbU5GDVq+wB
	 ltmzDfHx0uONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9804CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095563368.16194.8657786908516531890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c0eb07751d2fec690e893c84b4b7f24394bf252a471c508c0ce7355959fa09
Date: Fri, 02 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790955633
