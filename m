Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344E976035
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734800154; cv=none; b=ns5hmo8yLrs3h2R9UysRPyxFRk+MB1TxCsallTLaArqd9Nc7B4HBADDgMcve4c5Gh0ju8NQIXwz07wq9tCFbQ2EnQL5NpfLJT/9BJR8RYTb9JKjADrD9uRUuYTtRKztjTVxRHSqIeS0P4uPbpjmkBeiJ1LveAusAJf9B+xCiK8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734800154; c=relaxed/simple;
	bh=YeiYbW4REog3DyqgVHh3mMZSkQOCjz8ndqlYgl929Rs=;
	h=To:Subject:From:Message-Id:Date; b=HGdHMw+eeK3pXyI2q19Aq0xGUgy8ABLmmVfYQTTdDloVrUDcRoZ1q1yqOspO1+/fPOTbGUIIyFxpjPjVyJnWWsetkPo4EcIRaR0aLL6XNTlOgJTgvfim5/odp+/94Nlf22Pz82OFhiYeC8/apfEH8Cy8icRJCgztoHjRRODkxOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsu4CsTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsu4CsTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97ADC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734800153;
	bh=YeiYbW4REog3DyqgVHh3mMZSkQOCjz8ndqlYgl929Rs=;
	h=To:Subject:From:Date:From;
	b=jsu4CsTaX/aUb6pqia84l+vS6xLD4Qn3UCbdeMDrrg5kStJKW71MlIAmUgBJpbHpU
	 d+qlX77C297XRyRf5mRIIvcKhDN6zlAEmJhtQhKRhi32eupNzAPJEh+M7Rp1kt2gBu
	 g91Rt0lq8naboW9G8U3VXEgu9Akp/dxqlaBTg2wPQQIgw71ihjE/jrH2Lr/nOS/QW3
	 5SDZ4jS0jLI+KHClNL9hLupCbTXKQMZZq8BTQDywODyjuLlw6ugyMHEnUmergGYexl
	 IFn63w387Vt/oc6LRT9+xVUIiHCg6b7QVTFiq5TBp4ba040KZ1Ki1QeVphXmC80qJE
	 UwEwpwPYIOLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9EE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173480015361.6351.8528532115883894100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0332ea72263d4e7e892991d5a32ce6f72ae7d862a62902410aae165cee0055c4
Date: Sat, 21 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734800153
