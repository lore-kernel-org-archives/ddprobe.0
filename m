Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E518A6CE
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742641794; cv=none; b=Kna5Tx2NP3waMqqi9b0TA4WFhrVxGfiDaQs/mG1aq0/Qg3amX64HCctLLl21tGRt5jk5n6fwborJnYI+GZfViXM7K0+aP00hpSGDSfTC+B7TNLGBG34MFbE92TANj9wsZUGTd9xoIByUzpWMD9KUCVprsJE3qvE1SmuBbcumJcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742641794; c=relaxed/simple;
	bh=id5dpTfjBypPJMZSGc+honbF28yT4l4NYoGpBGLw+x4=;
	h=To:Subject:From:Message-Id:Date; b=L3hwaWMiU6h1xFm29JS1eGaaYdZUdskqABgutXdGAAHixq330kJitZjjSXduNWxUlZvN6coGPlWdeUUkkDPBN0hYIRHXu+Qk8Ft+ST9zeASjAnyfjGEhS3cIhZz5FG3nDfCme0aWmrrKRue7Hqp4cGvrsKKzDfOqMGPL+INUqWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Swpp72yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Swpp72yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7639C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742641793;
	bh=id5dpTfjBypPJMZSGc+honbF28yT4l4NYoGpBGLw+x4=;
	h=To:Subject:From:Date:From;
	b=Swpp72yMPjE/GnAQcCR+qFS48D0hMYC0TQAXgsYd9PObnaUdoSknAuamRRDPmlVjh
	 UQYjttG7lxQqz618PoID/7c8ARvHuDpVjI67Ln/LRWNBpBlFKZbfq1z7Cqekqy/HOF
	 yIJ65xr7TlLi/tedcPy1ud4OynA6tD5hDzsvFMrhc5JrP3e5tc31yRaryhhYAkUI/U
	 iZ2wc4WzE7GYATExyciS5vxmTiT8O0Sw+iX7PaZLdspoLhX6VVxZC43R5dwsB0eJlG
	 q9IkfZ3NdftpeJD8DlFLGavRuyTCNPp4TgtfWEYqizRLRSa9JOukV3RF2sWHDHRUyy
	 SnP0lpFCDkqoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDE3C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264179362.4055.17865452891597339774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de19ea4576dacf02c0d395db35c27855211ca0d4d201caf5164bfcd3ce66cf59
Date: Sat, 22 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742641793
