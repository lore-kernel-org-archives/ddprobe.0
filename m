Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB59A59
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765756974; cv=none; b=rDCOdLcXZggS81dELvLzxRvLbrLZNRrOFIClhG5pIsFmmwIqI7LiigMWXHZ6yW63sfE/odlEhTJ6AOZ5VLWOM+BkpXUZvbcW5GV2DiqH2Tlsn4ghicUzNEco3vxQmrtF+x3CvB6T3weSUfYEeSICSLSn/syYaJx4DBjubPO25hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765756974; c=relaxed/simple;
	bh=qqzXZqBoIgu4vbqkuBbSU5K2qeqIJgogBlsNz219k9k=;
	h=To:Subject:From:Message-Id:Date; b=qUHeySRpFADkUwSgvWjhnyM7eWiQqcT0rXSsbMelGaXFcUH/O4URaZwsQNZSu2Id01Gpzy3rF8zuscS78+CG9cdwPN+5SmfTH50fNUh0kbIpi9BiopmPGtKnzz2GGEffXHx+I6L8oimbuFo8y7cZE79keS6xgliL9oh+CpK8738=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJ+Ui+nD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJ+Ui+nD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB021C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765756973;
	bh=qqzXZqBoIgu4vbqkuBbSU5K2qeqIJgogBlsNz219k9k=;
	h=To:Subject:From:Date:From;
	b=vJ+Ui+nDTvmF81XstsyylRy2IIp9P0r0lSnoyB5pUAK3/1BAkqrNA2Clx4b6xdCwW
	 yykaa0GM1nCyKEjLrVpfEP3hykBZZc33ntPEachFeur/SHwHIcImDxGL2OY5pmvXEN
	 oS4ZofbBuSPGqpCPXv5UmkXnk9YWq2v55gQA5sKdWrp1Di6lU4JQKWCzisun1+7ZLK
	 qWE9dMnDLuy7AVmHL8069UoktRlzHrRHzqtitZNUjW33z+bCLzlt+RiF6kDTG82xPF
	 WKQmMnH6lC1Z6dDyYRtxHHl1s6pztcski9BfkiRLFQj3kkivY9HXfMiFO1ps8JwM4d
	 xKLwMgAnFJpWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9874AD5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575697359.15190.4245554730826162812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de001c4fa350b383ad2a1d030a1fa008f0f688b538047aa41e43ae0635efba6
Date: Mon, 15 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765756973
