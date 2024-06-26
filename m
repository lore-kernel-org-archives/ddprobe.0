Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445F6143894
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719425003; cv=none; b=TGvAbRXnoJLpt1wIToEmbWdxLa/9s68mypDZ/Tqn5QnN/ioFqej2bRuzZyRIELa2BC7wS/3NHvOcdNXiMvy+6SFZxlnXAMlvl+VYrUDbVnSB4+imzRR3a2MHQOW5vAjy06Hr0YWibqpT8b0klVWVS19vMLoZrREIpezqciQAsZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719425003; c=relaxed/simple;
	bh=haWIFcSpCGVfaVFm495D9ZT7DG52uF5+pCePsjdA+aI=;
	h=To:Subject:From:Message-Id:Date; b=Hcb9wKFXbwg+zb8pKo7PUE/h97VtRCmApHzJkG2+EbnpU47fUKru4mV972bCV32O+htNNQWBWhxtLxKMB0rPIDyoVvVvGVGk9BP3v/wMfCtj+id61M3KehySxcNnvt+JS8j0vzVGpDxZKwTDXHbtBxqVQIk74CtMQAXO7S2+TDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRpWntN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRpWntN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BD3C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719425002;
	bh=haWIFcSpCGVfaVFm495D9ZT7DG52uF5+pCePsjdA+aI=;
	h=To:Subject:From:Date:From;
	b=uRpWntN/0SNn68nCJno3tbHztWOmBSvRvVTmiD4ZP2x0UL2DzOGXt9iCY8zmrRg5v
	 CJmSShcaZ/A4UsBJSbLzHCgrY3vLkyC1gVDB43rjx12P+32HZiOBLMaNQeq2N3VltC
	 uhzCbmf6P7D9FK7RKCw53INWmOLyIqskG5GcOSo11vVwukeUQ3LvBiUUSCDd5RHJT1
	 1RKQa3beRkPaxMm0FNoT/7MHDhCshJgowCY0qtNoCVu+RnNqKYDndLoAQfc58Ek4Mz
	 9Llly8C8oIjYrLTppdE5HdZKlPnK1EOg/61vG2nO8QFV6joiGOEZu4iZn2L3rH0YuM
	 YBcFc7LeGnSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E50C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942500278.16109.12709987272260751593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f30de748c7e2b298fbaa6d7e9801f2c516fed9c00e2933c9da03f107cf850c
Date: Wed, 26 Jun 2024 18:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719425002
