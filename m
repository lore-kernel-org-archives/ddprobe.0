Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621941D5CEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742398194; cv=none; b=cQH38ChFbTYZ3rb1D2WNHRtcPhy/pGbOE4sAaYD7meAu3yueVo6C6mmGeSvUSfN1gDaYM6z51vjCxpexuiGTP49HcJlySgANsMHA7rk+SkUvz4S1Wlx2WOU4kJMytBsSQM8GethbhVoeKsoYk/ZUCF0S+TpkbSVaQSXPosqx00U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742398194; c=relaxed/simple;
	bh=M1SQ5oDuzJVzfJDeR8MOWTQRj+2kl0nLPuXd4xA3Sgg=;
	h=To:Subject:From:Message-Id:Date; b=IqxiTjjAOi71NF2UOv8kXqmFGWSBAeePsNAYjPaFlYJ9jZv6ILHFttEplyfkjwWQp9de8cLpa23PEZOr7PRM1CnjvjMFNzUZWUjc0RMWim9G3JBvcV8AFFh5tF9Qw1qP+fRLQYXcNDBexY96hydO8FbwBCbhN5AFog4k9jZemo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dH5Tpx3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dH5Tpx3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D71C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742398193;
	bh=M1SQ5oDuzJVzfJDeR8MOWTQRj+2kl0nLPuXd4xA3Sgg=;
	h=To:Subject:From:Date:From;
	b=dH5Tpx3IviSpHXKsc7IKEK/kfcqk4kKzAtOWn/ZiGpX3XE6l52Ji7nY+Cvn3CPV0z
	 d4HYSV4ce8/2RgqW6XL6DS2uvlZvKp6Y+E+Q+EOPB4kqv9i+XU1w0ZWccK5cpdgw48
	 ViE1ynvv/Kz+20Di6J7JwXYJ660Ll/94P4EYJKVz0wzmtWdrv1VsYkElYvIR/QUjkN
	 QcIWIoxIxn1boPHXlSZTiPX8BH65I2Rp2L/8pVWZpUbljaR2t0B1lvRgFL+/DDWNo4
	 BSP5JLoaLHBgLGcUF3Ei6+vDlM5gvomkf1p7TqW25J1KyVWRSkma2WorWlNziUPhhQ
	 TtrdEg4txNOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFAC35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239819368.8413.4257874377985540521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02239b620c311c2556f6c323d32effd0c1021c278ad70579ac0e1bd75774fab0
Date: Wed, 19 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742398193
