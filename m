Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822DE1B29D8
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726152354; cv=none; b=UZWgv3r7W/FLb4dDpZWS/DPzJT6j8/7ar9ZKC33h8PGPN7/W4hQxe3H/F81QoYLm3K2KPcKrKuVwXLtNVnnWhGkYe9XDSfEsaIAdNryxL++Xe0fGYN7TbE0z3UpQo8TXggxtFnjHmx+895S8Og/pfiEd4h6otwxPP29tInssGQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726152354; c=relaxed/simple;
	bh=zp+kOrq+0aQxsV/8hmdpdCprIfbqMHQtQD6rbTmUbjM=;
	h=To:Subject:From:Message-Id:Date; b=eUEDOuVP2OipBw3ZX/dLt0aDWPRKAdfXVoRFZuPDpzGIVupyRr15lwmwjZES9mhL0pnUpxJS9BMKHBjSCMIjng03duzUc4McUb2FQZyzaoIQvhhdhjRPWicLVCRFC7HPr7nACoQy8wL3JOP2J6Zxq7FJDg6JHTRMWq2JD8Gdfe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OibGwDKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OibGwDKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C20C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726152353;
	bh=zp+kOrq+0aQxsV/8hmdpdCprIfbqMHQtQD6rbTmUbjM=;
	h=To:Subject:From:Date:From;
	b=OibGwDKbTp9J5Lc/Z5iODk8RkKG/NtaZ0OtjVfjAAsVKxT8uZ3k0wUuvAurJDxBoA
	 PgY/D27Ley1Xqj1Kkp8FAk1hZ08WBNAxfLcGkl0C9Oj91dP9POaN0CXkq1Wd03ORH3
	 qyGFnRzNpZOGN8MDV2BUpPfITGfBG5TyRbHDp+DAKMaoEAAW5gp/hj/A3W+6S8B8e1
	 lNOTbK2beReaomZlUv0VRZ7A8pMb+8QlohX7IKLaqc9T0DU3/QVFGS7fNlxMRmIBp+
	 XOiN3+nPBkjO8SyvqfzeKVM/CG2byEhhi0RxTUK7V2il3ScB0Xbr20RjMqMXBpbEAO
	 oJJhxMfSRVEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D4EEED610
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615235362.12686.337866251978162469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b20653e6cf198e06428c40782bf7688bb6912478427f931a782fa4272af879b
Date: Thu, 12 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726152353
