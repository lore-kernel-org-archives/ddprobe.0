Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D5165F16
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779786154; cv=none; b=qTyxQbiT3qTHiBZHH6WwkPVHpbgn54ISIZbZw8prpYKj++aSrfsEWi8TLIkba7HRPepNQvCzqHVziuJFMpAepfIrVhAc39f1nWYvaCu7dQ4+1UcioOBVmRHBFHXGhd/Q5q0vn8PgmMNq5MBkZtD6WkcIbhFOWkcQyDlN0fb1Prg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779786154; c=relaxed/simple;
	bh=mHwA/KGRUiAka0CYXTLP0WXh9CUlGQEbwnNInyKNsN8=;
	h=To:Subject:From:Message-Id:Date; b=tXM9/816F2PvMl0lU3bHQvNJFw2uifPSGN9iVIUKUT58M4BAslAYvLlJmWdnsCC2G/EnJpzIvhUbjLWaM+NHrpr1Y1OyfxSrp0E3xgoViN26G2mXp0nnCLkt+WlJBVjOakkOtdGMoKxezsRIN4ZuPSCemBD+EyE9gyYneAN3WSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bhu+RTYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bhu+RTYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5843C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779786153;
	bh=mHwA/KGRUiAka0CYXTLP0WXh9CUlGQEbwnNInyKNsN8=;
	h=To:Subject:From:Date:From;
	b=Bhu+RTYjHZ68WyNalngmuiiBjFQEUHfthdoXtraUCiK3U44eHEj42n8G35PVV7TEW
	 kg8CVQ5pDISbjsyt/lvC3lxN0vU1GQYN58deHrywMw/0i0XuhlOPFkUId+JYmT7o76
	 agn+RnItk7F3rcdUwzfAopT01UdBP6l+6TOXv2ImYNQQTK75KqxhS8iKkusZEfhOJd
	 yUh7+Nhzzsfgde76QKKQ+9o6JPRu5QUfMxknK402etoFteOtro1FYQiqYVpou6B/gO
	 vRs52w2i3+xhpXlynAhczLthfm0ttZ4FKp8WfP4sz34kWN8uFFPu0rY9GILV0dw3Uk
	 wpI+3GPqcFUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA233CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978615368.14115.11922769587252448548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccddcb434d9f53320f8c9307b3fa6fb92dc4d2760fd1acd532429e64635bcc13
Date: Tue, 26 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779786153
