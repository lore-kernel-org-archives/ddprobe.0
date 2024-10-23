Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2857D14EC62
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729674354; cv=none; b=Wq2R7x7Tk9RQT17AkZidKEv7Qv+Rcp8fKS4SU1TNTD8YJEhrYChdES5Jg1cqSVtgybwX1Ye1chL+TyCVvgZi8QblLlLXaFU6NSRSp3/uHotx+RnKkKp5mA5yWRXy0JrNMbvtkB50TFz4If5ptq/IJwMdbRjvtvtOwUYYHWMFHfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729674354; c=relaxed/simple;
	bh=wNcMzfH63w2/SBC1rm+tuDnqBLKmPbDpZ67AHTK1bUs=;
	h=To:Subject:From:Message-Id:Date; b=i7ggfvTVEPhqNk/6Vr0Fdhpj9IRZqdTxPZTo78Xtw5GMzjyDLZ8Y967RyvQZ9DEG5UBk6Cx8UIA3JIAsE21I1C229JjsjYn2yQdDuQwSNS/YstzRbk3AAPlshj4LSsghWU2lkt1/iZmN4vAp8pAHyAjVc49EEJiK6BcQeCAVSjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb08wTJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb08wTJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE625C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729674353;
	bh=wNcMzfH63w2/SBC1rm+tuDnqBLKmPbDpZ67AHTK1bUs=;
	h=To:Subject:From:Date:From;
	b=Tb08wTJ1nWks8BiDVPri+pv/5+I93jSMKNsOGSy1iXRDu7tW8vOgbRfAdAfJPVx8G
	 SLk1Onn1Eg2I4MGwLTmxgmSd2tAbUBpu6gpAvOGIqFzss2dr5tseIxQ4R5obLmBch7
	 wP+990f1bPcNVTZAq+cF5Ks90N+hLDTstGEdw9nykNd4IoN74EtaQot9/HzUavE+ft
	 xBAXPKAzDYuUhqX1RcttgqI2wwPQDyUVBMc33T6Wb2t3HAgpaNsRKSEBYlnQ29ALgC
	 SYNR05Q6q2dh1dvxRa1+NoPeW6sJ9TkZKpq9uKfrxz/nqVOVQd61vRs7n2UZ454/hD
	 /joKZ2LPis0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4737D2E029
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172967435365.20353.13755947370987435096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94929a2fc91b1da08c8d18a35117bd4fc631b1754ffc664581229db3f9000997
Date: Wed, 23 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729674353
