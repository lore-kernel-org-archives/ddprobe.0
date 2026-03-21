Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F632550AF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774090494; cv=none; b=K3m38cm0D18bAobJcSFA2dWQb6ZPf/o+JP1WC1BWMzXzBecferkK2UEZ96fajHdenuwMyDmnuQ/9o8S1OH5cqCS5lTIZXLrupRgmV4+w4ZmTI4CpW0YH1IUegkiNHgNcDMPpEz8V5IukGH0OMxiadaN2ewIrJHHpu1Ml9hbQ70Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774090494; c=relaxed/simple;
	bh=w25zenBO7rwdJ2QsNnnSfwMASlkGqyJY3RnZtgYE5dk=;
	h=To:Subject:From:Message-Id:Date; b=sWxFiApmkWszGrCN0kp53is/UhWXDeAf+bihSmzOxB6mJOcVjxcWnFt0r75lTpw7CiCsQK2IXdEpn2bds4thf5PN+gMDYcSGj4hQgFQUcTfK3ytsEKtR6Xq+ViyHuiUTHNXP2DaLqIbaLC8bqTXcd0AqV8b7c0a0dtg4zhd0TKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBtOINkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBtOINkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4250C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774090493;
	bh=w25zenBO7rwdJ2QsNnnSfwMASlkGqyJY3RnZtgYE5dk=;
	h=To:Subject:From:Date:From;
	b=cBtOINkfGVoDu8JzkaSDxmYnFIKPU+sWH7djHu8MClGOUxguporW/pCikvNwXW9Zj
	 Bd1GkA0ZJs7nUHPtCpagSdtWjmHMxHo5uHb3UKj78mrJdcXxG9Ef6t3bNw0TyuCljb
	 QflqJWdlfMdx8I+oHIDYY0yOuahtsODtr0KLxMbtR0f7FQETj0TceXQP3kd8/dV0ie
	 yOw6CJ71ZhBfJN23RFUaZJjAndb/Tm10Y4/H79vwqPeWF6Sup2/IAJcEtyl0+UCj0/
	 GA+nkML8hvOIi4YbPCznI7nbN5XITT5friHjQtNfzoBGyYtVo3p9t27CFTUeUOaZXU
	 ovDasrVjPUQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429D109446B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409049357.15924.4592896005778409472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7a055d0b7cd0b5add59cf2a3b6a2ff7d58a09057165fdec4a03aa8259087a1
Date: Sat, 21 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774090493
