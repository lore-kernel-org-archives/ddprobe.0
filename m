Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E56513B58B
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747712994; cv=none; b=XbD1AVZMG9JMgr0uMmA3H6SGvdnKDK/YKEkMNDo50hIfbH6fZR/fMVwcK/4qwZYIIno4umu0RZqhdklct/CLaEDW3zzep5hzdm8aCH4OeBLE1VHlg+GUskGPMoj0h9CswvTXoKiHWIxNfXSj1dpPPih5x3HNMdaA759upKndGs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747712994; c=relaxed/simple;
	bh=eWsBHtdvMbAlLg5G0U4EVwPoiD9DKXwP1JCngNBkmZc=;
	h=To:Subject:From:Message-Id:Date; b=DpAq2gfSslJYBouUlg/k7FzBjpuhtrdAwxmlE5XG28nEZflx/NeOURDMbfX6rpPRIF8Ftt46VfH0nmeprT9S8EZt+BEX/A6cYaTjD6X+ZGAT2BGRAYvnGpXVazWQUC2M7nFfMqicr46q2HYq+65aNiiFu0CpxhqqKKb1bqtD2xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLfyN57V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLfyN57V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC3C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747712993;
	bh=eWsBHtdvMbAlLg5G0U4EVwPoiD9DKXwP1JCngNBkmZc=;
	h=To:Subject:From:Date:From;
	b=rLfyN57VXci0YxuQg3x+jEvL3rHq0qhvsjjqMH5cpm9mGqh1BxM2bIHcdMS3bbhqg
	 RCP5xRKUERB3euD4nDhEigb72VVygh74UjgOCuVnDHNkpULXLaud0ISoulHf1QSepH
	 +0kIqXb+aT2Cbx9qGYYv515w9Up5fZsv0a41S/Gd/vmjFSTLAxZOVRmmAYM+dT8b/0
	 LCHfUSkuNBEQ94wNZjI9k39Am20lFOs6l5RSYn9gGSEkbLALryoBpsNBoHgj8CgSmw
	 tO9ZYOcVHUA0V4KO96CLue3wmWRVuHfnCU+MmY9YkmLBoTTG7lmVp5eiX82fRiYhxp
	 ODd3xI4Gjj0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AFC54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771299357.17471.16548007015089651552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3039941266e340dc78f352123e17371de7ab80563dcb38abd8c05b500a002f8a
Date: Tue, 20 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747712993
