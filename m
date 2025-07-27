Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165B1F0E55
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753612794; cv=none; b=Y2vogV0Z2tY0LB1r4oLerEg7P4qYfXdHRJxNpBOKV3IYVoI5kGtZi8BoITL1J4Ief7CkRm8BSgdHxcTV5k/VokhzGHlKJ02EaR9TO1lBesggkJVX6w5IjyQ6uKI/csFPyLX9j7HME8WQFVv+JhC5ENLmpxESPBEDLEMY3CJxonI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753612794; c=relaxed/simple;
	bh=EsZbnqng/T0TelVJoYuqqz9ASUg0bC2Qyc7Tuq1CSNI=;
	h=To:Subject:From:Message-Id:Date; b=XcOlPqIqgQhy+VLx9J4rx1zwaLulPiEr1Ml4NIWYw4xMjcM1N3NM+CGVSH0VEedqBdDHj2pf3aBuR+w0Q1NH48QCF6gZ2OkADF25Q9VAXmN4JggV7a+9mAk4gObF4AzeEeAru7O8C/E3UBPMedh6Qs7nMvpGWMVw82drPb382Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkkEXBjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkkEXBjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B001BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753612793;
	bh=EsZbnqng/T0TelVJoYuqqz9ASUg0bC2Qyc7Tuq1CSNI=;
	h=To:Subject:From:Date:From;
	b=LkkEXBjFTWo9aC7AJOvQ8KDjoSOmJsFHS4TSUKj2PIv+L3n+3JzxE4kV6Zt7MLufH
	 4e1cpsYzTYPztZeR8zlFagwsPZBZ0ocIFvFVvYhn7GDj7dva54LN9dcX3SlAi4SDlh
	 wkDPjFpDlK/YUYsTsyohN+AmkC8lCKZv0Tx4IZcQJB+3Kb10MTNnfIJ8rFMhlm9Lpf
	 vhXk2Kzl9B5d2KfGCmK4Nig4Kr4ITadKpQ1AyMm8UQtG8mZN4MeiYpPhmXDL1TW3vt
	 sFO7roLwlGfuHHYlzVQA8ZWytrx1gQAlcsLfADPXoYzjyhK9AW7ewNUmeYGNb5E0W2
	 jzMajgoZK9txw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90532C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361279358.18735.7300521223652018995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c34398dd9e4a4a0e655862dcffcde5c0da0690047b5b8fc91d6b52e53e9136
Date: Sun, 27 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753612793
