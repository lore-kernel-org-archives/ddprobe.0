Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858329C351
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770025434; cv=none; b=rZksml23rRIBONsepaKKEsxl4VAdBAcgRa5nQrecZFwXY858gwZZIUuupY+nehrAi319gOWcqua4VGQ8zk0dXWSj5yUI3EqoUPQeDNHfU+AD83acMMC5Q+icGXQDqymwSeFcXCfu2OIO1cujJiqUVIBpZj01rgwkwxxDRGYTQxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770025434; c=relaxed/simple;
	bh=mrzNUV+J3/GYZgs5OlsYazbEwqbBrK2og/aYsnLAyc0=;
	h=To:Subject:From:Message-Id:Date; b=fOaRyCgDQRAtcvws1kPWz0+uS40A+9k+XK50Hdiin0ztGmo4M+g9JGco+9hNnSyGYTTosJeSezMndN4Q/dNh/+A4fCDxn1R5FyZyqGK9KCKjSYZay8wmaR9HD2J3XC4vU3ljmFEfS07ePRj6GvPefNW6AwCbagtS1oCmQMqYd6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxh8Y6BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxh8Y6BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A03C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770025433;
	bh=mrzNUV+J3/GYZgs5OlsYazbEwqbBrK2og/aYsnLAyc0=;
	h=To:Subject:From:Date:From;
	b=oxh8Y6BPoEfbBmC60C2dhaMr8Z2QGTof8f1z+xHJxH548BXPcUPW7qHns79R/qQ4F
	 6NZQPURZX6wop1AztY11js4Ftz9zf7WVfdgIQ0oK62MAd7zv2O++XCoJhNTd4Pj+fW
	 D5je0QrXOBpPnT1tGyk59jXnz181oq7X4Xy+Nm2TwnMPtrQVEnDvgy2QFw4te6ACPz
	 +0pR2nWQM6G3e827BRu0AhgMlNevimoCK+c8Kmq1BPifmIXpvVmoY1a+FxwiWbqM4R
	 Osvjupq3e1SHiMCXCP7TG5WNVOVCDUfxGSozYAoNgKyQBqmiiKxGrFEc37g62FdD6l
	 vV4fTt+MF2BUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C4BE73150
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002543364.10257.3162515686770399079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5680b5b6d3ab66b93a6497f95cb53ae3bfd8cd81b8a179b8b9d8ab59074ab025
Date: Mon, 02 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770025433
