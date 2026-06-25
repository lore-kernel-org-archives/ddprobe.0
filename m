Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E87A32AABD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782351454; cv=none; b=rRYW2rpjL1MqYBBsojWZ1VFdF5BBqg9xiVNmz9jVT3cmWmAQv5lGn5QPP3/PYmjSWBG9LxuU53txSyAfjs9581VN9Hlo1J7SbVvmaSLjApfktkltjl7IlajnoiQ7oWodkue+gOnWBSF+6n2xghfYXbmkhFmOe4SocQxa6sTVX5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782351454; c=relaxed/simple;
	bh=OgIZnYEjk5jAX4FCVyi0GDYqggwH0zjlq47dnkzYFks=;
	h=To:Subject:From:Message-Id:Date; b=JgZjbpPtwX9L9y3CW73oQTH1GT8xM8nk0B/qOOrjjqduLc2MStAfzKt1TA4TXocPRExbPilZEZkx26ZeGl90bhAtV63otxzAmMKtngoXpL9xHctVj55VGV+KGgwvEQ3Dx2Z1KCLf+8+gR6tPZRTPbejrnFfgJdheKYJyTmAIXbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rExXbVeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rExXbVeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31E4C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782351453;
	bh=OgIZnYEjk5jAX4FCVyi0GDYqggwH0zjlq47dnkzYFks=;
	h=To:Subject:From:Date:From;
	b=rExXbVeP/fuX+xrcpkduKLljx2QK2iJxImnp499rTK5hEtX/Qn+arQTBBQUsPwRvA
	 yHijn3zdSc6B4pkp0fOnbuDTxSpS8udPSdqG+GOcLYP4RDTEiAx1lZCjr25HK9Sl3M
	 DvOPpgmSPP0n2dNBtcEGDG79HA9sI+NotqIezl1c6q4FrSE6MLVyr+aYFN9VboFWuo
	 5RtpR2W1EZVnzHkdbrWs/TtKxA+AuhijJpWYJYj5PMcn8Z7/vQ+4iRT0QnIBYTcqHp
	 aGtGa5/id3SuoABkSM4YgwRkTeS5j3XGh266q6AvyhlVEKGIQ6fZWxA/tBvBQzHbhg
	 KTL+KnVLK8XQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD0FCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235145369.15207.16378555860065953770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1ba697bdfc7b72e2d990ad3c009581ca135fefb21a5f789e5e27132c616035
Date: Thu, 25 Jun 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782351453
