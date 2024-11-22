Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4462223098E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275954; cv=none; b=B+djmL8u0ArAA2gr5tUPgDZRldSPaXOOQi2ovZ00r5Nrd3jBakH/FYKU6GdxcXfcYZwy/u9UR1V3nObSUYVXOAGuZo3lRp8Kia1fpLn7peKfUxV0WCmhpd8nOply1wVzAErLlN02AOKsS8ydgRc1HpWpWM3BxyQY6Q/qVqgumc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275954; c=relaxed/simple;
	bh=0PiHAReo/oEFuVOWy3yobIoOZVxgCL7ylU4WelSz3Z8=;
	h=To:Subject:From:Message-Id:Date; b=VFBmDCOsi7TeKvCP1EbGuTB6Qxz5tTco8emsa4dmrApv9PWjmKXia6f6kkxeYVp+2nzsBP2MhmTqBLcYLHELEtcHsmi+I2dNski6qLITQOpI23BdrhpXu8/uNZ8H+Sr58GLlwyEf/T19zIFHhyOKj+dNnVJ1sZt5MhJK941c49c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukhwheXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukhwheXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78E0C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732275953;
	bh=0PiHAReo/oEFuVOWy3yobIoOZVxgCL7ylU4WelSz3Z8=;
	h=To:Subject:From:Date:From;
	b=ukhwheXsQ+Uu2OvUHIl82zY60dPVuiFHQZv6oeEcEHkfy++UAabIFwJFCWRxedQ+M
	 4NYPuNZ0cKnZxBJzvoAGzMnalC9h2xRoHxI/q5sxMcMuU+WoHnyUg5WulZOL0hh02w
	 YOvAXMQ86p8P3TXdfQv4gFdjYmcFVTib1ALRy0aqUwotgP4HOzWezTtmMthUcl+TyW
	 fRC34cW7IXgx4JAQqMlFs/3U4MV/ybqYSu2K0NGVjIkQ4H03cwsVfH+4GNpUaHxCZl
	 CcW8VJPeVVRZGprxVFjQgujnmW2GKY3knc/nda7sxmko+EDEVHb6ra8REkVr3y2fr+
	 7WQsP8ENZ3e8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A598D75E2D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227595361.2213.10196400110696478140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba29f39dc366a860b3d6a8aad96a4a065859c41313b9aab97fc83286d5ebc64
Date: Fri, 22 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732275953
