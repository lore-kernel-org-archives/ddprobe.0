Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430EF1AF0BD
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734086754; cv=none; b=tBSBx7N5HzaJZHPRCFvBoHdB1L5NB6COaV2bgowGr6BBBAakVNOafRrv6bMxEl/KKA7ZROggK8FMdi+DHE9/wYufxna/iQymxmHowFInGSFa86nbKdKYOVUp2xRdMqOD3BRFPmHKZT71FEMmrJf3CCdCKI4tSbmgz4ppb7Cm6Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734086754; c=relaxed/simple;
	bh=xrNGSKH5bNBLyYDbeRkXuUKztVqh8eL8arpNHaxzNNw=;
	h=To:Subject:From:Message-Id:Date; b=Kj7VOGGMTVNV40njgyQ1kTE0NumjW2irEton4dkxguAin+p1Y3jcw8KFSwQNlhdSINTzMMf28XQiwbI6tFcL+v/R4p/01OnDyMjiAqoutM8SEVvLnN+7NxfkL+YA67Y+HY+G72Ml6PlLp7rsxiRDeKvRVchO97Y96L1OPkZrqwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxg+Jb1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxg+Jb1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2499C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734086753;
	bh=xrNGSKH5bNBLyYDbeRkXuUKztVqh8eL8arpNHaxzNNw=;
	h=To:Subject:From:Date:From;
	b=Jxg+Jb1h4g9eLSWrmZxNrVLGVJ4Gm9d7DK+nsVMhtJBOiQQPy9JdZLym/Kwrssb0n
	 CTiv9r2MqzQnVekDICskYJRXRScA3B+9NbAJW+zOI/gXWqyRYb91BRqei/nn3yTBT3
	 TccDg3GUvFoYRXRG6ZJ611p5qCy6S1ikSG209Bx6WIIgUmwf+0z6T9t5104c1UGKNe
	 dF1il6I+3ANvdqrQxWtN2ied0+CAik1vg/JznWefKi3TVp/ahx0ScAITKKNQu2OnPc
	 uqDAngxn+RwRLr9//IT9O9WUR8cyre0wS36DlnN7amCrKCQginkmlqf3f2lsKSphgn
	 dYpRnv5MiL+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDCE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408675368.20403.12756045362286271943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad5b0f9594bb13dd221006d1ec3ac555e347e025230733a8e3e97dec4491794
Date: Fri, 13 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734086753
