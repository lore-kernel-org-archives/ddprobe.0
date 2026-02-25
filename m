Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251B819E97B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772057094; cv=none; b=ZucgA48dEdDEobopzIyb13S7l5Sac80bhA+Sl4LNMfgeRaNWk6gKb3xD5G4h4WT5T6kOVuWtR03JqxG5x002defCmenAQ6hWfuTLPPXvv8bttKfaNUA92GKJoAcKZ3wZQS79kn+JjuyzTc9MORZ+XJTd0hxC+TTlQjh/6Jm7KQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772057094; c=relaxed/simple;
	bh=bxr311tkhrcp6TIyooxQZIiXiDOicczlL3cSREipcVw=;
	h=To:Subject:From:Message-Id:Date; b=n/10qx4fUdNS3gKXP5b2XfgwIhTT9OKoEjCCnEkdJnP0ziV4DIlU/h8xQPgWydFieN957fusY7PZ16sOqTcQfER4q3cwrkgCFnIpxo2SfJsMwLB03Z7RVJfS8XJgqx8tl2/a3Ar023VFgMoZQOKvspQMUvhcq3ufsi/eGISC0Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWu9Py8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWu9Py8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D1AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772057093;
	bh=bxr311tkhrcp6TIyooxQZIiXiDOicczlL3cSREipcVw=;
	h=To:Subject:From:Date:From;
	b=IWu9Py8XgJBvKMp1fSytY468TiSbKlA/h7Syywl3hnUuv6qgAprBBpvMwPmAxuZES
	 vrCAasFz0zkGQaZDo088KL4uIy5dQ/67Bf8hVo3kZaHDRuouDnkFO+tRIoerDknhth
	 3e/l75oA7vgIFwInbVbvOOPKyt77rMTfuwC7UTh8WIJoivUnAmwDTRKrBMAmsWshgN
	 s2ozyLIS0wXJVDdiZ5m4pXgo131yj2nYNIYVS/4IGxj86+R00B8m6NmXhmdgARu/vi
	 NoYbkKRraYm8D2WUWVv51II5qG3iY4NoWhlqaKeQ8DiXfs6M4dwD2hDPVFWLDI3hZP
	 Fl1UepLUPNRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FDFD45F8
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205709367.9684.6540095054113293327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640b4f192635a42f80622ea148c9b811fc677c3cd088ddbb4a241795b600111a
Date: Wed, 25 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772057093
