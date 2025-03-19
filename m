Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473F61F8BB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742426994; cv=none; b=lDFJhsWKg/fbM1B4h/tsk4gwe9Hdwp2jCCB0QiQiQWCLjHckZPjAjt/H9u7rstudtcZWu3LA/3xMBSxYyKuMoVWdjikMTWNNRFC/Zp4wjOxDmaVGqn2/11XH7Y3NXdHpSHQ6Uhc+2wFpH5X6p2vGF5BjdUSsMDON69zpERYGicU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742426994; c=relaxed/simple;
	bh=zRhFL593iX4+b23SaSiwbfCHW59vqmHCXcRYcWSL02A=;
	h=To:Subject:From:Message-Id:Date; b=MQAz6sIE2JbWaOxgZxtgh9gWLGgBRJfLnpWqGJFmSE1/LXNDQivpwoyfhIUjpWL0AC3TdKffzyKv/P6FB6MM/dxTCby+1Ysl9E4n03Q5pj7pC+BwG2QhKzlApxiObMvDQ8yef2J1KACr5stALaCtI+WB86BQ/ugRg96qTMNPNHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJeMBkEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJeMBkEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FC6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742426993;
	bh=zRhFL593iX4+b23SaSiwbfCHW59vqmHCXcRYcWSL02A=;
	h=To:Subject:From:Date:From;
	b=UJeMBkEfiStAS/fx0gmnJtxlUrpvAyTZyAdY/4FC16BKbZq5Zs415lVcsdD/bzUoA
	 OkindIr0qde1AKH5VHsvgn1eUEMD5QG9cWcFyZqylAwlHzpvIJUsTWC3WKzo2R798l
	 x15qHsvdrxcWSdabjXjWiMoDaeezmvyZOKJcuyqd1C/jKAx4Ik5wQLEv1R9278MsYV
	 qOfspzivOufI8cLelaKQDoUIgr4R3Sxk2Ce7qcG3Mpwm05+Tm5Sex5fGfhg4y/qPLv
	 e54Y/ND0up7o89mU1mnLChTkt76jR0DW7Ezq8BMd4sxdt7TIcNShJhmQfRhLd9kqLE
	 GFekryOEPJusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A941C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242699361.6027.9384670989006066852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47c12bd9f1af86cb694a2b89261be35434d1226432f9dec130655f87d1d1597
Date: Wed, 19 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742426993
