Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7095E093
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719031343; cv=none; b=ZkopJKeh7SVX1gs/zeo8wMNC/atHt3b3L+H5HqUhIqNo5L4Aum7uRzcTThn9PpD29OB8XxcFU7DxBqBhj8IJB/5CL4HpX4lWHTL9aiDvVaAObWRsJZMjTuW0jiT2K9kYXEyGJ+PlFDJzocdPzbCmACg0qdqvX76DMmyxq39zJAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719031343; c=relaxed/simple;
	bh=RnYicE2Sn0SZRhOB1r/WekXKL0qYd0ZCDPXhv3ndFwg=;
	h=To:Subject:From:Message-Id:Date; b=dMj1kcYKM/i3NpQdOpC0aT+OsNSfQ9+ECdkVbG9zDRi3BsqHFdPI34NkolpeVF6vSHuBsxbaNEn9MaQtA0EzsJaPbhEp1WV4jPhfPaYdVR4eHBoiIWclnZJvryL8aQPiagxQz5GCmBMnuRlvhK7IcZtd0MHbLFbmUlOzN76Ki3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RegVN25q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RegVN25q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07F8C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719031342;
	bh=RnYicE2Sn0SZRhOB1r/WekXKL0qYd0ZCDPXhv3ndFwg=;
	h=To:Subject:From:Date:From;
	b=RegVN25q1nTC7M02tUcy3udmfPPHo5+YBc0jLNDbqNjbjW3pAciQ0v9tHlJeB/tYc
	 /1waR1PY+ZNMN4SCNjnYQMzGTcrMZaZbwCDdi2LxjPFHT28qSwYBle2oeowAH3jVSu
	 pSORzpcCxmhxT4bLtkbw99jSHg7Qt9ltDCMAWhASFyBOog7xXlkuNUwxRa9ka0TZxe
	 1ohfqRANy0jkTl8uSwPukMFVQs7mncw/XJv4LgzsFa4dTeZsbzmwLsuFPyRjLPm+jT
	 nxC7zw5bPXc772PGkssik4GSo2vcxSUrvr6Vr1TmoSyakxhCoVZKpZBDj32Fy/1+8e
	 VWVZbVwGhJj7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6591C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903134277.14155.6018090945924584800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176a6d8731b807bb3a5feb372a1befef8532195f80aa4a23908ccaef5e1d1872
Date: Sat, 22 Jun 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719031342
