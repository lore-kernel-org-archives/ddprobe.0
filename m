Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B29336214F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773097494; cv=none; b=sDWLd1Ey5XkraK1BQHSDZz0MjlXRURsHuAoe0Mc+VJNDXvGFc7MLYU0FL1kpFSQtEFoNoY2kKoZ13NmrmKIaH0B1CNOCwgO4gzJ4UQnAb9EktcTXvEBrPmasejWaYL28dmb3w1ANhGEh+pbDy8KrSUC8Q/Hxv5jhCuw+NsloOXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773097494; c=relaxed/simple;
	bh=rYNfHkfJx0lrJoSwyiSQ1LTc/EH1u0snscJZtDZS4xI=;
	h=To:Subject:From:Message-Id:Date; b=kV7951NHTH4daAdJyjIOAux3xT7g8Zii0JTcrT/SbDn1FaQL2zPqRqzuio4PDL9T747HSfhS4j1eae81YjOK85NpFqfyKXAz+6rxDRw2V5aS/AS9y0Hza2xbhKIzjK/QrAaKEFP1wezc4efET2UbixeB3Oc9SWiL0uPjDljZeFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITUO7qrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITUO7qrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D1EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773097493;
	bh=rYNfHkfJx0lrJoSwyiSQ1LTc/EH1u0snscJZtDZS4xI=;
	h=To:Subject:From:Date:From;
	b=ITUO7qrtTIHsWCkl25nDlfQYR21FzL+p3oo2XvXEK3vk5IoZFKpCDhUSBTWL+Vx0K
	 /4NH4IwSya8+kY+IM71vkcXSJHqoo6Oww/lBloNl1keLXT1fBI5HpCvitsetbo1pAf
	 /urOOjPg6XrzLwRzO7IEeka9MYEPMO/5X4EAvaJvxTFRv69nsp6kOBZCWkHK6PXURU
	 utJ/EyQAkDDPQi5NaHi3GM3vJyI/lWpDorUkYVGVWEU24OSYs5ZnOUseqEXYOu0Ysz
	 4M6cHKDRrGY8aN8dBYQzVcRPLqRyeCu18O0mcrf65jfbxRD7DRaAtA/XMCA6vNLL0j
	 Jgnc2tBJpIeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC24FCA191
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309749357.9487.12670926653185940284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b1849867f60cfbfc464d706d52f91d87b7731dcae9a097faea41ee2b0b7428
Date: Mon, 09 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773097493
