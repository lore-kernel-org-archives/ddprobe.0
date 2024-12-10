Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A678F44
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733835354; cv=none; b=HqeklXLUw4KPy1pye3p8G8xBHdVuB5Gelyg0o0oVBBTHk4otERVBBVrZoCyMElW1XADgRAPwqG3t6Thwvg8PzjRm28WlwI4IGIhw5ajoq+jTv5w5kBvrY0p9HqSZJjh4GJxbk6kDN4tBrwRdBTPhPuH0ukhjlTpuGTCeOvIrL0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733835354; c=relaxed/simple;
	bh=ubvghNsk4f/FtXCO0Xdoq1tcg2G4rtB9mVibCGtPEf8=;
	h=To:Subject:From:Message-Id:Date; b=aTiCBcp2AAaW/lv3aeQkhmQ3NhxBRHfTycZNIXoAmWZg2pXA1NwbRamVTkCPJd2Cw+kWhCvpSwZPjVThFdwm0X/6drqmHHLdg0KUQFd6ZH+VBXAAhm6KK1BwwU7g59kZktvN3YdUWPFcBRqSCm94C2o/LX2eaJ3gtePBPFQIyAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb0SyqN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb0SyqN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A915CC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733835353;
	bh=ubvghNsk4f/FtXCO0Xdoq1tcg2G4rtB9mVibCGtPEf8=;
	h=To:Subject:From:Date:From;
	b=tb0SyqN4xtffmygXeorGkCT99CswSVw2R0m3KmD3n28SpDSLR+4iGCz76lxM26QgB
	 cPQUs1WoA8eGdwiTN2aqNgGiHXHVU2B0yXd/CyBBqpmOUNqAV03CSalzA/rH+l2aa2
	 KOot9CNiyvVQ0RQ5ZwVLufLQkPHq8j45jR15Pp8/P1fJPgNiNefyZrC0MVq9wU77Dr
	 9MUdB3p8B9EYciWu4VUypAU78HrrhIxk1VTgvkPwwlly3OlAdlvQV8gOTaid0koB1A
	 XDOb3Yjxr6Ye4cTsQwo8TgGTp0n81UvHBR0fHua9Bo6fiEx5c3T/AZXckyFPQsgXbE
	 HqlS6X4cTl0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F2FE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173383535361.22580.8474692991085983381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2c76fd75ebf4b0f8e97480a8112b3c805f494b05df9b9ccec5ad4121baf16b
Date: Tue, 10 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733835353
