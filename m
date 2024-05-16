Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582AB4206C
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715852543; cv=none; b=SHJf0FMoRTbjXsV2rzh8OPgrdNxL/PwPdMDhgu4xoKStm6rz24q3uHxjsS0zMYoXCNQbEf/hSf9rTUFZhHcYfrkkqtqx++lYBgXEQ1n748HaJQqmWeBmEGsL0yIc0IJQ1tlMQAtme6D5ozKZLAIAVwGzSwS73B7YThbA4Qmyr34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715852543; c=relaxed/simple;
	bh=ZpxytIcUi57FIfH1CYUOe92PUOMk3a18dSla4Gl+mJY=;
	h=To:Subject:From:Message-Id:Date; b=raZ/qgB21JzQfOt0cuP/rj4+GfyHuOetUKOPnHjzef59Cb/JaErxX7BJ2sQwiQ2haOS5MpObXhgOpTmxTicOEG5csL/kkZLEN1KY9zNJJwhgxMa4MphAO5PPpvOvuYiQzwAonpFIIhfBeQcjtPv9Q77xTwq6C4cmWYZsRmBXdIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQEy8djy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQEy8djy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28A4C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715852542;
	bh=ZpxytIcUi57FIfH1CYUOe92PUOMk3a18dSla4Gl+mJY=;
	h=To:Subject:From:Date:From;
	b=XQEy8djy85g1VN8/RLtteBGfpDHdTxAtqYB7QCngEe3nIoaT3JPm+ijjLSpX3lZG0
	 ChS9uODsHqttiPieyZ1W02LVeiLNxCBNlaHL9VtrlhJlKQrdqeM22D8bU9Ew5FUFia
	 ByGvbLd7Jiw7P1pBwrKawquyXc7JQKzRGtmUA7PgaESylk6bHr4NwtdlguLomBZdiU
	 fkBVNl7ise8q1VlYD/DIoFaLPZgPtBJfihg7w/qav5Qa84WF7u19ReFBz9jNCdNIzn
	 JfUKinE8uqmyvoDXx29dYmLoHOcDBRnhuYQVH/x7oMKI1wlRA4PLsn7Vqb/D7YK3qU
	 eT5gQwwnkJz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3FEC25B79
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585254277.30428.12909244177521706113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3013bd538a85a1a8c39172aa854b88ae637bdb0ade471cfcd433a1810d4e20c5
Date: Thu, 16 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715852542
