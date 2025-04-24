Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F47DA6D
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745492994; cv=none; b=bW3iVj3zzY17lXLMEDay8B6lC+3m8tTCxnxvnjBxmGrXmy12NojTlaYbCqSKahbHJIV1Fk5q2KR5xUrlwnw/i9LrnT/duikYkKmW9x81Il+RueL43v4PffzJQmbinRyxYh/4nf9qDMIYdPxACkbXdsVQS/YKC3l+Sjct1OwdleA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745492994; c=relaxed/simple;
	bh=XIMjfttFBQ85SvxSpLN6XsU1ikD7Fs547YgzXI5x6a4=;
	h=To:Subject:From:Message-Id:Date; b=sAXJBZks9YIdotmw7SPIO0cHo1MYYvIAOGl05dXeB8NeS0Lbt+c67eNavsY5Iv83Z6iRbGUQ9bwBhMlSiDyR8r7sJuUQ85STZDgQ4X/BB8EdXyXXmq3IY2levtHa2GKtCK/yiqRd4Nnb85CB8kwCbN53X2xWJw5G8FYZ6ncOs7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH4+g8ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH4+g8ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745492993;
	bh=XIMjfttFBQ85SvxSpLN6XsU1ikD7Fs547YgzXI5x6a4=;
	h=To:Subject:From:Date:From;
	b=eH4+g8ka/LpTQQ8A1UNXyseGCe4Y1fX2DT5CJdbeyqDqkVYZJAGp+A78svHHey4YM
	 vm7Otdeovklip+E2JUsRTskQ8efSac4hOXxcisW6urUU3RfIwNow+bfU+gakFDT0GK
	 SK0m8jSxpk91r8USdrSaaqDa+5nQ5e+p72jvOSr3jenSPwMTA5YL/oZKgPPqx3858l
	 DEinRPYLKrX8eHzoXNRCfdiSfSCH7Q66D4j6Aiqyln4IZe+ekq1BMFSY25cYm7Qo5J
	 cGuiu04ga01dh0PgHs5/gvcQ7HJRQGA/1v/wKGmnOiS7z7/8/L6H7F82GW8DkPBB3T
	 F+9/DiKyGGk+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F12C369D1
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549299357.426.17722846792238297426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695b9892336503eac57fc176097906d879313490541c8392c548ecf79548d9e4
Date: Thu, 24 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745492993
