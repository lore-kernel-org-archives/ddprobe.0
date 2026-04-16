Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6B525393E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776355054; cv=none; b=KXGBoszD9XXqtsL//LN5uXOXQcj0cGXd1l+g7kq7Z4HO3ekB6ru7cu/2RHJvgYJ3U4Kx13D/z4RufY1QlCnD70U3etzz7/T1hci5y4LllIqzjyrAYgevxmjMU/uAToJTHKHOVQS1qlYGTVgQkg1zck4jqV2dhi+1126xXjlv3b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776355054; c=relaxed/simple;
	bh=mcYKLOJMl9GcQE75I7t8+gpRYuCqypAwZNTeQK3fNuc=;
	h=To:Subject:From:Message-Id:Date; b=GdCUwyrfUuIgsYZ2KCLzwZdaEf/d9LYTcoZ7hIlOWw9IUYuWkiv/RCRrHafpKqnYwCNmfVzOz/uSAmxxm3Pb0DASZAm1ihhdUmMW1Lc5SKb5eePBmKHL/xNRo9udX7thUpz1Lw3yTB7RwQWp1LA9/WA7DN87gW/v/B27BiTkl+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3150kp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3150kp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA319C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776355053;
	bh=mcYKLOJMl9GcQE75I7t8+gpRYuCqypAwZNTeQK3fNuc=;
	h=To:Subject:From:Date:From;
	b=M3150kp9Au49IBIgO40w1OF/KYAqwPafJmEThavgsrc8JEUvDlMythx8E82VsMEYT
	 C65C5fldY0Zf1suosZ+sS1lcZtmCiV5bOhKTGc+XPONPDhNTAlzIM6Z/jmR10/NwLs
	 4ACKBTEaZz5kj3UK7lFz5bR+EiTMHKURzqf1a8UAaBDrsUotFnEpPkSlVM5ViiB9J0
	 2WRtK6WTZEVll+IRpsG+aqRHb/xUDzsgxjYCmwJRsFRvCey6NnrXw+aiD1E2rLNxPi
	 wF+P9j38Lzc5PMYa+MkegCDZFeKi4UIT2g+h0JMt9uD9aQ4HeZdCa+vCs8BrlibjzE
	 E4rbJ+HeFcRXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12FF8D75F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635505369.25269.12453273642258331180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b18e6750da3028adb1020baedddc4fdeff2e232c025a69e88e950b6e3048b05
Date: Thu, 16 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776355053
