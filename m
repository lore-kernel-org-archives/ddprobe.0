Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353E92B2CF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736345754; cv=none; b=ictHIGVZHGVEeqU0ugR46LGi3XJrpG80MMSuDs29EPhnQh8KTKGwzleq3DB+0zQYaTV7MboHB8SxiQLgSstVmBjfcAEP4uzpM5G8zm1lwe2xP1/fJyJwIApy5rT2AMdWcWOMX+FwQMFHIUdPkHqmDXJja6VOUABOBtNKH3xDjGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736345754; c=relaxed/simple;
	bh=6hC/jZprsxmHN2iViGYjUGLSr3ygq1RU68Q95lbF/eg=;
	h=To:Subject:From:Message-Id:Date; b=WQYZjNIXfHfDWs4KpNvHPEamemEyRlJ+YuStesXgkQ/rOiWvaEPq7ODp3SDjQ7PzHCn6CyPhBWbZLmv0Bo4Zz0f87UHVFjhTep6LNoKvyCWfbI2WL1YbrnEbhuMptj6Z57r0rs89wUO73m0gAYvOHvS6SnXY6tkFbyDipmHQVtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9zoIKSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9zoIKSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAC2C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736345753;
	bh=6hC/jZprsxmHN2iViGYjUGLSr3ygq1RU68Q95lbF/eg=;
	h=To:Subject:From:Date:From;
	b=Y9zoIKSK/DvPHBzIgBGRolTYykIyjy32e3gsNdoy4EGYDUiIw3iFzZjc6ZIhF3ILj
	 rd6DY68ni7fSgSf2AV1XqLWmID4OY57J9NEd150Y1uMCt3t5BnfOnHb71wpkBd8KIb
	 DEX34h/ROQgNEzzg/lolfbHrVnUyoSdCs+/eujsSjCXQgwdYDtqkKq1LOlDz+D2Poq
	 KM5kBEXe2CMsJW8ZSSrhxP4DHAK0lgHQh1qQrfYZ8gDrv0yK54la99mXXFmwuFO1dQ
	 +pnFyCPProxS0oP0MEQQmJFV7tdfyMDAhHmrwseO9y9jTnJH6mfw8AovjJGYH6yL+U
	 eFS7T/EpUuqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0655E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634575364.31418.2686377336099203190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977b4b843853d5cfeb5cec4f63f4322584e06012f79d27315dcbab918e805f5b
Date: Wed, 08 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736345753
