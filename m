Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA69191
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728951354; cv=none; b=Zg6lkLfQmPFAdiQH2raXp+LguahsLsqsriLprm7ye96bU9axgF6hjh5QW94UqIjXDSQd5rY/1Rw6R/Gm3DVi1IGXwxSGX9jocwdKkjCEIsCHJcNG7+ycIddjXGGnsuFS5Eeyc4qXU/xOyV+7t1ywF6xubZWgaUYc1ZBumw72afE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728951354; c=relaxed/simple;
	bh=nDHSOeAnoVda+R87qDOEAr/mjbFCsFj4AOKWPOMkLz8=;
	h=To:Subject:From:Message-Id:Date; b=QEdUa5lyzqbFFA2ZBzG85/YU/m+cHNYJdx7aYi6GlZcRpg6PBcneFsbFHANRJ93SEr7eIigLIHNcJNHM/lqUXSV6yOjZ2HY006lVsf/FKfI77Cb06PjCO9w+wc/jOkxWSCKObzRnU1MSKCUEKlb1/keDFAgmuYKBHXSqviZnz/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9Vm+1H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9Vm+1H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65BCC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728951353;
	bh=nDHSOeAnoVda+R87qDOEAr/mjbFCsFj4AOKWPOMkLz8=;
	h=To:Subject:From:Date:From;
	b=G9Vm+1H0Kjijk3xqmDwpbVxr5gTDvRYUbEeA1t9tNfxyRHbEo5/fPAnneS8AkKals
	 PuIA/0z2KbvG2RkBwCac3vGkB4IqPFPHvmkY+ERvHnYGKpUpCPSkByx6HpapNURg/u
	 d1kqwsU/qrEwkxqVyucVMx1wW4Brtb9s41jwFjM8C1WeH6QCjyf3/mfEpFg4Kz558z
	 9EFfumtc9IN2oyhdXE+AwUTXhs4gLzbye8u8xqOBdHzDlXzpCtjzuPCv5IUFa/LGKv
	 SPtlv9LoEjIW5NzstyX0CUXA0XOM+BKITkKopaOD3A0/4MWIVbdVJeGI4M9X6OEM6G
	 qsyKDTQFwdkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688AD18157
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895135360.14839.15673163817986320690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2343168f7676911fddc2b55fb7324e11ae73873e468cbf3ce30d1b694fda76a
Date: Tue, 15 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728951353
