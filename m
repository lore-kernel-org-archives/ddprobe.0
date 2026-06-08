Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355E7312832
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780934074; cv=none; b=tCMxG/HRooZirkpcGcCptk00pi+pqdGi50MId4jtnZFhX4WmyVoWb8mbrVRWcWGhouxGE06RkT1DkrVy/QxfghFaME0ph2gdECx4/Z3O+VCNz1JopAd6P66pCZx9UM+fgSKXJFac8zRFy/1IiCFM/7CODJnYK6yMFsZ+4PBMZ+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780934074; c=relaxed/simple;
	bh=/P/48e906VvhFRROasUXnQpC+oTXlm0E/L9V8tq448o=;
	h=To:Subject:From:Message-Id:Date; b=RuQ4FKpoqQ56jy0upoWP45yvNtAU/q5/ZJqGOKFd6cj0X/aSaW3ODDb7Evn/WMNbFj8eJICupdyixYHpt/hDsN2V1F76YP+eqQVqr82Hvekj2+K93uwB493l1tdWFxDB6yJZefzt2MqBo136mb+puWY5XHC4MMfK1Ckcdw0new8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lildCmXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lildCmXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AB3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780934073;
	bh=/P/48e906VvhFRROasUXnQpC+oTXlm0E/L9V8tq448o=;
	h=To:Subject:From:Date:From;
	b=lildCmXJ7heaR9cHKbbYcFPOfVDFCL6tlY2nhvaDeiZUU9exuLiESKYzl5WdEO7Np
	 kGmdj48EOcvu8f453ajCkIoXepbSD+ORbkGBLoNEwLKucE3F4783m3f4ZEObS4PgBW
	 WJnW/XDbSoJT7BTx9lxd/vJ/piTfPNtHFMTEEp+e1nCxw0jECR0/0IRaPqTFruTopT
	 4TAYmrz2dbQx0ADwDEM7iZGtZMv4cY/iorZZGlIPKebYM92OthqsTAvGXtFgHT90jU
	 dKfQ6M7FUM8fq/LyxFxEHSKIhKOcw4IjTy+3PazUwVu4RHhfof4+typ5UCdtMy0JVi
	 Quh4nPwj86jaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DB7CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093407373.28180.6886004024850572876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0590a377ee4ef50ab3e31be169d98d43de2c559068d9c42784e848c7a2ff03
Date: Mon, 08 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780934073
