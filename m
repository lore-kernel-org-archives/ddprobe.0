Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E543313531
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785758434; cv=none; b=Ogf3NSVzJvD4aUjGC+wd1akdwkDbowvd/OcSPb9CSSV3wAmf36hEP4504JTDSdgFZLZv0+cHGmfunYRSTqte2K+ub5H7IaDEbzXSgD5LDnX62Q9F3WVEZvBZXa5r+W6/0LlmAuOGmZBeUrsvq015EnWYPOXU+c0rT9EVcdIjA1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785758434; c=relaxed/simple;
	bh=f306ohldcJOIVRlLD9XdeFKifamDeIu2XFwFwCkjNzw=;
	h=To:Subject:From:Message-Id:Date; b=JX2yvpGpjkNTfCJEpA2Z7Y95AZnsGmOZMJ+1+ORsIGLvKfvMsEZhrTnaxcaGiQcld5nN3Ckkl3aAY+UU3sTHgHukjL3LlgDcQUTTjfGITdzxA+KkKVEew/a222jW+PfaBErI88sAUZCEGxku52au1GU0fPHr5eCkOfZ4WzZG200=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEYjHtMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEYjHtMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBBFC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785758433;
	bh=f306ohldcJOIVRlLD9XdeFKifamDeIu2XFwFwCkjNzw=;
	h=To:Subject:From:Date:From;
	b=HEYjHtMV4AfNOaRqsBswdFea98kK1nQcHnxXsSJdceYbFf75iv6HRMqJhBX7XbJgm
	 nS0bPLFf9deXpFNRkrvWbPc/j5RUKjCSHbb6TsVWrK0LdZnwqgqLFD7LwmN4yJ1ApD
	 Jv0rLI2k8H5fcwo1pCqBQTu408BdbarKj1zKMKo/eVZXX84I4oz2CDCu1Ziqck3TVf
	 SHsNKyUhSYOkaRY2zUtioHnSfpRrK5/+FcXa6KVXxEiuLnJaXAx9QxFumIukIch6KK
	 3ISRFB73hRMCflzTrWF9TO/LFLgO71/4BRSjkqMkSnw385rN8rlqVtJ4FIBbOks1mt
	 R9lR6GnkRdP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE030C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575843370.13911.7929654382302512785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e769a1d9963a8d689879ff276b024eaafbffb9c84152e6ab63ad758067cc4e9
Date: Mon, 03 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785758433
