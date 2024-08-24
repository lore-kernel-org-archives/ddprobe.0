Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0B98488
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724495154; cv=none; b=YlDOBGh5+WPLUQYdbHIip2DmuJ/g1j7ShGS98Vqe3bucdUFfLqnuQuKTIRMOYeBkSzdcmH35nAIomNb5GvJNY5AbPm+pPHpFbODBV0MGyjB/1G9Jh5VrGcgJFDaqHXbArOON7Fv8ZDBJHcN+PpN0NhTF7Q3PftuZHhS6MmDyK04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724495154; c=relaxed/simple;
	bh=+QCe2pHtfbeKdOIRVGP5MdWOOnsCVH2lrm5DH/kcGCs=;
	h=To:Subject:From:Message-Id:Date; b=kAEexh0Cp25WQFZYws2DS3w0Hf0jnxHndzimWCsHIfYRKAYmdcsByPuiRZrSQzMKjxxkakg4q5MsM04RXcPxBLGV5JKy73xZ0ZZIvTVDl/fyI9tdmWT+drAW84LYVbdisYTKr7awNnk1m7KGWOI+iHYfWdGd8Flkzly3GGSN5J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWjfK2uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWjfK2uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5AEC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724495153;
	bh=+QCe2pHtfbeKdOIRVGP5MdWOOnsCVH2lrm5DH/kcGCs=;
	h=To:Subject:From:Date:From;
	b=YWjfK2uRHGR17FVeGD7ofasY3NE1l5joOBghoui7/KP//w4FMhXZNd1BEKZPtUMEL
	 qrqe2F0UQYjPuPoZz0vfznehWzzJkleKWNUjGefitXYVZ21eH1/S2GorEtQNJ77Uq0
	 fFHmc8PU7SyFfDkc7cOqsLq6e03gqHx3v+lD4cW3doA71mmTPEpZT40CUI5f1fxXfq
	 oqcgrUcpzmFZvY0aJD87Ea751lH5M6WT18ozevowoNGaaOcwS7Pbs/eiHA3BnXwL8e
	 HkXpGatD/LQyY/mrVPKOqkU0NdlGAAXkb0hSa3QCuT51S+pVzA0QEWzVCcxYpyCtPp
	 PbzYBCsEqhmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98293C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449515359.24975.18225661454295111211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced05ea70cf60d0869593854e952e2d651325f91f5c10a787b6f38d15e56761e
Date: Sat, 24 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724495153
