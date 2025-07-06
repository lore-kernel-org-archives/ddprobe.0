Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D818635B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751794794; cv=none; b=YVvh3wWzmzkVOezop68V362l5LmyiLpC1bfrA9prb8+8Jdsa55rkjFEpsBQTSbntYndSFjqxmA04NmU2yTGDNW7A/VKRAzXUP1JXS116MsNDtzfBw5I7QG38NKJbTAcn2rmRFIlXLQFH78BrBdHmcQTiH5lyT5l4a3wajyeuR38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751794794; c=relaxed/simple;
	bh=Chyv6tP8Qy8RNVPQK5SN66W6iiRwGzPvZDjvsYb14Lw=;
	h=To:Subject:From:Message-Id:Date; b=B1bamRMFn7B9wp3eQQCetA/5JZVzUWWgt1STw5i+vhTyHws6aybSMpW8rIhwm4J+gkJ9h/9AHmgcxDHkapKlNtuxAkTDr6GAsAjTQTXO6l/eo0pXuZIVuNxmrmDGq+NHYl1uWjSlm3Uo12ocb2LBZ5pMsf4EAui+wOECE/vjv1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOSioarM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOSioarM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1155C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751794793;
	bh=Chyv6tP8Qy8RNVPQK5SN66W6iiRwGzPvZDjvsYb14Lw=;
	h=To:Subject:From:Date:From;
	b=HOSioarMR+k4N+O85qIYpmUEnahI9mlSk3cmAbkRJ9hgia4W72K2+BSdUk47rAH1B
	 T0yE46jMY+8LozlGiN3vmbxF/+s+Ws99hNIIN3e1q0j1oro3rqPcNld/dmPXCwJxxk
	 rANQxdj+bkuhYYigpiQvAlyVX8PO17DYOdWrFhspXhiPwdQNDWrCqQg3rChLJb2WwI
	 jKMEu37IDG06zJdBfJRhqKN56E9QABf44cx4VcZeCumu8qdkDzU1bv2sj0c0l4OcC2
	 PMySMakko8QVDNrln50JnOmch8NOtX92XYHs3IsrVYrPKEIuYnrpV58ui1XrcWB0ip
	 suT5SJF6imVBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E76FC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179479357.6932.13689825801553038939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2882ef897774ab09331ed96a5e0d9821544b21d94603e808332e0e5f8e8fdd8f
Date: Sun, 06 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751794793
