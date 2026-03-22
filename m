Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20185175A6E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774139694; cv=none; b=ONqM++47GKwhsgT6FF2hKzxKNoJbLYpZL0oXwk2mcHwXWtVYSEYB5saLumdWcBn4+ridrBhHqvYZebc5yrueRdW2pe/iCYJ2znB6DcUsbMp8v+2GeCT0X7dDYWfGNroKXYVAp5wvk8AbkhMdaCIxPY+bo4t/OeqzYEQ01TtEcvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774139694; c=relaxed/simple;
	bh=HXWMFpJi5JB7882I9vOiY6uyHWW/AVIZvt8VpcWSriM=;
	h=To:Subject:From:Message-Id:Date; b=pi7PLxVMdnYIdITRr42X/Mh2hCUvmVc3/fXFj0giL89IZGFEgVUeH9/gZNZLz8wDY0nEv7+nGFrKVYad66wzRo6S/dDZWJSjJY1XoCyWitCU39g/oQqi97Ppvcv1rv5Ee9hV2wrKBTRdO6kMo/qu+CJrffMNN+VXZuWVR9Y+018=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltrZF+fL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltrZF+fL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA4CC19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774139693;
	bh=HXWMFpJi5JB7882I9vOiY6uyHWW/AVIZvt8VpcWSriM=;
	h=To:Subject:From:Date:From;
	b=ltrZF+fLZKNlFJvZA3L3CElAJOBV1rCIc/SJvi8pPPhojBTDJ7SGq7idPVjri7UUz
	 PteTyC744SOyWxf+zNRwZ1RMVql7n4d7AqyXtoWxSxENAa+trMcEibAwyahSheN0I7
	 ZXo9eZAO+fL46nXyIvoxCRH/Uy/5KaGt7gyShJPISF9SkUOr0MtH0OBPmXsrrHGlL6
	 WXI0OT7BOxAtAUygGoTFGyGzoB/U1Qf9TF8/ZLaC8kIWpHB/4krktq5w1pFBByW7O4
	 JL/z3cznvYWn2Nkzfcp+Ffaw/m3alfbIUwY/+RIOWcCs70zasGarKEeCSs7vpTpMkZ
	 xlU9ZRsaKT9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B1109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413969357.25345.4606726236628306112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b7fa18ab49ee41c9675cb7f4fa51ae288e1549b6de678adc1f0d0319f95d03
Date: Sun, 22 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774139693
