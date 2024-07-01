Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0118F5D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719808463; cv=none; b=WfY2OmbMWAo//l3FKJvhcAOR1nSVHLjZX7m+FtImgUFms7k2krLVtxuDH6J931lwPPZKTW7W6hP0d3zpPMSuoRMfvma0dAY7MB0M0JCjTpChIENKHHO/fYtg3UlD2MUloLSczaTqFpiwt1+8czNCVb0ndSQX480b62grlJw0he0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719808463; c=relaxed/simple;
	bh=kvB00Rk1Z3dFzhTi4pfpAT1l9vypbrEDZ8WWw+vQVAU=;
	h=To:Subject:From:Message-Id:Date; b=QJEWUcvtcNHVma1fvoq2PBgx3zUeVHJjtoKKh1xFgpWtThaF2itiM44FJCuMFijBs0WMQyshSaEaf1w5xm2mxo5Qbmc3Mw1gva6UpaeTvkuiA8H7OtXBZ8UAkI9umBX2ixUGLlR6823ldwaO9l83UmRWle6JZ+/2QvrhalfD6mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbyKUo5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbyKUo5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEC5C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719808462;
	bh=kvB00Rk1Z3dFzhTi4pfpAT1l9vypbrEDZ8WWw+vQVAU=;
	h=To:Subject:From:Date:From;
	b=qbyKUo5eLYuOl7Z+7z369fElMfYoC5sElf+8xNdtrWPwxap0r+Zb59M7ZcjaJt+68
	 +DX8baQpQ0YkcR/RkvninVAsHiWf7mYeu42tcj0FkAX/CyQcdS1B+8TwyHzWomYe4k
	 Jcb5pS6/DYrp8bn3OvtO4iVujeU8WrsYgd/A6Ja4TI6/XpvYd/rA4kYT02pWAt4SXi
	 wRfXT5a1C1mpggcpK81h/i3JbqvK4NI9Xw46mgT/UtCZzrbMmkN4XFIk++CqyiQ7ut
	 Q0BGwHJX2lOquujLZhrLpHBCsfJnLGmL50/v51zRqBfd0WFfi8UwC86p4lys60zOdx
	 dEqfbrDv7GTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EA1C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980846277.8649.6005900061790111438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd86eec4c420910d525278a8922c7be7b04bcac56a55bc988e6f8312030c919f
Date: Mon, 01 Jul 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719808462
