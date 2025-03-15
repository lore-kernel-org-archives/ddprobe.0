Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3892718A6B5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742019534; cv=none; b=hzJk8VtwezC4fqC0u1V0XBdeYQI0WSMYNR3n+oivzoviuRJWp3pEfegECuOcINA7gUlMQYo8Ihjq+LqWenBFZ/K9i6cqjV0MexXpNe/OuGe36MKArW6YXdq1SDlYDSqp5DBOiJjgojlJTlDDtZVbKMyi0kFfZrCqjqNFGH/I17k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742019534; c=relaxed/simple;
	bh=BWil1mWuLm3UeBGsRfuEvmvKqSqgEBRxjmvRuSyW1Uk=;
	h=To:Subject:From:Message-Id:Date; b=kqBPKkUbjTYAViZlG5IYtx4cOFasDwXSbPF3POlqilRm5banlHk1BPmCFiUmkys+J5K7oclukP+NkPFhXPbQEZFTHb9VG6gXbxtt2C2n3PAq/hajsIVbOc/ZSFhdt3Fu60GOusM/WMXuXGgayuAk7YW0Mt13nubn+iH3C4qhqvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+mRtFIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+mRtFIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F3C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742019533;
	bh=BWil1mWuLm3UeBGsRfuEvmvKqSqgEBRxjmvRuSyW1Uk=;
	h=To:Subject:From:Date:From;
	b=k+mRtFIfiw41/fldetso3btkSwlWFxtT4nNi7xCYBdskILrC0sou9zsQC90IrE6XH
	 doJY7lqD9HKbivfExJCg10iGTPtCKapCh8dOZbIQ6cjjTBFi5IyRwI/A2bccDc5tXh
	 z42Ea3q7n6hf5ZC4k5VLps6BkMf0H9JhRxpkmVRiy60m/Zb34Gb/5eOvi+hlGzAuJ2
	 rwCnG0qJP3euZ4iBgiS41Xx9IqcDgjYK34/0YCcZ7rSZiBYHAyGMkaz0EmvVBFnybU
	 Kf7Agwo1nVEXMxsknxBzEScaSAsb3W8BLklveVmNbLAITg4pN2Asm1KYSzNYdC8zym
	 ei1A7tbltC46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96609C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201953359.28427.6087209952714381318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e98e2095fd626e4ebc2ea058ef431ae97a1579e1f0b34b7a840b75a5193c476
Date: Sat, 15 Mar 2025 06:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742019533
