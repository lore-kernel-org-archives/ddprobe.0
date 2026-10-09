Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC0639448F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791582634; cv=none; b=LbY6ao6JEHnXO1eOnoacOuN0+tu/+iWfQdq8DghiKMy61b8o2/FZKcW07SVq7TBb01dY72/C2+JIMhdEEuFXH5TZrcy4rndNXkGdtpuY5W/xnveW1xF2PBleqbiPFqomCif+lS2kVsPLEIMZ9VkGTgo0X7G55tJeJHrK2Yd6s2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791582634; c=relaxed/simple;
	bh=I27ijhPH+NP5/z5tjRG13Qw2jcXMoxxz+Yru4vQCPMU=;
	h=To:Subject:From:Message-Id:Date; b=U7C43gy8pYP4l1PnCicMvnXpHr/rzdinuMuIIoXYQfjE+B/G4rOYiwppq7WUlEl7zhESRT2lsDh5/nxWB4alLiKbc/5MpS+VVbHOOuxv/Uh6tuiiYz5gpa86yd5Xxwk6vOwA9HOjwbqnhinGnTjYJZSLzZzm4jGYx/hNRBLFdck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrusKA/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrusKA/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17FFC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791582633;
	bh=I27ijhPH+NP5/z5tjRG13Qw2jcXMoxxz+Yru4vQCPMU=;
	h=To:Subject:From:Date:From;
	b=FrusKA/UByPAuK5xkPbZKG1dGLAANg1F+zJUlBE+9V9qOAii74eKMQzbf0lJ1mdmq
	 Ll+An7zBxvDhIBZnEUxoT9br6JBifkC/VXizpyJ5UkV6IP9utfajTDPhkwGlkWXyq5
	 VSgvRXmH6LXme5CbyesZEYnS+qW51l3LZRJ2oTriVNfHwAvOsrT0DdWBeCb6ksxnm4
	 b60HAzGNuvdicBRKmY8pcfAepQ7WnsBBhiVcBE5mU10jMvNE/tdIE2tTpFxkjiETyS
	 skSLyeUxr37PiOEU0XNDQEwXun/psfhJC2Wz0QAYZSGktELiPp4Mkt+7qS2MFm3zEV
	 BAL+ba4ExgQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A959ECA9EBE
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158263368.670.10188907813720514303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a3052381fab6595863d2a86c195fb96be7ef4119469b791db6849b8f60a71f
Date: Fri, 09 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791582633
