Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296384C6E
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573394; cv=none; b=Fp9HuCRJfxo1DzlX30Yn8pOVk6TVojAPdtQ56ccZ1upYq3sxBO/7Rpd2HXJ2DkmH1s4OsNZjmfG7YDAke+tBEADZkL07rn0pdjlPhM3BqVAdaiUUXYaTp1ptIKh0J/p2yFolOWxmj6lPOFqGYfR3mh/4qORzYhyNXEJf3d2VzOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573394; c=relaxed/simple;
	bh=KWVgJ3joWLkpSyzHP11rent9F40lJMA1M6mdJBxnF/A=;
	h=To:Subject:From:Message-Id:Date; b=Eao/PccETFf6dmzrpOffqnVtaoe4SFM7fcQ+x2KBdG/Y1+IdiWdtJJTIF25avFsSZVk8WFh6aomW/uV8aE6hLFUB5bJSe/bgwq8/4KKPwY4+zd3vgnKhxGZiU/kKD/SOh/EChjHnCZnDmPR1TTNAPwTcEpRCvPM3iXURdMYlPxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUFxKXhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUFxKXhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745573393;
	bh=KWVgJ3joWLkpSyzHP11rent9F40lJMA1M6mdJBxnF/A=;
	h=To:Subject:From:Date:From;
	b=dUFxKXhhanUjK9se2e0Gc+W7Vjs3z9JGWWocsI8kxlm6u3fV9QDAc6tg1rFD2HFMb
	 lt4hsOW+vCmHYuqJarl54kUEpGQ04e44DRESKKQVTWatnNhAVMibGSkzQxu+q+jOBD
	 Cz9D63pWHvMjwd3FjvCLrPKxAGGVtPRwL13AvK9dthDpRpoEYHToSCNjxSQ5msBAMm
	 Ccxv5lhDTYNV3gwNmwMIaaUefG+SU3mg72rjK+VV8Z1sRd+pgUAcbqsixDr1VfC7p3
	 fwrHFQLRi/57qXqaPb8bFkM30lYaJCxTw2k2ECNqrw57kEiXEANBn/uEiSHWd/uNmw
	 d9AMOWYALmnBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AAEC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557339358.16826.1704047845743606287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022add8f836869bc6ef6cac739e888c7f1e20b450b041e6eaef8be807eacb44
Date: Fri, 25 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745573393
