Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F372EB1D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724640954; cv=none; b=T0gJs/gz5p3rLOMveZ/WDnWgOAYqr6iF4A24ctKGxvNjRhVfnFrgDJghWp4xZPA/s7nuSXbGl+9hTQJKNDqDiKwdN9PZlgv6vphXX2CoS/c654GJzl1VU3Y0VL75uPek+c2PcDKIj7jyyJCSw3BR2R5nvubVF+fu/oKkUTEMVAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724640954; c=relaxed/simple;
	bh=050o8vClITb1q4JuobFjgZiCi42ckRzCY5lL5BzTL98=;
	h=To:Subject:From:Message-Id:Date; b=o8VHMvuIhoSKBFR+dLodE+ToazLB/QKcGUTou6HsSFZte+vAB8HX4Jx1+y2bBAZacJTWpmBoZ0+QqSHcxNVjOBAxSkfyQFLO1pmOUWhfO9JBXxzxPtugle+Vi3Cv3oplMNZr/T/HnBntNkLd5e9z6Zr7gXZnCYeZl4GVS/Jbc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwgiDlg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwgiDlg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF8C4DDE3
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724640953;
	bh=050o8vClITb1q4JuobFjgZiCi42ckRzCY5lL5BzTL98=;
	h=To:Subject:From:Date:From;
	b=hwgiDlg3vZDJaJGDHcSV2ZdIE0UT5b8xqDKXVLQyFJeG02TbpKyiwzUscB6Jd27GL
	 t74RuyANJ7CggztojA7SLFd0Ji8afGrirQjkFgVcXowBagkDMJ5XtNsXymXgm/sndf
	 F4FOySvg6zUKJ1McfsaS9KTVu+suFLOPrQWTERRRWJHHH2p/nSMCpc7B+k3othjZKZ
	 GBp4qEun6U3HICvLMamswcAho3KqA9SWrvDRUf4FW9l7p3sH3vm53bRC0YYrel/0ic
	 exje7A6yEbQuUfgjj2OLcZ+WdgFLPkHOxEwDQ0OP4jhqc8zhhGTGGE39i0drqwbOCg
	 EWD5pO7MZAwkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D7BC5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464095360.6124.13953724687320154835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09bb25fbe077d63591dbab95010bda839dce04a1259c67758deb2158e8930cf
Date: Mon, 26 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724640953
