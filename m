Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790A317FD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718283503; cv=none; b=W8EiZbVMblwcxenyWD/ZC3hAHXB8ZpU8+YKynTHFxXrfFT7HCdpER9UUl8nC/r0g/Xb32fbGUjRBX3/xdY1tipeDAC+v7A/Hr9dXOhN7VQtZvf0KNffGcuXF1CeHTSCo/ukXgH/hjB0st9INRVC/qgx1PuyYpm0D6MJcpf8Nd+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718283503; c=relaxed/simple;
	bh=MyotGs1lwKmkH39idZgUtYxs87dhhksGnic06pQpJpk=;
	h=To:Subject:From:Message-Id:Date; b=jNvYlfTnuvgfICwrr+NvhVrpS5+SPHcaUV+uszHeSyP2Y7eOsHyqVuv9QST+GLhal1XJ53AwL+b0sLLxVaO3Km4EG1Wm9IZJBbTtyrvgEhmvMIGuO02KerizjBHStNcq3YfVk9KjqdniiYMo02fiBevAQxEfrTFQA41QfjH96WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2+Hp0IU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2+Hp0IU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D083C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718283503;
	bh=MyotGs1lwKmkH39idZgUtYxs87dhhksGnic06pQpJpk=;
	h=To:Subject:From:Date:From;
	b=a2+Hp0IUyFSk8CbKrgFhBfiAdKwBLsAFKvamzOirwFl37+h/KnoR5E6ltZ4ZUG8tW
	 Z1gxDD31wTObl0CmkLfiDSTfLITOZ6dXE5jihFswBMRi9ZwILwJhtDtEtW53Qukydt
	 Lcs0oln4kbKLmoBB2FWEX/vUC3rW1z/Rk7UOm7sAHo7ZB2APhppt/DP4vPOvlSX+Wo
	 mYRneMVV08kH1l0GUvhFsxkuMWUBs/BuAAzWyoiFNbs8eG50VR7mx9H1KMzTbMJHxV
	 nzrhQIBK6q7WJPXpt3seB9v7CWRncT1q6vvgAx3GK2PT3oG/QPguV2HKJUvbae9ZMp
	 8GESUD/oDEFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB42C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828350281.26206.15910336124535350283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00892c61e9c969cba3798dbdee3d3d6bc25839408b0586479e96cfef0e59a44b
Date: Thu, 13 Jun 2024 12:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718283502
