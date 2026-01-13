Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F38E2BE620
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768304634; cv=none; b=mIh/d1dqHTyn9Pap5KKyfc+7Wew2fvgzSGQn3rMWyk92ispy278vtiehU99r5o6b0vGs6Kkphea/qYQ+9Vde74KQWEzw/8vTOWuUdRHMPpuSbV8/MzM0XYs3hAPe6lVFMvze10xeOVrL5hRJREMKsiSFvDbrJQTMvWI10/GNaGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768304634; c=relaxed/simple;
	bh=MXbLjRCQuE4jvZ1jVqFxcewVXmtu3Xo9sHxInWcNrpM=;
	h=To:Subject:From:Message-Id:Date; b=md9sG29Q034gx6kNV07/6/s2CFVWuyOzEfpeH+DGKot+yxTwA1IEWb71rklXqTDGry2nKB1ONjI8tqse0C7ot26JPl2hnFSGxzmhrEocw4N/yeFnytn5dNzUzTJ2oE+M2MFwovo6iSi4nM9AvZYWv6Hgr9fzRigYAl2vDK/hD5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNl+TpW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNl+TpW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0972C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768304633;
	bh=MXbLjRCQuE4jvZ1jVqFxcewVXmtu3Xo9sHxInWcNrpM=;
	h=To:Subject:From:Date:From;
	b=UNl+TpW0SXytmNtXB3I9XB4uU4AvqlZeaVWV1gumOYB8hqn+OCiJsicVV7xyOjhIO
	 +jPE7DeIO71ibFD7aKplilp9Q3v/05HX+Dlx5hAqGQbNlsLDjtQwIK44W2eRuQXqnD
	 oahnzM10emHsDdHssXoYEU2ccrEeXacnHpHiTZ6VPwqpH6ovRsmRfQOd1FgznPIJRy
	 llJvo6XlIfMWjcaHQNfS7S/CDLE4PkDMJpxWcudCoDJIP1XlNkbXx8uKTOiuqTWtxq
	 TcmsGu10Nf5eLCnLbTJTCLF1pNLZQCbdJWSoMJKHA494pHTKGA5g2BI08xn3ucVoFo
	 G/ykGOINQp+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3CD0C85E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830463358.11125.12135774682370229698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae4634c5e6db2064c521f7063a5d1fa99438bf8b8220e0d0fb039dc50a86450
Date: Tue, 13 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768304633
