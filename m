Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1817DE13
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716995063; cv=none; b=qyv8auODf/JcIU9DFviWO33pixM7yoOOYVxyMP0ntDJA0jqlj61OJSTiMrT55v/ZYiTAFAlUYbWfu/qVRuR4zkq20F+mvmtnEokgMQDbRG3eHGc3iVZPnSj9vMIl54E5rRBYZH1zSQKOfk/8RiMpNOunBtFgYGjbhPv+tjDwkpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716995063; c=relaxed/simple;
	bh=JYMmHm/a8zSHVaJ97qG6/onlUv1gY3llG3R+iqNtLbE=;
	h=To:Subject:From:Message-Id:Date; b=Nbb3z4tP7l6v4/NjRgtH9j7qZPgdBGiQfJ5mWcNxv/LLO8AOkSfUZWej59LKGKViATGICw+9cM1/X2pei/F97YOtJzqWTtlFOFIcPuTEmp73/8D+oikkogXjyvpNZdSDTHElTcIL0eD/Lxn5QA4nYfXIMJfBgvUT+0jSGZiQbpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jr143luD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jr143luD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E650DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716995062;
	bh=JYMmHm/a8zSHVaJ97qG6/onlUv1gY3llG3R+iqNtLbE=;
	h=To:Subject:From:Date:From;
	b=Jr143luD/w4T8EYntJj2hJO5/ixqSg0eEw23hmHo4buVdVq8J9WwzTDw2/c6Lon73
	 Xgd8LbsUqsz4WrN5pPbqo5hZbvKhkEYUAorkFhk/tp1NIp9UzgRdh5I2t/c6KHRLeQ
	 YNCdIyDRlU3yXlVMHHI/oI2e51GO3mEG728y1T/LgoozzzKDSNrx8ISlNtUc911BNh
	 Mv7TTikePjYcg0TOhMM7usXAy20MOcH0mpXe/DaoD9KvGuMT9ixJRlFPOOeyAP3N8f
	 QO5l4FOevEZ2uzcX3LBh4ZgF7WTfbfmWJuSiBzgw06hKHHojOQ/1iA4i/0lQ39k4R5
	 zesunYuDmHaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CE5C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699506279.608.13333535923909195621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1240be50b049fc9dde9c7096c2c1a9fead177ab28f08dc1013401f5c03fcd31
Date: Wed, 29 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716995062
