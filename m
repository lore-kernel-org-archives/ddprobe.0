Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A327D3803C3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784089714; cv=none; b=hlcuYLwcmdyyOB+B/Is7grPc5gdmF6bbRl2bbnuDJlZrRYVsfkeytwDe0E4KEayF3h+6t40YqST8T9dZtpG04yWQbHQ9FY+ddGyLtiO2XkUv6T02Hcy5FV7WYr4j52MXQ/eqRXBy4eetQTVlD2L/MYyj8EhXN9T9Q4y8ovjcZmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784089714; c=relaxed/simple;
	bh=c8mm0Fgz3gnDjYopvL8Yew1+exTcLF5708wijQXr+oU=;
	h=To:Subject:From:Message-Id:Date; b=OPDLyWADqEqJi8PtBV7pPxFOo99kmaCShVGW6co5sw3lfzI0158nmz1iszgJk2dNfflFv5fHCWSxll7ndKyjkL6RaHjH/f93S02up8AUSW+b/ndeOT498EY4QMWOY8n1h25tg2Ry8TziHtrmW9c3W7oaqkxABEWEjbZOuanFNK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVIRDkTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVIRDkTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D3C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784089713;
	bh=c8mm0Fgz3gnDjYopvL8Yew1+exTcLF5708wijQXr+oU=;
	h=To:Subject:From:Date:From;
	b=MVIRDkTI6PDBkFtqkmUdiB9cwMp/yzECKGGq1iVWr9CNwEV97aZvZuutHiWzeeA7N
	 xP755TrvyvtuvHPAB8lftUu3Q5eu1+JJXuvshCGGaxyCmHrOcxJYJ4glRNtNGeWzBK
	 8ZOAWrCJv8rVhkr3qtAanV3RA2JerHjzyJitrbT5FhNUf7tVexyNwiK0m6PU83gMN8
	 kwFDq5MectElT18TvnxHUROxELOwaB+Aa5IkxQiLcaTFXwLvCVnzVVgN/pbo2E5+Yi
	 xgIYiMPW2noBog2igZsDP/xcgKCiYKbQfYBfLa+ik4YJtLUNdigqv4d7Wtb9VBfv3N
	 J+1uXY7kswGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC2DC4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408971369.18916.135860567747681735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e403361666c305498c2e85cd1860f2428c433dd728fe4e596ec63cacbe3c30
Date: Wed, 15 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784089713
