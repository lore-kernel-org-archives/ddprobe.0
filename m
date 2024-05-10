Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC0E1BDD3
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715362343; cv=none; b=AMxNScgN6g1CoZv9xmgiGJFI6hSdEvSb6uN1csptGFxcVpZdGrB21OlV4prOEh7T2HqxQ/P7UoOREZbwr3FSB4M3/R/WQU8gzj2WZMsB4noXBU/RjxxFubMGCV4ZRm5xgfDBI0ALkIS2oRJnnyZuAM6SpspSU2vYvJpd5MIZ1gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715362343; c=relaxed/simple;
	bh=w9dYGI6ys4h4Pzv/gn04/jA6r1jO34W7/B379a4MQSE=;
	h=To:Subject:From:Message-Id:Date; b=KPSEO7aV0TpggH9IvU9nSyNCUArpDPtUpJLEQR+OQfWnRq7Z8jo5AMtjr/hiFsarx/aTLlPPJL8HFEOunPIvA0wsH3VqxMboR9espljKyUa225FWBLnghTMX1o1wkO++DwsWZqD3lC3A4GLbuMnwG9Hzhz7pley2Zp6imLRdob8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz+Pf9kC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz+Pf9kC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BC7FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715362343;
	bh=w9dYGI6ys4h4Pzv/gn04/jA6r1jO34W7/B379a4MQSE=;
	h=To:Subject:From:Date:From;
	b=Tz+Pf9kCOO0Mhhx6YhCMFVpnBcsej9RMuSPPRYa0svLEO+Sh1ffKgPqeegJ4CdMlI
	 Geob4r9gxQCX8IrdfvRncOAzGkwtThBot4Dc3NKAMIrZw+5iSAdVm4EM1mf8RJCQx1
	 2/3wD5xH7dNVRNQfGMvlDLnX10uWyuOiU4uU8NF0GQwrcY9Tdh5yHx2GcEyOLHRT1w
	 YsTFdBZqURtmX9tMOaCswTHLuU2bSkdAVFkRpKSqkmD6QeAp4XQdwOSwDrWiOTzwtT
	 dwe7BVM+21UKuxihmzJuepZvEkoBAAj+u5RjaJHC8oEKZN3rviw3yFVphwVjd0SWH0
	 9aO4sRxyzrIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C31C25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536234279.21920.14938179746772710866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024e672ad4f28aa60ecdac21cd4001eaf814e1b9cea81d97ab4ade63aaf09308
Date: Fri, 10 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715362342
