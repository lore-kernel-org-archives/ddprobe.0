Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7BC19ADB0
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742648994; cv=none; b=Zk2IgjPvmxD4sVl+tRnlV06CKUAf9jSuHzNvOEr1gxyO5p9GCHn73YwWWXKgPAjz12kbZG4/2WmEbQT9RSjQji6EtBJpY7aXCY291S71bjWieamS3NcDNvxvNkrSYknJnVzEeyaxF80YZWE0BFnpPv9VSXG/3qys4frvLzZn/L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742648994; c=relaxed/simple;
	bh=wbDMVo0IOdRD5IAyjiXFL60S9U+7YFVLrQ6Hz6M3glw=;
	h=To:Subject:From:Message-Id:Date; b=K12j9o2ZIN+xvMdXFd/FqcTrn/6bFG3GLwpwLqld3/W02laaK4Oln8XwDryMgf5UmUW8/Rqy8cgo/b5Ya+CCwWMUMHHPDiBIuf3aQSc2MP5njTfc9f1rghhzvNlSCupqnlmJZOwcvw+Eezbh//wrwBt43g/lK0e7qwu96WFaGbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lffQd6EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lffQd6EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13EAC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742648993;
	bh=wbDMVo0IOdRD5IAyjiXFL60S9U+7YFVLrQ6Hz6M3glw=;
	h=To:Subject:From:Date:From;
	b=lffQd6EVNVggBsvWgOcdvl0aA+NYznekqZyWXuNubRXju2ug+xAil2X8ox7uCWD9p
	 e+WaD7pltLFO14qNhG0tGg71R6t8n0sq3WP/QwGubDMb+CyO51wGLWlCq2T+VbzKqu
	 aQnr481zlF2EfRFoAuIWrXFnvRWiVDBpn+ZvE3qomPwr+RegXIUJn67z16qcw4D4Rh
	 zLGhlmKOspcbb218jQtQVSORrv3H7VCZgc238Fo0GwAVDYIBEkfXz8uY4azFYX5xxs
	 xmcWAF8Sej0E5QOyN3fITN7bSZF52fXjTOdXKGOtvPn+J0rC6SWsHvjNH3yMMmtaPv
	 q9SP6metbxDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A18BC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264899360.27703.17881123226790661083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240a375ef15f796c89e336ce7ae98bf2b9900531c1a72f549e0445d6dfd9e163
Date: Sat, 22 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742648993
