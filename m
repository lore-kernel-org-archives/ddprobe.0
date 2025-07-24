Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B201E3DE5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753375194; cv=none; b=PfK7HCPPZyqzJubZPSKxC8rVSYQawF9QvtUnMS+lnwINvzSSIc4z7qRrFvTSqAVoA1ptr+JOny6Clc4Jg+R/+HRuPxfSFgMOi6U/4G1kmvycJAxwxNvVLDZFLEwlx42PPG18PgqPNiuXN50pU90GBLVY0z/uwsqgF+Y2Trzj6aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753375194; c=relaxed/simple;
	bh=vyuuYTM5YZZPrVzwe1bkTpdi1iGslUq6IoIgahJMyM8=;
	h=To:Subject:From:Message-Id:Date; b=LUUbQz/mY6ul9lSogpHAAjXl0vzj+0dIhcNR8pp/92pCIwMQuNuFofgHtpz0VTABVUVEngbeyUPXdRaAfOKDgdoSd9E0AvCUE2/wa6GeSfhb6KeUG+dMDCClPd2fowkrC0XOSyO/a6n2Y8pRKr5dtlfvZcVQMIUFhqGahAfXwFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8r8PxpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8r8PxpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C23C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753375193;
	bh=vyuuYTM5YZZPrVzwe1bkTpdi1iGslUq6IoIgahJMyM8=;
	h=To:Subject:From:Date:From;
	b=P8r8PxpV3+z2ElMNTw8Eq60+p8Ebev22NtZakNOTuGv9AC9owp4OMbivNuK0MLfKO
	 EZQE5cW3OPKdGk66BCPaANGOg1ZtXgdbluRmBgc1LhqSpt5OjJnTSkkela0jnd9ilm
	 2GMrLo/0gd6/idTwW276zYgFvntLtkVAPI5wclvUZWbx3CQsd2GaV1g94yPEEmjW5A
	 e7T51fUrwdCJinXsyE3eZ3qiB8qAZZOT3+1FPfJn1T4RBIMAv68udFyV4ML1meFpNj
	 FxZYHc2lfNBk+xY4X97GP2WxnQdKdM6D4oH990QoNEOOBOs6swoIusGLza8EPKwAOg
	 Y+2+nAuuoiPVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F924C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337519358.12899.14576862330613596408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d9357d7aea41766ca49ba67c19bb105397f7124d84b85d5205e51a3c4a3be1
Date: Thu, 24 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753375193
