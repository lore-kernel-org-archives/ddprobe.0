Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180DD31E853
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773512694; cv=none; b=gyCaM6D5uMJ7ox8uSCHM8J/iZwjNnjaFOcLluXSJwLAoKGpn5hw0HfawhwCNfey3ZbgAAqboyt9G270M20EFx3fC7lvq3/r37swsOtAQV5lK8kskL1UL9FT57xyJZ3WJDaIGC/vJTTX2NdZPzx8+YRkAZyfctFxFPAuYCcXSY6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773512694; c=relaxed/simple;
	bh=x0KqMjPxqXAXTj/e7htzhfYKVM3KlMTgwFXOkbqqjZc=;
	h=To:Subject:From:Message-Id:Date; b=dnhkk81gUSBRnq8BSUseiY1EnpvV+qhA0Ww1tTTB0bpXgsybHwZcwJfeSV0pH8qT2LLJe5dy41P2MD1qERxKU9ByjJ6dLhxMqNfTbVCWD151dq1z4wf022018koRSbAeOVsAiGxHClvdxTujoZpVTulBmeCF2iYHfEKlkWMFzZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITZztwTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITZztwTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773512693;
	bh=x0KqMjPxqXAXTj/e7htzhfYKVM3KlMTgwFXOkbqqjZc=;
	h=To:Subject:From:Date:From;
	b=ITZztwTyLu8Miy7NmNhQwW3TwwXuHNl5p19gyRV8PI6tdThaK196uGs+UqkNv7oS2
	 vLXOVzPcNPhTuic7TawcuU9DDdCwQ2DjqenksZK+TFb5EYKCd+v90uQF5iKlc8m7GU
	 3rpJqZHo1cRi49OxO3gc0Nm/7uM2irzMH3zE63pxQHHGxDnSdTA+AeDfkXeGZHEVpI
	 2rc1rsErj/xr4FsXkRGcHwH1YO/Zsj04r1ZWF7rHZ+fQ1fHmU0Y4NQ2jWIJV8i1fck
	 V0IfAS0cby/1QdhDMoq4qVx9lKJDFjcyqLuz4OCYAjAZghbsqLzpthiczrfqIsmTg5
	 ocgayylU2eXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4010706F2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351269358.25981.16853574327601004053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47acb8f4d8e46f9e640f134ac72636e020b091a4fa24fca5fd58097476c34980
Date: Sat, 14 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773512693
