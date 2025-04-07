Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABE31FA177
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744039194; cv=none; b=r2t6HqOtwppzSlVpy77ZjRgvrDCApcSuCyf3hToxUaDEupHSmkh2c0fJtS36zFzzqnQ4F2mSsVTEnszDbmWTJHlJYLF7fW/jyb9mLukNBHVJ5PbkohCwk9aB+fBn4uTME8CWTudESXC6p/ZmWZkPh0t00AyqF+6TI8CWX9VLVYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744039194; c=relaxed/simple;
	bh=0TXVBjE1YPETFcTJt8WlDEnWgJz5ykKSssvlhdwkW5w=;
	h=To:Subject:From:Message-Id:Date; b=nyvQswDlWwelvo6Qs2RP66pDfDLNp3llejf21lFPjdXB4OTxHFFmXXo/oteHFzVKaPzIQqWR2S605JCWrif6xYsMuMevmNHOMf3VKuReduKHktaSG0cswULaMTNxwRFyOhJnX6hFOQQcZ94k/Adb2XCzRSQ215oDMcfnSJKHA2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqWkqTUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqWkqTUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E3C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744039193;
	bh=0TXVBjE1YPETFcTJt8WlDEnWgJz5ykKSssvlhdwkW5w=;
	h=To:Subject:From:Date:From;
	b=KqWkqTUxCqSBHXt2Yo3zS7Lw8H8oWPZgVXwQ/QO6kRFuI0j6wI5Qlv2V0uoUR6yBV
	 7OGDXBKa1jeaSNX+KKGgGlK67QyRzwSxx8mU+DPvelYQe1SYzV+5FSDCGnRj/EdZrz
	 7bpV2vPo1VZdV0HCnf/cDCI9WX4XCK2k3wZViCqTP29A350hX9zfOXJuSu8ragGHvh
	 2tgvSspBogX2aSC4/oLEKklVjFX39gFo0exU8El4rRAIlWSdjLGjKBdIixC16tjc1E
	 u0wHXyp99WEa6zg0S43pbEcfn3tOO7aVTBpOxgm9hC3nNHc0RzLcVf3JfUtUDeQIZV
	 /OAQ6dhMeoFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91141C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403919358.6618.1863839538623850401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee3e277f3a7b81531cd595d4b73ba2cf239f3423065ce3e3e9bcc5381518dcf
Date: Mon, 07 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744039193
