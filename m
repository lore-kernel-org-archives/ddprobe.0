Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FC442E8E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785172234; cv=none; b=c+0hPM04+2IVd3MQRz3rx90LsLntHrkuqLoF/uA0AogFbmLFcG/p0AmMFRw+MvlhvszbYKwuGljY2SXYsj2acHySoJVzLgQjZYyNViQtKHf57rVMDel1WmgRw0hp42UmyIybWxBcwmiHr6/4nxMmtFtut19655VDxfqHYpM3GLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785172234; c=relaxed/simple;
	bh=rQhhKl2r6ex6fjN6KUswzXcT3D+daK45xoNSoRQtL04=;
	h=To:Subject:From:Message-Id:Date; b=aTdjqRoCEcmfiQ6uwr+2fHJtAC17rBKms/iDyv2Sw+XxnnxPjRjg8revsY/rGqhQEWs8C3MNqvBnY6haKUq+5yuraWf1rmEpcMBs2KbWbkTWGKgbkTGUNqRW9qIpHJo6QzNWelfUpx+GIfkHMJ8RrP4Z2Rzz/e8PF8PyWCHP/30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9q6nZME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9q6nZME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26FFC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785172233;
	bh=rQhhKl2r6ex6fjN6KUswzXcT3D+daK45xoNSoRQtL04=;
	h=To:Subject:From:Date:From;
	b=e9q6nZMEJWMDZftxonpAjT8H/btgMCNB9yuBtHLQM1c+k3B+B4rwfRGNkyGpuz+J9
	 dOorJmIT+zHFWYCbvytyO7qu+IN1h/a1ALbFf3z1hG5oOX2YJ/+SRYmPINe3fJDLw4
	 aa6lX3K+idn7ddDGN2souiBMTKAkFU5xEe3cr3Y2N0tYNfiNAJSovyh6U2THOSmbfd
	 hnDX5NN+Pb7k8gRCpVzIN0iO1pqnldB77RkYJ8AqyS8yp2LKiLRKaxiG8SpQhV09VH
	 pQTRYKcAQCxOdvjyvAyFQW1z9zetjvkXS81mdrtVstxXVyrY+fMtpcYp1gCmiqGNQV
	 2YzJOJK5bVZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DABC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517223368.19088.7295926397606424006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f779845bd1ef78aeca9361266bfbfeef39be564ff11e11e54a7c1a1092251ce7
Date: Mon, 27 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785172233
