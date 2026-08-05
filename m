Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC423A0E99
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785911435; cv=none; b=mgUAAhf0JD9uSF/A5Ch0MAjq9GB7OJu3tq2wYwGtAUf+D85wYTW6/G1QEiKtOO8YVkfmoBf0fdkGjaCnWsP1FYKdWB6Vy1X3Md+tg/2md8N4Wj2ulha50h13Vr82em0wViiaTiT0ddLkoLI49GwiTszAtRLF3dqrFMrY3GAC2m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785911435; c=relaxed/simple;
	bh=Nt1YycgwMp8PBYUJOh38Q1kkVQi9+K0XkDlPRtgpbzg=;
	h=To:Subject:From:Message-Id:Date; b=draaq+8Z6m0f0hY4mh6SqjwE1mDHbwiHsS1UyUQ//340JnVLblh2PgXR/8S9t26hHK9JiRyp+RQee9aXTDWkCkCfdVMCQKIeOUSju8C0AaHbHhaX+BkCUFPltyWykXrKBEjnXz85f0PDg++wiUu0ANO0FHKBaOLmbFH3o6GgUSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS0N0Xeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS0N0Xeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9962C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785911433;
	bh=Nt1YycgwMp8PBYUJOh38Q1kkVQi9+K0XkDlPRtgpbzg=;
	h=To:Subject:From:Date:From;
	b=kS0N0XeqQDsxPlzZZkvcV/MH5R7R64KOzxsbRPq2kK/nUK3Og8HRZz7CiEmSlqLg+
	 bJc0ouGU4OrSypu5j2xo9ElzsURP6+sdF1IaLLduPQ6A0hfBT2tY2qIgdW5wEwcXSC
	 TXXnx/uYBrRlOqKgSNNSyDvEfkI4bqWwvWSNwbvRGKQ8h+N4rd2DCp3jy2KIdwJAG9
	 UBAyil8bptGWfv/jOMc0wzGbfFlRZ6z/5dOibDP5StXAefm5Os8SAgn7jtVkcqXpyx
	 dxZZZzNRzl5pLnJH0mXyKR0Zah/DssmtuvkiA0QIWuPyXQRlh7UFKBfRlQ9nRACEdS
	 EKPs+Lwvz1Caw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45D2C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591143372.7227.12932588856399128403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c14cf34b0b85e9d6cfa3caca40e6e63c9e3bc23f0b8f0cc24f66946e96929c
Date: Wed, 05 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785911433
