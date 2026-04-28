Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAE72D1303
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777340254; cv=none; b=q00Cn9sZ3FgPPlcrqfyRkHwner4uupdLltCPJ3PjFtG+LOWXtpOKV/JxZZTf1UIuIIhqTaqGwuJxhEXhc3UbkVO2WIcH+90q/tJY4JjNr2BtMd0FzDR3oQYSIZvfBKx6OqfONkeqqP1UWPpa+xyG7CIrNiYjeztIG0h2xgfhpQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777340254; c=relaxed/simple;
	bh=viBHCFCYcAJ0cHJKQvKxlkHAzJ9rKyUDJsvsotdTu4M=;
	h=To:Subject:From:Message-Id:Date; b=jcdO/01t0GtrrIkoUIfAc7zj3+1UpIC/Jtd0qlXFUDgWpFxaoleH3d2QDqh/pYRkvCK8Bgdgrq2PIBITTatwQcHy/HCnJUv/NymwWw6AaSsUcmKDuWZFZMgDgfvhIwkfg0ytUN6cGBvlBbPoTBb6RBDkNQSL4zLomc9ZURWkcHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zay7mXmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zay7mXmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB7C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777340253;
	bh=viBHCFCYcAJ0cHJKQvKxlkHAzJ9rKyUDJsvsotdTu4M=;
	h=To:Subject:From:Date:From;
	b=Zay7mXmIG6NOEsfAdNDhKTh/19rFeux0Qr5nbVgLp8gKHs6G/YFTOtKSTvVtefVaD
	 7WYuMCPVGOKKq5m7jiELSwVcWUldDzgECZbTevlKxDHPLCcKKwCeFEwY9uLZ0OORdU
	 UXOAk4L3RMnryNUTy7SCuAABmI66jcUhJBlamwqTLml9JpyAADW7DI6I6hXYDN/8VL
	 cX7lw+V29jY3llpxk2HEax2my2k6kJN0l71R/eILtmcaD48rvEcuqYaq6f1cw8qsp1
	 hAclM6m3oVaN7UA/wJsW1dYp3UqJkFC5LxdKE8VqI5FoutkzxfBL+BwEa88zKuLjfh
	 vw+XpLwuBOhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC7BFF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734025368.26578.4799644906576295375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4608b6a2c9b306f56b27bac7d15b9fb9f9e91b3f2bcfa9692d7277f7ce1e2865
Date: Tue, 28 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777340253
