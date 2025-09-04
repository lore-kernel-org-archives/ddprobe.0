Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2171024167F
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756976394; cv=none; b=KcJwo8WSkhMS68OHGPU6PkgbZ9RTn0TYEwm3DWy34zdUIfuSopHsVjEV98/vsFM9qwfINgDOjOY4kqPo/YotYZuLdtKxWeRVKiFv/zoDqC9edoaw/ijVUFMbhA31pUxnVq8mm1LxZO3mL+LUcTMFPPv90pUzIVmjcS04i1ZbsKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756976394; c=relaxed/simple;
	bh=9MHSE6wOdK4ks0xACKb/V8OVG+tejA+4Jz8g58ZQgII=;
	h=To:Subject:From:Message-Id:Date; b=bMr4KlFQzuMGDkFBnPz3jx14p7yne0/9WGsBtOVv4BoQHlQCBcrPmEw0pQTLYoYMPwjFz9eUe4lVUZI/wFB+3yEzpXrWT2C4zb/u+LnpkkwAum+F0UWT3PUpzQIufWMPF/Sw7/tGKoznhjV2XwqKIy44uRmQknGNwQC/qmk7/hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9oJ1Dlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9oJ1Dlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756976393;
	bh=9MHSE6wOdK4ks0xACKb/V8OVG+tejA+4Jz8g58ZQgII=;
	h=To:Subject:From:Date:From;
	b=m9oJ1DlhZ40UsC2QbmydofoBEyIH4xqIf+2TBQT2BoHWXsm/RIkCBeBHMvcSf0OqL
	 +lwh+A1K08pjAG2xE8XKrjT0epU4epYnbFPruR7fAMxw0F2QxBf9B7BgFXo/vL05qu
	 QGJrxrF7Ourq2Xzcb+JQk46Utnk82aSXNtJiyllV/u2nxEBUmjx+xOLLNMa99zoCWq
	 boJW3vdXt5vOagwdPZAk0c0rXAS2RCJYp3Hy3z50LPr/93j4VrQv+SimqNmNiQSgpA
	 P6Cwq/C7hT2WzxmyprqeX7etPGjfbo1kIzEmH5EJ+9DpcNQ22T217pFyBJP3GscS7E
	 5OR3bS2l5RzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E2CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697639357.12020.11111150691141520432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38531f8727191ff6b2d84f17a135609094ce1c811e14cdd3f36b8ba937ac70a3
Date: Thu, 04 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756976393
