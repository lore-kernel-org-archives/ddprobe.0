Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A133264D5
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780253074; cv=none; b=NiYXCaHnCkqqhji5DxjSQ8lKFUKEyjbjiz5fbqnJtb4t25TTnKvhNFsgMoQdkk7/3spMvhUPPd+2VXW6kgRN01bLlR2bKu1gL9k3zk3s4Rs2F4lP2cW4LwVWPes943BkZ1IzCRFHhu/uyLlkQEOca01MqW0JCuTbhlFZaHZS5AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780253074; c=relaxed/simple;
	bh=Ery1swX7crJlGh0XcVVPO22lmWCnkEAeEPm9/kgV+9Q=;
	h=To:Subject:From:Message-Id:Date; b=Yyg8SjkSXdcBXH5lXNoh50G80q/2g6wTgtnSbzhVEEFilrjdi2nDM+NV2FtwsdwMmOIuar/mlDX40q4gYe5hXp9SC9APOI3OrMHxRjK8reWGNDWP2weoiD5DOzKPOyA1KTmyWBkueTzOQ2ZB2k7vDVXfqooz8V4TSSXvH7JPXX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVY9QxNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVY9QxNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51A6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780253073;
	bh=Ery1swX7crJlGh0XcVVPO22lmWCnkEAeEPm9/kgV+9Q=;
	h=To:Subject:From:Date:From;
	b=QVY9QxNO1Bi1U/q+SJ8+myo1gW14nj9UKQA9wJGsCi5ygzexv9HDzhMe2ge1HbXrB
	 W9dHzRCm3mvUeWwJhlYOGsOJuNHLSPNKPQBz7cuDZFKCS+zkN90Q42xf+qoXoopgbI
	 j8+Chl+PhDjwLmIbDlsSOPZZXNzgGzNbd2qzToGxB+P08mAldk1hje5debSRU8CQF1
	 iDgr9I5jK2uWXAsm0VGwDElpL+miOLfRCW4ah5gLB4xgm/TkptgIcKlKZ40ttUTmql
	 onTLpPRLAVo/ez3Diiw31K7bjdDBWrGDV0GDaOeYTckppabdYg+hdXWVsEr4/ifyjf
	 FO9ABoS+HpElw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B7CD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025307369.20514.1925569307231554110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7034263dcb96e15de1a8e0a0fbfb22eec68e53ffa63c2ae10e4b27312a083e0
Date: Sun, 31 May 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780253073
