Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0C72FFDC4
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565793; cv=none; b=NT3IVkMvQvqJrc9NzUCDPi7NAYviIhNPLiCAM0oMBQHWuwfjpV8iz8EqDfFNzJ3eZWTetcVVG3WCn35pOCqdGOq85YKtWNeuuVXObPdNhOWC0jZZHmh8ZgRy+EgN0YXkVyxDEoQBQJ1codcuHigF9OiqLDaeauNy5jltzZpxVhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565793; c=relaxed/simple;
	bh=UbeSjh4HuNeZRh6POyjSNL35kk9mbRYnjp2Gb1maNKk=;
	h=To:Subject:From:Message-Id:Date; b=gaxzxpYDaA/C8ji29tCydChRqSL6Od6xnHFgGzKd7hKCb/D/cXbM1guq3JX6sCyeFODs6wVxYs0Gs6RzMj79A3xCqCAY5Y7j1uOoa1BPuGkhgv7FGhvMOh7KSooskmU4r4ZvETKZ6Yuaioj+XFjzVsc6uettxd8kaZPnd/ohDH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMrlrfMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMrlrfMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC3FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761565793;
	bh=UbeSjh4HuNeZRh6POyjSNL35kk9mbRYnjp2Gb1maNKk=;
	h=To:Subject:From:Date:From;
	b=JMrlrfMegfdPExG+11kJ8X3k8cwIGFiRoV8Xp4n4midrv82ZW6ekbh80kVcJS4XGJ
	 II8Ld+aNDEt4IhaUv9C/3AY5/PKDYC3W6NjsLTGCvflNs1ngXx0MZ6U0y+t6/sWNvR
	 WE5JzmSpIauKFHurhMOK5ab4JkFE0sn1mzx4Ldh7xe+rH9ab9IGTwsUbR6xvj14hqZ
	 VSns0N6gRLIVLeIuuvJ1A8grXqmiqO+dIPwdqJEIyB0Dbq0Ula+NfVMbzM0zJQg8zc
	 /+S3jMnwPWeQ0QBL3iQd951G9B7DTjQ+Ouf28Qp7wHeIs+k7XLSQ7Me7xqxUBJEq9K
	 5tht1wBSC7v3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90877CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156579358.5343.8725545295351354922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c1f96c041e5a3975b8ff4158de47716ed8f49a7e552c805097593454dd8f2c
Date: Mon, 27 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761565793
