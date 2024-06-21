Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543F015AAD6
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718991143; cv=none; b=UiSZH5ZF+RMMEmeFikj9vm+PdCtZu29vW9e3cFJY4MISPevbQRlHZm//f5nMDqK9KtwTlaSNv4P4aPSml1b6VCMSuqp4esYaDtMgBvcPHV5gpvpii3IO8vcT2zyjp5xfTRWn47E3oEKAXwui5ZfYAFuO9Tfxb+j6UtXs3X/HE8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718991143; c=relaxed/simple;
	bh=DIDt1bcThOQoCT9zS47DB74OMVJYT1xuSiIISHAGk4g=;
	h=To:Subject:From:Message-Id:Date; b=juv1HneP0dSOk2FfU3450XjeCCHbwHNrR0vPnduhbn0EPqq4SbEqpWWI/SINFe3KBvmoptXWrKawHNWLbf04iKVPqd2UVxDtWsA1JteRRzpHHoQcJRGfwIKAL4Uq3aLKQkQA8WQ/WRsp5beSwk4zS1mdisY0AUliYDaFp+PaYMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=girN3HKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="girN3HKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD563C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718991142;
	bh=DIDt1bcThOQoCT9zS47DB74OMVJYT1xuSiIISHAGk4g=;
	h=To:Subject:From:Date:From;
	b=girN3HKMgA1c0demD3+RCZRkkQIsBSo+s6JobvWUSe7/CvaXdsS4OtBYBpMoHmMnG
	 MEpDvkXnRNbTHMgS4lSyVGA0risRWNaL2GzlgmVRvy/GwHJTnxcXizw7iplR7cnica
	 +EfWUeJWVbIOALxE6+hNSz2xR0mn2e7sQ+Yqi8RavZbPerxB3pjdaCI3t7aNMEk4Na
	 1Plw3wptx3RbpMclixBE1X3nycxN7zR/+nm5I/WxIsLNcEwD3OLC6bjvuKxGNgbJwx
	 nNb4HNMnWHZgglYruHKAgt0EJkKhU7N9sgqNXLJealBLzeIM4fBa2XSgSGKlR8I+qx
	 aoslLpg1c5UAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5341C2BB85
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899114279.11487.15791686524403272663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62f94440d494968708b92bef9703b8b4902573d34a66c1b800ea8ce8581f3fe
Date: Fri, 21 Jun 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718991142
