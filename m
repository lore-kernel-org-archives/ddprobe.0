Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1534A2AC29
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708784297; cv=none; b=styJtgkJGDYHlrRznnde/wtZR3k66Aq1Sbhar1yiXV5Sd1Uazlg0HQ4ePsrHv+SYtUxcd0TBfIBXXf8rl5voj3r6UrkcezOW1imyQi+oFw/T35mWTbLoLyIOjcQ5yljDbajiw5LB9apnQ483eTqvQWMqI8O/WQZVr4DNO2Dzicc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708784297; c=relaxed/simple;
	bh=MP01UzMqLKIDBxIU481W33kT26sVxClbYzL5XKUygCc=;
	h=To:Subject:From:Message-Id:Date; b=XOhQ5KCGE8oHCIat/7X+OO5ke9DgZFpf2xUfs1zjNtMz/GKwqUpxrx5tj3HVWqz+nIFW1fEgWsXbc9+mGo/EMHeBKAqR2oCzXvNMNTixGDroX662wYp21xqt+aVRqAfBwZfqEkc4iJr3AMMQgzBMNWVwFvIhM5f+1A+MC/5451E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWuxo7ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWuxo7ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C14C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708784296;
	bh=MP01UzMqLKIDBxIU481W33kT26sVxClbYzL5XKUygCc=;
	h=To:Subject:From:Date:From;
	b=bWuxo7eeZWODkAM8ME73007MFSrfTmV5p/JAhYkG0ogct0FLZePiOw7r120QJeiSG
	 rci+yDVi2j9I8jq2eLoTOS0XTYmdCygAlCXwmHylejp4G24a1Y8VlqXkVuA9ibSlnz
	 JuV3hhoeeMLcbbxVlExhdaMhhkzn8VHp0f6ngOmMaM+WVvWVNIvq/fSGPf5wO0Xwh6
	 Q4aNilaXXhwkZEhEEU2s4sSpU9qlsTj2XlU41CytX5gqnQiB5SjLv6/1rt7DN7GKG8
	 j6TH316VKPbNMQv8othlX2yT7lLMDqgt2WD2LExP0F3C2P3uyNSIW+NJz9tokuEVYH
	 5oQ47s4sAaOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF52C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878429641.32117.12299193891810956503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31d4ac29c083ce390e86fe458b521b7a8ac9626fe874b5cf6830b57d02fa5f4
Date: Sat, 24 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708784296
