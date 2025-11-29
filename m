Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1549536D4E6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764437574; cv=none; b=NHQUC9WNR2uiuC2r58bf+Rnb9AoMs9cfxJg8gOR241lhNNRAvq5ULKqX2dnGxg6SDgB4M4i50rFKGj+5rXkO7rhLeOsbPv1Zxpvc2GPS/fec5Lk0nQDwFmhT47ZKB9AKv7xdnSGruYuHPFXUIyGoAvsw/3r7LuJbHzaHH4yYwc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764437574; c=relaxed/simple;
	bh=gt85Mb2trEVukEYPbfy2te2wfbqP7cMH6oLsmWjxiRg=;
	h=To:Subject:From:Message-Id:Date; b=T1W3IanQxthIvuBAb1Mr0tTikldXm3/uiqoHdqFxVF/QMPmbLJkYmKzb2mbEADEHkFPfrq297MnwXpz1U8WvHQxG10X1juKNHtgHQFySji87DeCtJhUCDJmftCmCbDWXdpvcCjlTLit34jiJpSPSuQEBDIA4hKRechs4AdBOlLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNK2MMzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNK2MMzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71EFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764437573;
	bh=gt85Mb2trEVukEYPbfy2te2wfbqP7cMH6oLsmWjxiRg=;
	h=To:Subject:From:Date:From;
	b=jNK2MMzpEGSh6BAVOIkX2REcaVvAviPKUupZXpuiKizdsBLQUx2JzfrN1KEOsDC1Z
	 o2lBngtMJkdbDUeJ3UYW5XDy8ub9Fi+NbOzmDw6GnED9iQAIshQ+QsSR4moKr37zns
	 3rFwVwAijUKUP4r1pfYAaR5/jBR36sFl3OUtgO4pHX5TnME/NxQdbZ0M2NHOodtdn7
	 ZqF9lIQsUVH98yJ/T0mDPzx/ES8oiqv7Ow6YXmsCa29rvomMXCDP261V8UCB88CmVi
	 34SwEogtby3mSlB7qQ93CX/+Ti6Fu+zDcXeF3PHpfVGi93kUoPZ3sleyb4oIdmsSE0
	 oBgUduT9KUJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822ECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443757359.20769.2176128200287197137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c294518a67ddc4f856d3f655ad3827aa0b3e113dfec00b7fe6d2248a0de580b
Date: Sat, 29 Nov 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764437573
