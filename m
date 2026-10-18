Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47029360ECF
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792314634; cv=none; b=qi7vzEPxC9pQnTfU6t+uMfd+h3Yxo77xBMXGKu8E1BuXSTNEJVKNnP3qeTg35QjONnvr4qRB6GG7fnDacng3C6YtIdx1yINtENMHjdeJSwm/T+hNJNP9kj+zkXfgr1pqXzCKrZLxA0nYt0sOq390PxxtrhrpzADs1LHQFVhrHHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792314634; c=relaxed/simple;
	bh=Ky09R6BXXj8Pyg72NfHfthkOAHgYrQPW9WoJNT9hUwI=;
	h=To:Subject:From:Message-Id:Date; b=qCEQzCabvjlewd3R0Q1SLeAhnuYmtjbG1gkLnONyzwHxa+42mW/0l5AseFO6YMBXsNtrBCzdfoURpHw8hOYrnYq3X/rcncrU0TSJ4LZ4Nebk4hl/hhrx04S4xGB2/UX8NdXBog6HCCtQ2yGElIIgRa4PhsltzWoJ4UcO642yU84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wht5BLxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wht5BLxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB682C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792314633;
	bh=Ky09R6BXXj8Pyg72NfHfthkOAHgYrQPW9WoJNT9hUwI=;
	h=To:Subject:From:Date:From;
	b=Wht5BLxcjTWNve5rQUuAGBWf91LqLIcz35cm8YOdrk9p2YeJKocTZoYGehr+OXcEg
	 bRUDCKPPCgcOBPOik3H9w9AaoTp1YTxAYJ0gVVOpgkKYtRk0rmOiAw1pvcQawHgM5W
	 ehAA1mRy+4tEK3KY3Pg6Eks26ZrMxAc+fgSJyFf0x46Yc8MkbE0jaEv7HByf21waTc
	 CniTiK9tJ2H2NK5JyZ1g4sKwMsNi6H9Jz1i/SgQwSq/YCpktAJRxwl0bRq7AvSEM5e
	 MPNqi/95Ldf8drnaWIsK6cC2cSRgzNwp34G2nDc5JVo4UC3uRh+w4NIskYWCvp+hrU
	 VF2BjwO+7Sc/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C97CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231463368.32307.9203382174302515300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c944f96da0e7f661bd43036b56ca8920e72c19998fdbe9028fbafaef49334f4e
Date: Sun, 18 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792314633
