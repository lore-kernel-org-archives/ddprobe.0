Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1970340DFC5
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775927854; cv=none; b=PWksqgHtQzNyUhGz8pujH7eiBh7zc8mFDmgzC0S18oINCjwZBw64ue6wYCss5Zi/MSbdvBIX5QV9P+pYPoqBkMciq4tUB3D6ape8+iTqyKS4rdaXCRkP5Wkjp1mPVyNgt3PWc58GUse5krem8Xs05pbWgwpVoHmfOeXKyoqycao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775927854; c=relaxed/simple;
	bh=7URkFbjVmnC0i9XwB1pLGHWFmNZgA4qI3Wm9+7oSZ5I=;
	h=To:Subject:From:Message-Id:Date; b=dhN3JluT1VQmuP/98bZGegA8V+p7XGu4OA+tlmzdmjGgjaBlx4oLooN1hgmC0OId85yxfsrneRyPmLrzH5ufB+5amttSj3gTd7dny6VooorSEKwzluVyPfkuNWSlZ/PpsB8PFINJcD3svkqKTeE47wg4q6QrxJ8CwBPwOmMe758=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOQ3iwtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOQ3iwtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30B3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775927853;
	bh=7URkFbjVmnC0i9XwB1pLGHWFmNZgA4qI3Wm9+7oSZ5I=;
	h=To:Subject:From:Date:From;
	b=uOQ3iwtq182rRc92B5+J/eV4R7RDmWQJnlzwV5SuxZaho5uIA/MTiv0FueyPxyGei
	 VphHt4ZM6CuZAEl4okmmdik4IIoejWXSif2NbNA+cWXPFBPWhZvxRtDOLKYQ9h2tIe
	 xUZJQBkmwAjDRRYilqttxy9S31EuZXwSrEnv+Nz2+lxEFV3Lnv88tZbVPCn6M8J4no
	 /Xor4lDbOa6jVmjCfLO1ShPQMeku9w80Ap9v9JOflY0Ad9WcBa8b9yJKLqCfDYCLxt
	 IIRnagcDVVNX3Bq7G01+2ypJoxypGDBAMU/l4N09gozDsj82RksBeUnZDVA18N0kSP
	 v6tLWu4qY1+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE58F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592785368.15479.4564730414555378526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e7e46e7bafd10c4f9e1b080f89df4535176fccae546894efc3d0e6a350dc33
Date: Sat, 11 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775927853
