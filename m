Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1EC4C8D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717206263; cv=none; b=lTsSR26YCqav35PoPyckJoUcxzVsYJL0qW8GUnBFlEuqit4MS6viirXB2lqnqXa4Pc4d1E2ojg685wpPhryD8uNjDA75yHYgtfAh9H6IGpPR45PUOOhj9Thzba8Y2NM1WBJZzzIX4ZvjFXxsuRB1Qi7FP5+ETSQH4Wum+iqK9g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717206263; c=relaxed/simple;
	bh=gGXfsSZyeetvrIqP5XRIgPdJ8LN02bogSLjMpfJS/DY=;
	h=To:Subject:From:Message-Id:Date; b=mhVKe438L5XHsmEuRlKSLw519fSu09lEdUVrZk+Un/2QxBQRyQIfSpiPmKn4All5ZFWqaLw1RWi8o2T+SVNhN3S4Lu3S8rMQ/u9oylAHfIBtkpvkJNfFCLORm92wqbnWocrZQGvatC2M026EbY6mykT9Tu2eyZiFc74zgiZETL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9YZ8NHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9YZ8NHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2226C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717206262;
	bh=gGXfsSZyeetvrIqP5XRIgPdJ8LN02bogSLjMpfJS/DY=;
	h=To:Subject:From:Date:From;
	b=C9YZ8NHZ4FUzaPCb64kRuAgJTxeBwL2vu9UHfQK8bhq0Vjd4l1L8nqUWel43evJPo
	 IrMgpscMWCNGRWrygSGpmc15p6NQOZqlxjN2oxw7pmdTU4ZwT+AnvJBhUwxIPoUSV4
	 /m6oZcfRN0yQ91PcK6iQSp7Wka1MWmsOtCZGJ2hSpPPpXu36vV8Mea2QNsuKikq8CF
	 jTRMN2CuxS7pIFj8l2xw1+WrTgZgO2T/4N983zK0+s2ay58Y1N1Um0uVV4ISDek9h9
	 9fQHWRNLQap4HToRkZ2mecGJu+vvE3BZFZbfoIE+KwHrXfyMLwJ3dC9bu0gVoeHCrh
	 V4fi0RFR559xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB182C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720626278.32325.10769987383656537558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65e58519b5491031521afc1c8353f996e719912ebdb29f212b889ea624e0317
Date: Sat, 01 Jun 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717206262
