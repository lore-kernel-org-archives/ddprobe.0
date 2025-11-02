Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1797E34D3B6
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762095594; cv=none; b=kY+KGkRv0CxeQhPqN1aBxtgolR1kbppAW1/OyBuFayU4EgcJt9tYgJ8ihHqt3TfWPwSW5STqjR/BWRsFx3xeZDcV9pipL3E4Fd2TdDrI7CnZuRFG81tv3vTckVd1k6ViaH9NDtx5nGi6qVx6cKTRcqxZ9nI8yO0epBnGUc46Eh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762095594; c=relaxed/simple;
	bh=a1cNo3rLLvvyfLgdX95CQ4vNUAJIPGnI7B6kOHBtiCQ=;
	h=To:Subject:From:Message-Id:Date; b=skS6rIkhnITkC/P+mkPdQHaIyIwjQnatIJg3rUKHjuTFhB0eBvnWhGD9zXz05A1QpBCj9LuBLnRUqD9aGg9WEmkegTBh8bbXyifuuNa861Q56sGkIb6d5kPzdOieot7EPJbTN3vOvpuf2nRJ79NjZDn1MxHMjtglIs70nHjfhB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdKSxNOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdKSxNOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C58C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762095593;
	bh=a1cNo3rLLvvyfLgdX95CQ4vNUAJIPGnI7B6kOHBtiCQ=;
	h=To:Subject:From:Date:From;
	b=PdKSxNOBHEKjhol6tieFtSjgEbDOX/egRC8js1i/MtVWJcTHG9HRar7QBz4GJzELM
	 rpUApAiI3qvEFVvd/9FMf48imaFdahK0woVPdRdiioGyDWTh8Le2qeNb6dktABbAcY
	 AfiipzBAG02wy42MwTJacReUYjpfcjUgsHSTiI7lRkjozyfszSIQYg+SnQXwGAEZKb
	 OkBf24Eq1h1gSIYxcMECFjInQb2T+r5hRs2GPeDi6HHezGHwusZDzH86MEwv0vTOK1
	 4qMrT7zW5lk7qL6zzYB0x0HRQZSeQqWPFrNE/QmVM3MkvI7qg1FWAjG21cromta4tU
	 fa0kwfegG21tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE04CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209559358.27631.12489672752868817591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cb92aab337c5e6785a01ec30c6b165c4c439d987dc918e57450926ed3d6bd3
Date: Sun, 02 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762095593
