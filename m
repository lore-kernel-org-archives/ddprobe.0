Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CC2149C6F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766606634; cv=none; b=FLA5mXk8WPcc5DajMr+7WTf7W/xj0OTAcLmcRvmVsPc9Lr0cMFk/ZU0orWGTq3vZH5JXu724pjnTHpPdZA2AbWBJm/jhFc+0BYSRt9ckLY544hCHSQMDXjHVjqusq5wklP5u/ddC863SnepgUxDlXbDplMS2v41rmqv4BX5xC8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766606634; c=relaxed/simple;
	bh=qdgSL2gjm3xuVntfVP/hdkxWWttsUsN+RjTWR6qj8f4=;
	h=To:Subject:From:Message-Id:Date; b=nsxpp6FfB3pD23m2K8IcGkTSJMPQCdjAHkauIU4ojp1c8qa7roDqkzDO7I31GGWWWSBMYEbsrj9l87caoyq/jFboT+66+OjKN9HeyJl2ALW0F7zja/Mh3XtlyReCgW68Y8jsT9Zk46zleY2FFl7RWBz506aZWshVECJL3aR1kbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTUy8Y+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTUy8Y+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766606633;
	bh=qdgSL2gjm3xuVntfVP/hdkxWWttsUsN+RjTWR6qj8f4=;
	h=To:Subject:From:Date:From;
	b=VTUy8Y+3Ex/AEL+d0i95zRgC0PlROiij4a9eGmafkyS3LnRee8o67qXH87N+i8yHT
	 4mtz/g1ao8Hepm5GSp0A2TEk5oe/lei/rE+SXxkZngX+nltfs2jpDOLBFqkkHxwoO2
	 fNvwrHmwmZDgT6bMHSvclO/vZg5BGCB+F0FpvuokD7CjENGnVbQAJujxbgDH3sWQAn
	 UbRHmMwYEmyDPO0wdoH6DhtYORtYWGAofA1jWKQAQ7L8sUBDhqHkItUp6L4/gMM5ir
	 rCoQpJbZQQJ0t7BIXQ8cxO4fiGxff/30UQkSfcRnWvhTlv2XJxCtA+DAtf8Dz9LWYz
	 sIAwqLGtcGuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93432E7848A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660663359.16386.16017012231720155581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d86a7be7c3ce42ab2592927cd4ec9ba700e242d4477cd4c62cb8dc77cdb3bf
Date: Wed, 24 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766606633
