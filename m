Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A583EFFB5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779972154; cv=none; b=CpaI0OBO0q5rSP88mtDROWQyHmH0pIEP4AMAAJRJ5ccrujqQfOoaG+xwj4jWMyC7LypYTztu8dAdAlkCUTsvgTeIJvoYQBofbbMAp0zIM50PWM4yqR04qzvxQsni7X/NjoaSfXThAdkJ+Wz5t9XyH/4AgCBs4YQjmcRA01ecetk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779972154; c=relaxed/simple;
	bh=9ci5Kjtue5qq/n7c41uG6+AfAvVZotv8xGPJzvEKheo=;
	h=To:Subject:From:Message-Id:Date; b=B7xEnxt2GaIQfj/imSxJ0y4q6WOuTVz+CbdfJQlQtsHekzRoCl+bhctZ1VqKIzboE9jWtFjBuvc/NWNSNards+Et3QwtYeXK57eElPk43fh2vRPl2S7/sybV5CwBzmusjKD/cy9Kuq2QJ7F2EgZ5EvN1ZFqk00Itaz5ZXg+L7mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTzGtvbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTzGtvbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF336C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779972153;
	bh=9ci5Kjtue5qq/n7c41uG6+AfAvVZotv8xGPJzvEKheo=;
	h=To:Subject:From:Date:From;
	b=fTzGtvbS0NonAn8fI60iIAdT1uFyHeFabbxU+wlMhCwXminryi25hd0CbWf9iZK0Y
	 5DZJFHzkb1t92/MwIgo7mkU1hhCjFjhI3LHTknfBPQgL3wHYQON8/GTx2J+nwWtUAB
	 Xmi62HmZftF5DdcV9doqJzaLQyCwjzxJRP6I2cg4RBr2vhB/qI70NhDpmr8aWHdPM7
	 EPmI1gjRF3uvnnfBkynPHWIhf96YWDpi6ObWqgOuBtsiOznl8PirJuNsg33+finX3q
	 GYj3zbLo2aAgCjmtfE949Y+UPrj9E5JP+xplME3rTxfh/OvGmDOo3WtBzQZcULwB2W
	 rYIfKQwbtXFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB0CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997215368.8175.1781405474978965541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba4ea4fd696fbebf0dc0ae8388c94757457af6c2403f82d4fe75f7d6ae615bd
Date: Thu, 28 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779972153
