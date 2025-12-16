Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2EA32824A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887234; cv=none; b=oc7vQM+qSWNz4FHDmeu5VYW/+z01KLjICkGGqoKCLA6QhxCgyXOvjPqvJvgDJH5dltjPRoKT5e1aDEulEcRKkx4VFSgqHiGFiiL1gN69D13LVqFJ9+YEGaGOSEkcXYGKIVz8Bv3XwogvzSpNSjIarzLdNpipqp4tbxN4hXt2JzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887234; c=relaxed/simple;
	bh=MQAksGUN+aiQng7kQ9grxyusDz1YpuQhElx1C2DLjqc=;
	h=To:Subject:From:Message-Id:Date; b=I2QCjH4hH/3I0bDYMQaM7DQt6Cu1cqMgE2RbFYSLOdFTkdrsLGvxf4jdVfrLYZ1XiWXkvbRfLOlKxT8rm9nmp7PnFXPbq1mdJHZsI34kr03tcaK40AamV4JFGeHN8GYf6VXWrVpcy6UntXA8Inb5sETZ7tLB+a7Xdm/KqGenmGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTg+CJQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTg+CJQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E63C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765887233;
	bh=MQAksGUN+aiQng7kQ9grxyusDz1YpuQhElx1C2DLjqc=;
	h=To:Subject:From:Date:From;
	b=GTg+CJQ1q1gSSWz9IrFpWY2V1diqMVc9IEvjGdwy50Bclb8JYZRPFTIlPU7ptlKqr
	 ezdZoMVlHdie+xZACKR1I7nc8DoATV2jbybeU36PB3MCCicZqyZcr+GyK7pVdHLuIT
	 f7bdF0fdnBN40o9rbvla/w74vO6ThiHC5aeszqSCYwWls33TfGFXWTxiJzY2j6H1+7
	 fnlGCypwLPffTOGPW08i4VjEugLpNMUiDj79KPpQ+2VbhAqnJyc/uMmgSziXB43AF1
	 N5Xrrwzm4QcFCwph/whZDd+YnojsKdlq6b6UWE3CLwbkGoUFbTtoW86e0tkvuEexsw
	 yn/8LFcXjRI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362DD5E146
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588723358.7217.4447904130471599059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebaca2991d9cfa7b09e7da6f0ff13e125058aff6f540206bb657bb8b5d26419
Date: Tue, 16 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765887233
