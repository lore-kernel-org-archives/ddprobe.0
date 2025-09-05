Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243BB20ED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757030994; cv=none; b=hrfRvwl9+3NS7s6dMSLd7QP90CLv+NDUeYHb1rhZsWtHRqrEi7Gqsaszht/6+YEG2kb3fuchtNtO4d7+6xeTwOnpEEwL3iKTnN8WX0Z/fbgrkn05e0A1+SFDN/7vslbLlyO2gNHZmMhcd9aEdBT/1JIaeYEiVhb33IDzdorfdfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757030994; c=relaxed/simple;
	bh=lD3H8Pbtk1+bXeUiaiyjm9NSmUcLY7hwgBB25igs3Dg=;
	h=To:Subject:From:Message-Id:Date; b=OqTHyV/y/ekjPUYXGe3m2IOILh9om6YuZziiIW/HXI2pqI6DBbnu32PuHWR6V96zKkKE0l2mz3PN21tzVYC53wL3RzBNqBfnQKn7MLJul8ijmrJZcWR68vyPk/93kgeXUpVc0fv0oKgAcxCYQRvFRrZ9S6ih5oySjdKVaex0xCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghxYLvh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghxYLvh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8ABC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757030993;
	bh=lD3H8Pbtk1+bXeUiaiyjm9NSmUcLY7hwgBB25igs3Dg=;
	h=To:Subject:From:Date:From;
	b=ghxYLvh1qDOx+6KAqlRxWlwTKHLaXCF5MvRrvm97ADe9Zfp5UV3v3K4gJtgvZUffe
	 kfQaUIG0/Epl5N2y88T+4kWGT4J/ajAbHFS9NOhrK1y/a/+O8+2JFvUqrEVcOdUeDv
	 BiAOGHVpNz3Luf8DOjIz/LXlF+DGcBlqt9922ROEYcaLvNqctxQN9CD46PkfyjGuhD
	 KZCVIL/bnUJcTJs0fRcfug9fdhyORMhzInN0V4hpLDP/aq20tr+0ovN2I3NYc6sgq7
	 +9/8xCyEeKXnzUXIIQ5RkPv/aOsMiDSUTmhDZ1SulbCmOdwJ5fsXdXFAzyO2pCHt2Z
	 xSj2nGMQ/jveg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C08CA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703099358.22609.10670732889444301998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e673f629259ceb7bedca03d3ea90171a1a9034acd5d7aaa2513694cdc3f5e276
Date: Fri, 05 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757030993
