Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B711B81DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742487594; cv=none; b=XcvoAbQF6y06//NoqXNg6lBEfNV+soZ6XZVRS3V9/0Ty5zM+8Zy9MfPUFs5uftO3yaito7cvkmIVlkagkoLzLwuTx4lkJbx8zDCV7KZL7a5zCxn1b+nGeOGxTw/hqcrS4IR4m2qqDFMT5oRzo+Li2WF+zAYVNdtp/WDIfywOiKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742487594; c=relaxed/simple;
	bh=pTpGpG9ziHRXZJL7pw2iIfROQ7EnTzY1yT/LuxOJOCM=;
	h=To:Subject:From:Message-Id:Date; b=f8N2KeHQztAZfbuc3brJ63PTqPw3xUIBzJ8FAx34pb6gOcJBhiomkkH4YwuQ4yVhXeQPYspVfwJ8vWVR2dHDf1R0uQfuJazzVnQWsU5TQZyqDw+1oIKfvhgCmz4FVbBuyCyNI4KjsoaLkEFukxIZ1g1T9Bmf0+uAvfmwaSJCwQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkGHC4OE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkGHC4OE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6F9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742487593;
	bh=pTpGpG9ziHRXZJL7pw2iIfROQ7EnTzY1yT/LuxOJOCM=;
	h=To:Subject:From:Date:From;
	b=QkGHC4OEbTEQkSs2MBNdiLTQ57GlKMWPzdoJmCkwVPFDMBDtnwWFz6Vhluma/loX2
	 DOTMi69TlQ6YcoZJCLRMOXmInmwopQnxTwdBZuBOz2CKkWqAxZ2Mgtes/DY374sGuZ
	 Oar+qemu0GqMsOwNOjsCnaF3+/N2AhReB8AJikJl3NP+niWGnSJl/ZPnalHxW/u65b
	 +Sf1UbFfe6DK10J/h16ZixUGazNKMucCWuI2KHU0F5y2i61Dsg/sqnv1y3HBgDGsY3
	 MhRyCDOD5McROuUbFXBiTr91J9M+Yu3MD3bY9pooaQquIqyZ2XK1UW9zJINzgl5rcK
	 Yb9M/kB2czeVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E9CC36001
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248759364.26180.17798281353854969101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502b73ce773242a7ffdabc967f5fce1778715f17ba12684a42cde22898519974
Date: Thu, 20 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742487593
