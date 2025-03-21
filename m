Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0D2C181
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742522994; cv=none; b=O7ivvL01TFAjoBKyaciFtTCx7javJBNRsvbFP6Qti/H8u250rlsMrjRmnVcgNOxvQAq57aFQl4Arpepc+n4yQMD8OnVDRvx0H70ifB30kP1xV0NLCME2oPOPOLWR7DlTnaSTySS0S8YPBtg4tmD/nTJ9NjPPjsOyqXmNakz6kJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742522994; c=relaxed/simple;
	bh=/GLEXAbjWGEMumYVFad+l7L6WtfKmnTinV1CVSEkloQ=;
	h=To:Subject:From:Message-Id:Date; b=cYBbatKF9IMy+950m822Rtuw+Zb59TOli5aK+M9cy5gBqfxVTFg3VBbbJQMJy2PSuRDWbgYQhdTCtKmNb7RIlUgbvxUGD16R2mZh48yhZl1nYtHknLV0MwM4zmaOdINjxOA5VrmLBGqelbNH5+RW7nfF4v/N3BbSqRyMtZub0mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyYPEbp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyYPEbp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742522993;
	bh=/GLEXAbjWGEMumYVFad+l7L6WtfKmnTinV1CVSEkloQ=;
	h=To:Subject:From:Date:From;
	b=UyYPEbp7OLNFC6OSN16XZt/1xIPT5wOnJ1zDI55gCOgscc+K2uVmgPtgfugIdAS8a
	 QtHKybpgvHQkjteuuFwaDupfZimnVmTP4f6HlQI8e/Lm+ImRnZRvX8Vfu2YqnYogfZ
	 zQvNKgnEZa59M3886pcnnx8JaQHUvbJAC9SaTBZtH0K6Ggj13Cxl2/49OUrk9npjOf
	 6inS7JgyAhIt+vsxRzf56WL3kp7qNlTLaB+/I0cT/1GsZ8qs4ljOucc0ys3IDRjdEp
	 zX4XccjPp6n4ZHBCr32FMf7Tbr8mtpn9v4EOVFB1Z4ngeBhHm9kApkXi8+KmM5054P
	 sDNjqp30CpwBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FEC28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252299359.2706.17573405751168115292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a1f0a50a19491e0ea6b7ee862781422d5627d82b3420316e73832fa98b52b0
Date: Fri, 21 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742522993
