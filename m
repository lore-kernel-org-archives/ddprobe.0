Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F9623ABB0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764423174; cv=none; b=V4+9FyHwKR949tA/7PfAnoz9lXPAP86AQRZ/XNX9Dmtj3ikehXLQHiq5x3xl+aXjg5e797hUsPORhni/2FWATdMofMEqLumGhbYKWL90CmaC6PvpUiVJ4DldQqkQQqz7QhA9Bw98LzokXWNbH8XXHltTJsPict4/v6bAYMx145Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764423174; c=relaxed/simple;
	bh=cFUTuPCLVF4QKxeLwRqXKM+DYAnXaygN0g6jkL5nIgk=;
	h=To:Subject:From:Message-Id:Date; b=k166aOZB+JqfaamXse/+TPoCnD/7xIyJ5nhbbVeLV+8g+M4aQUnwNa02aN9h7GmUE1FXeN395SYnpE8K+EniOvMddCAquL53lPNjyxBuwzzc8oNPch15floMoTJBWquWa57PqjZTZQQGidehMK6X1Mn5g2F1hkoQ88a8jP3Wd2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iogbV1nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iogbV1nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EFFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764423173;
	bh=cFUTuPCLVF4QKxeLwRqXKM+DYAnXaygN0g6jkL5nIgk=;
	h=To:Subject:From:Date:From;
	b=iogbV1nfkUm068QLycdQ1NjUkAmqAdT6kHLrnOQ73SfUqXcx8audw6vfr8XKNAIuJ
	 yBZZyp9ZY172Qlk22VH1UoOF9bRsYEG2TBx0OtgBqlSVYPS4ZSZ8uOC2J9qidGDOkh
	 p0ijqMV6AZPvIpvsXF0K3yMqA/TgEqwhWqSbRjEsUQAMm32AVilftLsUHrFTLGGaci
	 RMDhZ6vRe6HtnSNYgIB0jtcwy0X6saC+c+TBSdHg+t+yO1JRsYsWynV48Q0pFgLvQj
	 K6YrIjTu/XiDjtNSFUpq4/U/MNJFwODB9AmgCfddAv9ztZU1NboZPHDZechb0gwppw
	 yyWvYaunKcSOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375ACFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442317359.2306.13716980009809576223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5679ce4ec086b00e35e38a246bfcc8cd95f71634626739a37afe246b32c66209
Date: Sat, 29 Nov 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764423173
