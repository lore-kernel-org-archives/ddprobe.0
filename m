Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD92214230
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744045794; cv=none; b=dqsf+3niq1uJnjzsIDF+a/ZHwv3qR+3ACUn0VHp7hanG7Ze2vUyQ+I5MLno5emhWaeGAoJuBaq8wcWvPrkUqEn3XIs6MdatzRs5+VXBHuQE33EnxGugKGQ0WtCqEbURCP3MsXzsi9I50Mxh9WGgkYejLrH9wymc1mHzyRp6zPlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744045794; c=relaxed/simple;
	bh=wdleaFvCKknS/63Vaxfgv6aAxXylhyZD//44htxW8WY=;
	h=To:Subject:From:Message-Id:Date; b=Gr8o9/aoPl429LB0pFG5JimN3wDRFjSLZrI30zPGa/F2QQ9xl/AdEFxiCXr2q4mTQOQvG+1jhQk1PNM9hZilGyNnB5AZlpgos18mhno5b+ae00duzdtV8dXOt1rsGNqDxLcEbQHIK/w9zjqX48QvllujlcIUk8Rhe0joA1mushU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bB6oQbyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bB6oQbyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB350C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744045793;
	bh=wdleaFvCKknS/63Vaxfgv6aAxXylhyZD//44htxW8WY=;
	h=To:Subject:From:Date:From;
	b=bB6oQbyBMCqriZVmT0J/x92KqCrZjc+a6hHrIhSPxJyI7SsNSvLJ2YpVbdUMPE56E
	 IG4HNX4jzTos4uL5iMC/K6Apyn7myRuiQxX8L0mOkowKsS8gI6+Bf3m3r8mbdxl5Av
	 mxhesow+cwoFidp8ByfHrrkhhsK54gpm9KPrvYk1c4ZL/RBqgMK3UG/Xbdc//GQ8ix
	 rORrM1l3WcuGIU57J/4IvBj6Bda9FDhcBu+04VBhuRwUfyw1CglasVYT5PSMLnqfLj
	 6whHZxOnOuczfcPWcPIAHRqIDKybBIQ0YncmDwdHCLP96MzTU8f4g/F3j0Ag/DbRYH
	 FALhCMbhEkRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E78C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404579360.10334.9637723738850741211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2545ce917f284a984e1091b5a38dc17f478145c5b763e2b53cb0fd1e46677584
Date: Mon, 07 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744045793
