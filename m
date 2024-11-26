Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250F516F8F5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732623954; cv=none; b=V1yZSv65a8bZ9eflUqPLwa0BUTcebW5DB9cc4eRxBtLoDeAIEPRRBvNfW6mowYS2Ae8Ak8nWA8ZfeD9n/UQyUU8nuzF202i/sovcfz7z9Ca06WAfiyDIILkty2yg/d9V0geU+uN1h6u2HgwkQmkXfuDFSfo1+o8m5qeMD8fhcT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732623954; c=relaxed/simple;
	bh=XNe534XJ2+oIgwbpE/eEXUWCIwgoxCxsfvuZ/oSNGWg=;
	h=To:Subject:From:Message-Id:Date; b=rRXVhHIGaFARI6abf1eLabnSUEJ5D1FismhUSsahbhyUo3N1rNUEuXHKdPQf6B4uDJpb3322uK34XwFDmiPXeSbyyRFvCz89V7p76GVCI1jVvYggtODdBFb9HRbrmS7ihx/XMstKYbnVXulbKSSRKXH0+STm3rFoJz0Ya/b4eQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXklHSjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXklHSjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6608C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732623953;
	bh=XNe534XJ2+oIgwbpE/eEXUWCIwgoxCxsfvuZ/oSNGWg=;
	h=To:Subject:From:Date:From;
	b=BXklHSjmMzy04J2peB+jrDyI4jKrxhIHClFvMF//O02bg+XUTa2waQur9Yl+QtnvN
	 IcRbZ8T+C6gjWjZIFT0ZwcQAxUMIctfR2HnnUGyQk7Ai58Tj5AH8abK5aztsF4Hbs9
	 BQQbNDSuLklypgE7e5b2HudoCiYSiXqvYSfpR1QWTwc/jvxUjcLol0M1P7tkOMCdmm
	 0ufN85IUWXCZ02EB4o/Ny1rU/hZHrdLs5EbjhMqGW2jL1m1PKaY91FSg/wuP+cJTvD
	 HkXfFJQnipYSmyQkM7xZ4w0FAjIS8hHhfgH471T/BFWGEHw5Wve1fKKiaX6eijKqQ1
	 6G0QBr9jxgVVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96005D3B988
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262395360.30385.13084503127515002653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6466875685393d1554ae9f29190992211c69647f9f76cb015dad7888a0d9de8
Date: Tue, 26 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732623953
