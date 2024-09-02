Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B34D13C684
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725321354; cv=none; b=VK8m3JQff4oFz5yEq1wjpYGTcK6BAnzfrV9dWgB65U1QDL5TtE+TJTJn33IlnC6MK6uCLDqwe+Xsb8nrMMy++wUqQT7WP1aE7uFTKZ3zMWMiJoS5QxRg2ItKaWUug4VX2oFhQq5hmhly7CAZB65v1JeKethZm1zBzARhOPzolXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725321354; c=relaxed/simple;
	bh=LmQUqtyakNwEvG6ql/Ua/QTZvSJafeOaFNZ2VUW5/go=;
	h=To:Subject:From:Message-Id:Date; b=DAOVi0Z1ArADHAxcPFaEtTkYXi4s0Yj+ct73yVL6jMh2dByYoxbflP+RqgFMo2jNo6renibTUWCaMHGdlg7mTrDITR6+UVTkhAK1FmNv7bq9mxpnDirQFSCg7nYtmapf/FrGzuLTVr0FPgEoyVoghaO+lLqE4gUcGTkXhaNH8+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH6seApa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH6seApa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4464C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725321353;
	bh=LmQUqtyakNwEvG6ql/Ua/QTZvSJafeOaFNZ2VUW5/go=;
	h=To:Subject:From:Date:From;
	b=HH6seApaqTrjSAaual8M/f1U/UHE9Z4AuWNsQ98sjRcY6hxvYiTSWuuBunzIyLBlO
	 NAPtXSpk1RuirkXajJ0KYY+Vw3ghz5wCDCEm1oiDwEnpE0/nYjKfBH+Ue2b9FrQh6q
	 2jOK/8uzYkRhUBIVDhepw6hmvjiRiZfDxhuyEUl5Wb129MuXcffMjnfkmsmkaBZhCe
	 uw21OA/7uWb5MLEmHQJKmMxclixCmMHsmi01kag+cVKUKwq53mrlGxQevAs3AactmE
	 zfh+QJR1QI3WPtRkXajtZTK9PF2NbpUv5cKGfhKBcQxPmxmmQTwaT0UQVmcH6PAScB
	 8R4iRxRnGNP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9427CCA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172532135359.1348.15046744976527909042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37988583dec156e94dcfce42b3ea33e22b4777241f29bdf01423bbd7588f2e3
Date: Mon, 02 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725321353
