Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C093BA240
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773065093; cv=none; b=TMnP/H9/eIrinnXB4ZUeMzmvk/KY5yvP3vn4ow8H9u3DHW+Gz67lGowX9jGAcqbVUf/9EsGZKL5z7r+J89RHBM5Mr9pSTq9JIT1f3yFvPSJ6MfzZ5YnDMvPukiaLiEiC1IgI60xb40Z8UhgPigGyvGSuUj69k7Q6SHd9F41yQr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773065093; c=relaxed/simple;
	bh=0n+m3v6t5PofnxUwT2z+sa7/pzQYQMB7drYKPUTaw+M=;
	h=To:Subject:From:Message-Id:Date; b=RE9C1rcCWXOHtvq6MRaPjLbZFsDqNG7XvIXsJSjnDuHMdVqUZYTWhe31apnkEr2qAVJUDFD0cfdtlV/Ic7o8P7FC2IhGvO2kjhEgZAeBOIfkziZRCmkXDK45wk9getmgmEpZBwdusCkQkH50U22p67S7MQwrATNui3Fhm7PWdKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzyFItt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAzyFItt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A235FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773065093;
	bh=0n+m3v6t5PofnxUwT2z+sa7/pzQYQMB7drYKPUTaw+M=;
	h=To:Subject:From:Date:From;
	b=aAzyFIttAPEmLHeL29sDn79jxfrjj0q2CeOaYUo1Fv0XQplx9IfT1Yc5uXYP0NflE
	 XU7Pvp2VPWBSEKG/8HeXGuiFBok8iAo7qJAx+y2DZN/bByM97hEUTI9EX/z0TT8J0a
	 RGJ+30Mnwf2HlP10Lv62kCy8lJax4EwrBbqy3La7vtO+zczcw9IZSL3kU7RI/lJnmf
	 FLA8Oem1lyT1uvVlii431pipBj+IaT0ZovZ9VESsjcy3DA4AFDHdCuKbVdDmourIeX
	 chfeA4zg46jKYu8U8WfinP+8hmCbPCWYQYCD9IVzDZCxWWOZsTr0HBqkWF7DWWcghp
	 EzlOWgdhoNMyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F43F3C268
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306509357.19901.16175121673808230637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1deaccc257e797eda24c5919499ead7fe4a825ca18bb8cb7bab4950ea2fa40ed
Date: Mon, 09 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773065093
