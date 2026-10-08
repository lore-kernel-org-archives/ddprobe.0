Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FD34B95D8
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791471034; cv=none; b=E9zlnTlO594pRQnhSr9dBbUtMvatSl6DwIzLUSJ8k+cNigBlxiS+PIO7yz8jG48wQaG0sE3ghEYcGbGNd+jOBYuUUEGozTpcLu2g54iSlYY4ZZ92J5li/528lJTYK0QHyai3NFBAsip5xr22ypxlwYKzP+tTKTEC/bRYl0EyVXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791471034; c=relaxed/simple;
	bh=K1q1HTUMSWnBeNCwGX/d7ri38UnNpypKvcEYmlVN1/A=;
	h=To:Subject:From:Message-Id:Date; b=q816jFl852Su9zRW8sCsw4cShCdys+q+mXPdkv2HRPzpbFfsVKfn0emjYWnV3sF/2ejFEHtONnbPXMC7pXLYQ5Mj/rxhtfNfVCQqmMntk+oNIDN48GBKXVVPLdFzwYZTmAWVfqevWDi3G9W/S19vbuV7MeMMxqleoZzV4pQd+Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qyc1Zx3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qyc1Zx3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB300C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791471033;
	bh=K1q1HTUMSWnBeNCwGX/d7ri38UnNpypKvcEYmlVN1/A=;
	h=To:Subject:From:Date:From;
	b=Qyc1Zx3npowSQMz2Bfb7akWhK4EAP5EyRQzO4mN+LQ2d9/aJUzLlbmUZi+7mHYju/
	 i3yxxpbG1hPFBU+juVfnmYLSK3j7wGCGbBGytGYRBvjfXK2kh/80mvb3JHR7/jUEXE
	 pbjM3Dhego4D/n8Vz6MptXr5kZMrbOzELbTCNGq9pS8fX+u05pjz+E5FVStVFgkfw2
	 ceG9i79/ouEITlf+B7exK2WuhLYYizyVjajVj3jWVtEpIl9dCg2WcAUDnADHPLXhot
	 hZt271rlwJkm4ryQreyU8fY6/E1Lr4LPMDmp6P1AXjNYEgBA6AgjVo4YH2ZkuSSOVx
	 2Ix+8OKyQgneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B639FCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147103368.13698.3894501790125856104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d555c779aa65616b7e84c79fbf9d7e873674185480613fcf531aca4688ca19e
Date: Thu, 08 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791471033
