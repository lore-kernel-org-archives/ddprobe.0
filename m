Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C5225A65B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756775994; cv=none; b=Pjo12cg6SZSSCu25c10+x+nD9bv2iF/1ms9QKWdVfFjSPmy3txwgaDCxT6yzKqmLhgYjmoO4JS38AiBrinY0yedXvE1GSPerTRDvNRHp/iwjcMyQIP7W7HHLZnaafxcnWhw2bySAjtPLc4/dSXdNiOTFMSx0sEcVB1ZpnYyGJ6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756775994; c=relaxed/simple;
	bh=9Aej4l0nuRGUFBsFh2gcz0XuoktU0e/govH1WkF1hi4=;
	h=To:Subject:From:Message-Id:Date; b=YDvzdEEjrGPlyJ6+MRKOdOgCzhQ804etktdPALWwaQCh8dDwfwjGq5l1AhehxODRo1pQUn1xByggpIxTSpla9NQnOqtTOpOFC2PweSkD41nc8gmvDVAAAq/sCgw0UA3NvtlIdAZQAGvQEnVVPAHufNJMqkwwKhDEdvdO5UrM5K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGwL4Jq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGwL4Jq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ADAC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756775993;
	bh=9Aej4l0nuRGUFBsFh2gcz0XuoktU0e/govH1WkF1hi4=;
	h=To:Subject:From:Date:From;
	b=BGwL4Jq4vCE6bMpYiBUCVbfy4BsxHy4PIjkFO87K1ohUiBWEE4U7pFW9VdF6bBLZT
	 BobZlPyZX4Xg9ozDbhAzD6OpgoVGIFHgBDY2o020YQ2xvT0sdzln24Yg5rUDtZueVE
	 aaqrCkmHIfiCqsgXUot/fCVryA/OQ15kUBVkOF1EI0EoWoWMhGwJy1Z0n8lQHIicYb
	 pDafPLkzy+o67Q6cPM9xF+9mfmUnTaLTKXI2Sbb/T9nO8fgfJ/Nn29oLjpGoZGQjDe
	 zqhGbGfqGKo2rQfMY7C4TGVYKYnR7rTNiYux9WMWmao1uGiciuBa4LMT/gZ35/POKl
	 uJBEdcM2D7zPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E051CA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677599357.20630.12113968948439204075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb6aa3ac61a84278406c7189f72a985a6936dd862f9ca189fe2c31bce1819bc
Date: Tue, 02 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756775993
