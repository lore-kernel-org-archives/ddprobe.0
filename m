Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489C0155A25
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745100594; cv=none; b=ZjAoOBv+sVb9YefFFUCoYngrDjJZqmWfovHOI6QnSFljCEbeJqwTPbk9q2SUDH58PsJ7MA2DwDnk7w6ZMha512ugslAsPbPydHjmZMGYAhwpv5nkVJLY2xphZYmhMn6u19tYoqTqUrVDI8Az9fx5eAu7QVenkfN0z+RC+viv3hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745100594; c=relaxed/simple;
	bh=43/VTxi1/Ai2YB+DdGCAbgRmQ/3Wj107RLqqlsZuyL4=;
	h=To:Subject:From:Message-Id:Date; b=GHEiy2wm/TVxR99/YuPK6pVay0imqhudabSCpT8rqLKtfMisGNMA5UWBMWrcMwndFD5ZOzBT0Z7hxqy0cwbRr8Zt7L6Jm5w7XJcF6b9rEyPDdx0xKexTXeoLp62kVfWKIe8bIo6mAGP6ZFYbVAUOOCeODOL6eMCvx9l6A41c2cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1upoDOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1upoDOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745100593;
	bh=43/VTxi1/Ai2YB+DdGCAbgRmQ/3Wj107RLqqlsZuyL4=;
	h=To:Subject:From:Date:From;
	b=Q1upoDOeJVMandzrD2WhpcD9j4Cp8lkvemhvvh58aWOsS1eZQVQnVuTHCFrSHp6gv
	 fvxkd/pk2LQGMJXkrmBrFkdPPIfHF2TclWvNIUk6RBwuYOthxjqTDiNOrfHSkBM4Re
	 vNQDu6kOFTr1X0elXNts3CtniNeCuc1hqz1S5/cqo0JhqPR8cIOxGjvktC6InNWq88
	 751+y0TBoaUVOgln02GsAd5u7bLh3Vm0Qib207nYjS9rLL98J1PWqflfT4xzGC03HY
	 S+lpwwLPVLGHpetfpl6A2IbVuAgAagKHrFUsQOTum4IQJsKRvx6xRBpJy1W4LrHWUx
	 YhIsXvkj8Y8vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B522C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510059361.12028.12677861907909160530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94580510ea90d9f5e5afdaaba835cf39c3d3b4ada084658db0afa57b738153aa
Date: Sat, 19 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745100593
