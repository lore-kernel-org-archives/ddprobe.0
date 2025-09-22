Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C2227B34A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758556793; cv=none; b=gaT7m+hfXcoKZY9kuN4qaUknlgH9ptU1vFrI1vaJN7gcVknrJjoUwoqXOp45ksa0nJfEscYCqOoGstVfa+XW/eHLt64/cD5Wh5sJNOsPZJ5wCckcSvI4cLr9uFYfTrt91Xj7nf9ZxxfWSwrIZatGs834lKed6dx1ykWYXp59fhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758556793; c=relaxed/simple;
	bh=rqbNSH26Kjg5R7iu0dwgfov5TFmYolPEJX/CvxdxpZ0=;
	h=To:Subject:From:Message-Id:Date; b=ZGfYL9oTsFflzrET8kMropVCeIucPvmoTDLyD4WDMiEbr4dEOELRAjXCqsxf0iIdQu9AKEB5yEQUKhmyu0F/cYb1xG0L/WsY0HkNFlXXztNxYLUT0KvcYldApa2A2vyPWO/zCWP2mi08B7vwqYq8lzO7LGHWRsLARQriRWhhoFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slzZpxQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slzZpxQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51EBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758556793;
	bh=rqbNSH26Kjg5R7iu0dwgfov5TFmYolPEJX/CvxdxpZ0=;
	h=To:Subject:From:Date:From;
	b=slzZpxQb5BVx0fit41JL/jQUHQ2Q+v5vzRoV6dZudP+XqW3RLT+Zr3R0pLQZYfKMU
	 1h5raV3jJrnEVxL3Sbj7L/7j817C40LzehEMlG/QuoZUhbAWPLP5jwg3EGDJ3Ax6Xi
	 BbaL2pEoGaem2OgrpaSsuayPPphl11ylVfGHtYw9Q2rp423/hW9aE51noiu3xIydUO
	 Czjbq8kgeVjLk2AB3UKM8jtVzZKcu/Q8lYuk07ys4KGDRvwL0oNaxd9F0jPboDitR7
	 AUgb2bbRSz4SX28LNgfikC485nrXGVdquzxPAM9H8Qa16hTmRdnLhxcf1tAmYA0pXw
	 yKVZiD/M6nByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E63CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855679357.13679.3730678482367677265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f466dd7a57d3fbbddfcdc56892f66de39ea2e442288a69ef5e7ba75ca648acdc
Date: Mon, 22 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758556793
