Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F26156678
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728899754; cv=none; b=cmE66j109iCTODzXnWm3vKLufmqM2k3oOFZALSGLBam0TAcuxjRt47BA8GmJNr0Wqx2RSGZnEw7Ypp68GJPOkhIzXdRH2DpDv+sioijsy/63gnT++gms1yEvVOR/8zzvrV1Sp9Udp/bIAfPKIuHq/ksjG5KuWp2ykTxbsJwqiz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728899754; c=relaxed/simple;
	bh=FC5DU9P2/HFxIqewYI9HCg6A93yMq+3+wHrbSfJ2tRk=;
	h=To:Subject:From:Message-Id:Date; b=V+q1SOACZ0/7re0C4/uL+jI/M8Uy4dejL0i48KlfnJIGGvpfY9ceWHbI/kyWSsdRB32uuVAljRobrXMkCNbHtzGnFaON0a0oPSrPNPOM2IUGMZ/+VlQO0MQvvui7vLD4fIR0dcyKqpo3VkhgpYwuMxBtlm4RBkZUH0AxvI3RK1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjmApLA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjmApLA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4D2C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728899753;
	bh=FC5DU9P2/HFxIqewYI9HCg6A93yMq+3+wHrbSfJ2tRk=;
	h=To:Subject:From:Date:From;
	b=DjmApLA1pcxa4TTIzyeN5Wux8cM8OJOyT0WBM5DT7jyuIfXvmzMhS0TXKt3D0kUN+
	 QNu6mRvX8o8lZQjAiY2ZULxCKUAoV1UDeXvXDvi/sUKzgcqpdpRA/yx39UHKcSlApg
	 UbJ0ebVVBiI+J97USN/zsNjTteK05lLKMFLeoRWAufr/RoByyGD96ILmL/YS9JFmLN
	 AqtG1z6GaE4+Dlz1CIUV+w2DFjXbdvlkK31MPJAfHVx5Y9EYniEjg9HRoI+KXJqJtX
	 ExvuPgSnwoosf037Y6V7ESAApr3/D0KE5TLTzjLqNAlhIeXGK42Qv8Q0c4oHT0POEB
	 g8BX9rTTmEtSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911F6CFC52C
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889975358.19808.8441262256420353181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20bcdd190f54febc2eac662a24fd6ead950adce4707d53fe42c0068aa59cd9a
Date: Mon, 14 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728899753
