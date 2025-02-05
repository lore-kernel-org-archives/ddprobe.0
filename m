Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0DA215778
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738797954; cv=none; b=isN/g3Twa9CBeKNpux8nFcHhRHbzwOiBPBC2U3HChNHq3/ibhqr+6oVTiAgun38kSV5J0DFlSUWlooD9j33ywJ0WzVM3gTtWgndwTgLgr9qYfRL53FcCW/vBvDIQolVHyAfoJNZCRxOuff5gYrHAYUPTWBD04QuHPv+FsIEa704=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738797954; c=relaxed/simple;
	bh=7+O+qAJ6JtrUtfY7ODgxAymBYFwMSh2b2j/G2+AJR3k=;
	h=To:Subject:From:Message-Id:Date; b=U5ZFz819c8uTIG+gUzmvR+nfIF9469W5aRqRugcRfFdPpT5vYg3c68DOu1S5jr2jHTg/pddwZXJ64Oihos53LM9zcg0kmLx/UmSWUm1nY79NBuml0m6djnYZTsTMX+6m0QJHPvZGRuFUBrj/gTS6VcS/K8XwY3tenvVdw5gW74U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THC6f7xP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THC6f7xP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE52AC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738797953;
	bh=7+O+qAJ6JtrUtfY7ODgxAymBYFwMSh2b2j/G2+AJR3k=;
	h=To:Subject:From:Date:From;
	b=THC6f7xPVbEjL68nP8dd1v44yMrWekxplnTFbXgG1OkJuMk5unUASEYJu3926cQpy
	 vaeU0OXzCsuxVPF2qCuhOkl3kLEAEw2yd4RaioPmQKboimRQC03aw5ZHVK4wigK/Gv
	 2yOdrU82ZeTJpyP+Nm5omLXJE+5cqjb/L6etaOWaORvnejBBCE6neca9J4S4Cp78W6
	 8Sz55TlZmzywmIeZF23DkC1okHus/w0soobOk6H9x8W8Y8uYicLhyirQ9iOCEJyV6Q
	 usgvp+L7f9fq/zshAK6kAt2QGIRLJzhOt5tL2FH6VNmMNqKsfeA4DC+0hRfPMWf9Fw
	 eUqQS77kHQ6dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A6FC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879795358.6020.16961396509253661597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a866e2760944db33d40dc09d9c7eaceb32e96351549121e311a01f8e4a621c
Date: Wed, 05 Feb 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738797953
