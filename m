Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06011DC994
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753846793; cv=none; b=YnHiM6oC3LDZcLY11QETtlFPH5dQqGKvKg4/SbWhSnj7mEqJZOV6cG/nOWoSLc96QnNv7R4rljcilonQMu6/gtTrKIyojX1a8T7j+zzv2cRlFVwnQ1uNsq7qCn9RtIH9Gu+XWu6SBFZSRRTsGPD7PeXED6X7FnnODg9bAHkt/nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753846793; c=relaxed/simple;
	bh=4QDIHH2Fs77zSs3+6Z9XnF8zJKM2uvUSgMgdw1ONXOg=;
	h=To:Subject:From:Message-Id:Date; b=QGwIM1g/PdVg+B487TxK+tDM6BUsPluutSj2rjbDVLvOBW06yHupcD2FSczN3/fXmncSkvxxTdrhoDwaStxFWsd95Xr/5NQfZ2U3KULXW1XF7Ud6yk3Vz2rHHQd6NKIXqNCKWnMx/euD0cMt9lEtKGy7JDQUHMfgX9YF1CrC/Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KytetwYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KytetwYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF7EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753846793;
	bh=4QDIHH2Fs77zSs3+6Z9XnF8zJKM2uvUSgMgdw1ONXOg=;
	h=To:Subject:From:Date:From;
	b=KytetwYJsK3z79M+Q8hCoGRT7W61jZA4zM0k83sGZ8DL0wwEwAcgCWvBiMLILuQcC
	 goBLASdO4uUuVoXcU5/Rr+g97tICRGZrtaVzmV3ZujxhMi6GYeW3Kc3+fZUG7Nshkr
	 8puHDBiBzVy/4CNKCl0EXww/Ru/A7yS1wH98OKVet+1xdf02KXa2x9iv25T+5fbd0i
	 s+GvMwGz9K8n9WYfJjL6K4SDDrepwX2V9uZMbicgnLvGV+iILyIO3gUnxXz9fwbPSP
	 LiA8kInLnp5FEy/vrJFIUAm0MSNgYWx2AJpzTMdVjHOUtgHJZxsqDcGdj0hgMFb5ZS
	 zO/FlxiphuzZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C372C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384679362.31091.2800017204739871617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468fade3956866f1d6af15154f124c9579cdeea310d99e47028862133bc9b44c
Date: Wed, 30 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753846793
