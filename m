Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D16A3019AA
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783066714; cv=none; b=VRZ+0iE0CghIqycGzzQJKFZtUv99/bM5rTFdp3vVdPRB2HL6M32kliWaskGFAxQg6M9T/dNlDK8QpACcnQUKWUSz2BWifOhhI+ufIagZqoHCDfqV3RtIFurfpqh88CCb9GSB9oVaFkix3VWMyFV2SkdrWRWl69141Q1B9fVjP/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783066714; c=relaxed/simple;
	bh=I5KErp6pgl+geMLwR0k45Ubjx3+JdsDvgtLIvOEAWeI=;
	h=To:Subject:From:Message-Id:Date; b=pac3+JGSCj6jrRWk4ZwLCz0qdaLmUcRIHg+hTR4jn6TMGDUWdy194czrxclXFhHLgz8IxEHOLAi+6R5IiFYB4RHeObjn2hEQlpbiAccRPecCZuFr86q4FvI0QuQXGVXp4JtVfb40B8Jqx0PZGzriSgLHpkGJCA4Eo03U3cE0dDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIJswEJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIJswEJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6D4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783066713;
	bh=I5KErp6pgl+geMLwR0k45Ubjx3+JdsDvgtLIvOEAWeI=;
	h=To:Subject:From:Date:From;
	b=KIJswEJVEqlPln4S6+qwF4NzRV7BWKLaOF1OctPR5xIn8colkcp6ZQfASGImcQqpJ
	 2ea2EflNlfn1sSuo9sMPXvYh+cfIiIsl/dK6tsHceqtZnbNwIm71ro417UnstHF3C3
	 1mMUPg+j1dwyHAP01MmMFwrR00KZZ/7J9mE383Xpqn7aG1AIS+Vgo8PwPjOJPckE9z
	 OQfnOmfE/uAYzkEzs/9Vhrcb3z8lOffGXxKsRjjoKV+Sb2JDl8PMJUEwwJ6gR3iUNW
	 vO5I39Yr83HYBYtc4lQx4pgBWT3tjI51za9D7aaDNyw97SKBVAGetc+yI0DVMRqowT
	 7jZrMSh6vAxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C88C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306671368.17601.6614372645282846467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51747c414617613ed84b9b310ef0c5fb98357db88fade58668b2f8e459a56663
Date: Fri, 03 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783066713
