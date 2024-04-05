Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3D64C74
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712359697; cv=none; b=ZIEVSqHlDw7qGlVuw2Hk3eFFKWSTAYUmB8KdvaL/ijZTFlyzOgrpzjZ0QqD+log6Q7/jMp+ufn/yC6MxAUp5cn87jmcdQXfPlVlkVQymGRYUlhMMlqhUch7Isp68cDSvQd4L65VuU7xwnWa1M+Qpj4UMOMmLHUT15Zv/MzmISr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712359697; c=relaxed/simple;
	bh=RfsxjiCAy3ee4HTePYdL53PKTpsmsV8wEQV21fWfanM=;
	h=To:Subject:From:Message-Id:Date; b=NjCZn6M8Yhw+gEiOh/zj4ZWn2idluEQLQc2FrjIduxM07x84z7XQHTTN5pALwgUgORFyTdGkq5whQCmUJPoxGZwk1O2w9kJ8kb6yIbLt1hdz4ijIKMLanfBCg4FnmR/a1Kd/D2uC0BWw04P/Om7MVbih0uoJ7/oqP+PyT3PS7sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1VoyLx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1VoyLx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E2CC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712359696;
	bh=RfsxjiCAy3ee4HTePYdL53PKTpsmsV8wEQV21fWfanM=;
	h=To:Subject:From:Date:From;
	b=Z1VoyLx3IrkN4NvdjbTXWa4l+dXT2qKZ1dw4LAufm0KgMp4fPzCYbqKJdT958N2xY
	 faW1I44RFKhu/8g1ChowLBj7XxOrlEH+FiVhVsJrkGFySl0FbCWsRoQi9EywqTbIcJ
	 kaESUvd/VuP2DSJIZYOYjktZSqs4J6aCrWdTXpU0Ks95Gi02fmvu5Hg0e+BkVbkhgn
	 Gf3JkPRDHvyTamF11Y5mJndV+DpFyifAVh3chQym7BZbF1VbnsZnTPbknY0MknVhdT
	 B+BnUcw5xbaH/hLUOjmJzjUSSvd6Khq2lB41Z3ap7TF1F8Ir1ye1wAp0epdstSXDKW
	 jiNCAUsI4nCig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677DBC3A59D
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171235969639.24231.11848679525341494855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e88b9fe744f5158358cca61bd185748fab0f3d26fef42abb1f88d06392df5a
Date: Fri, 05 Apr 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712359696
