Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4197C52B1F3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789767034; cv=none; b=QnGGPlH8gYK9MphVrPyG+UJc/7jBj8O6ja124J4knN3spotvhiJYAxsKqp3XJi7M/HmO8VzssAjlVuJbsVrVlLEVl6N6czF8Wk7CJLQpLY1NeLxtDUdn+VVE5MVCK5UFzOR9QAgryDXESDVmdfIo+di3bAC9xSMflpXWgcExy+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789767034; c=relaxed/simple;
	bh=CSiKwEair6ZitAx83YV/E5zJQsfepE+jXzfE/Vk8zxI=;
	h=To:Subject:From:Message-Id:Date; b=GpxWhzArMq4ck/89oyNIcR6aQIRrJPxcqDyuM06Csrc5JJl54IMhRbIRc99+374K/cLtzLUCNmGDWNGVe6BtC4xrx0XvTXMqZScS+k+fRKBPX7SVV+XWfkrHU5YwCMggXiZlta52JP+Uoolijh1WScTH05axiC1TDGyVvneU+S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyMGNGPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyMGNGPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35DCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789767033;
	bh=CSiKwEair6ZitAx83YV/E5zJQsfepE+jXzfE/Vk8zxI=;
	h=To:Subject:From:Date:From;
	b=CyMGNGPy0JvB1MOJkb0N3/8NmzRmeE2C31Pw7AH3e4kNW9udcstXWEzeDnRK/vzXp
	 WdeWeQ5q2INjAutJnrjjyize70/pN3CZaggqLXHwuqhGYNDX6gidNHrLyZotddbJL2
	 AwhpTe91DP6R1WkMNjsIEF1FXjkjeqKYPVSNvanHUnMEyESdml/1exyyykbLhmWyP0
	 wMuRTc6v2mX30SmJ635VUd2j46sd+j1HhJE7CuaTgeNdGNieFZY8ZcxdOEUve4PpUK
	 i3umex5OoMZj1tmRHvUbOxWaYk6FqMqOS/KiI45FxGpKLDz2HN4KxZlOOE43k05wbO
	 PP4Y5BkKu4PJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD1CC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976703369.3149.15270806155274221193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2157fa734f038147ff8f533b7a055e5387e5965001c65b706726cb1dc75e08e0
Date: Fri, 18 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789767033
