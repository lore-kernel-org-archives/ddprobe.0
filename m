Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E5213E63
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745826594; cv=none; b=pS5O/DBSdLfxtJqwbdLHmaqAZqDMIUQhTQXVQ+/nCaifB5TeSG3MoRoG3uPZ3GJL5UV0LxdLhpDeZIPMdyy+zYJiG49VZCM60hIWTi72AXka1/OtZ3czHZK30u8MQynJi8B4RW8QcaUtLvsMGSGOcQ0Fx6rYxYlG+gB7Wws94VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745826594; c=relaxed/simple;
	bh=26mU5GgVKXovyxROkC8/MkOC1s42GUW/nY6+GSRrY5s=;
	h=To:Subject:From:Message-Id:Date; b=W1YdH/TuMhIFbJYpR2ZkctobW3KLqw3Vd4hZA7646qd6n3PsSGfSZInqG7rMuvlpKwSSpS5yJ+8fc3pYS1BTCk9bAcoA/PUSEh7akaGfFleXbCyCwgSyqB/9CBb0oIZ8/Fs+dlDxUBZniFrdCnaplLI8cq2KuKwwSQ0aBIrApJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWXFZJut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWXFZJut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745826593;
	bh=26mU5GgVKXovyxROkC8/MkOC1s42GUW/nY6+GSRrY5s=;
	h=To:Subject:From:Date:From;
	b=FWXFZJutYz7H0k0bay2Qk3bPsAmsCxzPXKvMTb6jPwCMRtGazVRfKknkMy5ItgsTW
	 U1yTVe5ycRPMASOxK3f+peyk7zqGrnmmYYfjswtjhjh7nmWhaXdvl+OsvQR9R9sMrR
	 qXEoY5CqqyNuqOGJ45GrcuiptrEe2AIQiae88gK6vre2EmEEoZwEstM1pibDmADD9c
	 TDG+KvVGcsZ19u6zm/z/AwubG35CGJvFP9EqP7YRGcVxz2XYgMOGnWRGszyke5MtO8
	 O9jCQQxvaXlGOYeASOZam+t63snpgpXd8123VQg7hW/XnN7+4zMBJ0R3OUxsiv9l8W
	 0s80jsY7jLH6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2EC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582659357.15815.10896496245797722006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebfb46686298582173752efbf8e68b74d2132117c2eca71f59c0661b9644065
Date: Mon, 28 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745826593
