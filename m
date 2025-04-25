Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3DF1F3FEC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745570994; cv=none; b=JYFhnPDAQ3Vmmt0ic+zvR0m2mH58hDfqHxUJFKWjn5jnHkq2o7DP2lhzVWGf+i0Y/zr5f/sSvSbgQiTpPBKXmw2XbsWqHlxzM5jsPEuf5QnQQfv3+DXcaTI3kaMA8CUlciQ6w0FDg7MVXELSCeZ2u+ssBp/Dbf2Qm0IOSEMGtUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745570994; c=relaxed/simple;
	bh=lSusHIhZl9GQ6uak/hmpv5j5N93lcmoGja7zw0WJVYA=;
	h=To:Subject:From:Message-Id:Date; b=Ua+x0bIryUIiqsB9E2uxZ4qGmUQRjOnUqDTavAn8QOmTSabe1G76je4z/5EcJ+ZE0o7fdEhKiAdztRG5ir5IGT7MCRqJoj0E5ogB88sXifgw5X8oU+c/zCEY8oagvJHNCa64H6l0QyrdCJCLa4rIcwWURniOFtv/PN88KphYs0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQn6NXfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQn6NXfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B22C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745570993;
	bh=lSusHIhZl9GQ6uak/hmpv5j5N93lcmoGja7zw0WJVYA=;
	h=To:Subject:From:Date:From;
	b=WQn6NXfW3MkirS2xman75TFyu2064VrvFMbY67BqfBt3bJz2jHZeJBTjB68/7+O/c
	 5AZjz746gc9tf+0A7yJSdQA+1VSN5qOth/VXxxxuWD4Ur/sMBWwqVf1Mi3FSYm9mLv
	 nMoSH4G3PEySv9GTtCzUarOK8eDQhS2ELKWbx1l3lipeA9pvg6Eo9yPxVzkkpvdt8w
	 /HDHQtegbCjCDl+JvfFYWjNhpAcs9w/fdeyS9F3WtL0vHM4VxwnwuJ6CZbjFW/wcLH
	 RfODNSfWFrcDAhV/8hl9ATZDcwAW0V81ZVyHFi+63aoLNtxC+guH51anw8LalWTqws
	 jERCtOqlN2uvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C9C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557099357.23074.13840967069940239139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd8a2c2089789d7a44a25bf32d640458d3349059774514b8a9ed67f1fe38b17
Date: Fri, 25 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745570993
