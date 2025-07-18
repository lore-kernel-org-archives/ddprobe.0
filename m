Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB1A273FD
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752868794; cv=none; b=qDhpRdkavRDYIfCoOMmMupnie/gLwsyY2XwGxBAMYWozHqXudkmoUvO0HJYeiuhgCpiy2tj3Uj1OTd6FlxYmXZFCh8UWWP9CVlxw2TZMl7wBLcJ5S8rsruCDVMuVpG/kVXmhzq/C47Wpwe3PCBb4f8OOENeSUPIopGl2HlgtUCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752868794; c=relaxed/simple;
	bh=uJ1zDuNyzgvWGyGiIPX851LHHezZ90W0xinMML6xhbk=;
	h=To:Subject:From:Message-Id:Date; b=FUM8d3bQm4HtCfm3ta3b4z/dHB3v6Pd4Xpn6WRWFcrvSjyx6aobjAjs6NzAppIXwFwFqX2psaT8hN7UescL/Fl7XYNI6YJ+H0gky8y+XRj1sJzwGKmwSgeBN1jJdHAuzjlE+o4VLu18nwukvuFi+lda9vxIbTbMM0WLmxLm9Exc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIEJy/37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIEJy/37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D93C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752868793;
	bh=uJ1zDuNyzgvWGyGiIPX851LHHezZ90W0xinMML6xhbk=;
	h=To:Subject:From:Date:From;
	b=kIEJy/37JRxKFTfS1k1j4mL6EsWF1IBdJegyuOyblSsL4vi6GxlfDJ6/ENF1+y373
	 ezGpcTgJ3QTH/ucoJi6MGBPPwhLC0Hj+9dZGBPLHlTiJVD7WDGGpM4EnX8RT0yp+Ra
	 W/JE4gi7cDvKe4L5GR8KdlmkQONDHZTkW6Z9R+ePTWbLqYGXDZlYNlbxE8NmX+WY/v
	 MpvaBnZZvNc3ox3buu07MENR2bD9QhfUEm79BscPFnpP0E8NkW69HeqFAh67g9DhGm
	 O8bhnaN2jIWdqZ9h2pQzMoSCaJybXDviynDGMV9Yk4PHwKbSnXTaC+5aPZH825Bu4U
	 RuHhVt11u5Trw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F06C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286879359.5095.15634612641160215434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f8bdaaaf20b17c816ce41e51b62cd6f057ade1018272fc91af430c47c63f01
Date: Fri, 18 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752868793
