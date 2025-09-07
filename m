Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153DE23C8A0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757247594; cv=none; b=XceCvo/mczDxp+zHNnickABixsPaKsP63aQ/5Ps8zpvMHLgxHPO7SIud+erT7oy+I+5QiQJSSMMybQdkxUHo7kElagok7MHx2psE5TdJW2RTaOPGlK2vv3N74rEx5Qjy+NhLSOEsvn/+yxtmR3yVYcRs48qC+Sw7fE1iRlImZ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757247594; c=relaxed/simple;
	bh=LJoAX0EDHiM677fN8uoiOhs4gcRrh8d8Ps7EfZI0OCs=;
	h=To:Subject:From:Message-Id:Date; b=taOxDo74OmUd61gHD8rp58cC2b4VArcAVOJ/ncLebbggqhm5vf/+ErH+x05ygv4EuT3DKn9Ljgf1SPyKZE1l3Cs5HBCWLUURkPbiRzFyuZjCdSmKlzF1ZdWCdWaDIE3GE2EMeCQVzWRcSNBtQ2C8XlzuPU+ix0RGmz332N9A5c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibunQiP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibunQiP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 997B0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757247593;
	bh=LJoAX0EDHiM677fN8uoiOhs4gcRrh8d8Ps7EfZI0OCs=;
	h=To:Subject:From:Date:From;
	b=ibunQiP6pwXGhZ/jDabNE0cvUHrVNaxIifCog1rMq5NIcXfdVrc4/yu1MpHZpKU40
	 6z5kc8N7pze+FT57MD83k/YwVHivSWaWlACmjBC64GltRu6kbKdmKzktatVoyxTqcS
	 ezJt4UAICMfwQ1pXNWUTQS1Q5LzP2QwvgyndiAKCqLAtuNYNZ0C2/YRRubRwUkPt6t
	 MyBW7FhavVLSRazWqpcgzpdWWkOnvdX0t+rVNKj9oCJw/Qk7aT1dLKldnD/ag7cUkv
	 rnefEFoZiEHgUduo8BZqlL76d61p27WzDlnEGneCdHscEhTSSEFFn4Da9UOR2qIHJp
	 r0LuYHWGiihgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90000CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724759358.2893.2828758327247364904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34913579247dd7fd2186923a79e8fdc28b4980986aaab916f82011b0c6ba0131
Date: Sun, 07 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757247593
