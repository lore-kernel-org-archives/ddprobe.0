Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FB628EA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737687354; cv=none; b=kVxPcZbDAqvd/Yj4NwDnj1uUnGm3dm82i1CkL1c8ONCC6aFLroJ+1ymVF6/bACWmCdzieoDL8IocEkNA1eXp1RGBjwxi76GXKeF0wUymICD7K9Q4JwjN/5VoMU/kurNIJuWOzZu3bIDX9plggEngLSXciynDFah7mu7PCL1YjIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737687354; c=relaxed/simple;
	bh=FNUe3ld0iY2u6RpZOkQVuRImMxqkwNzwVNJzkVh3UYU=;
	h=To:Subject:From:Message-Id:Date; b=Y7XwNTdu2qJr4G1mXf1dt70Wf193PcE11fK31YA7++PVJgc52f8GM7/oF06DMHbfd1DBXaPS+VWRtTMRwqpsCGU+QVCQcykRcFltQPCeo3E1YB1Lby0ho9heMEZSC6w0NCclq1HWRa7xMTOTe4uGohFXYRpuUiYEICLLhdqDnpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqJPcqLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqJPcqLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F8C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737687353;
	bh=FNUe3ld0iY2u6RpZOkQVuRImMxqkwNzwVNJzkVh3UYU=;
	h=To:Subject:From:Date:From;
	b=EqJPcqLCUPYqhEDnQbQaVordDGXW1ZVTNJKu/IfyCvz1dykVTobuqmyv11qUEOjz1
	 47wbk61PGLPu8T/F7L1e5k9V1tKJJbVEoQvKZhYDMEX7OIEqEo+6gkvn3HM5lIkwbg
	 a1RU9NrHQVqmdMezCW9xn0MxXXd0C6J38vWELYFgsALClYK0GtHswxcDgaMSijYBwo
	 dr6W5XKsFkOwpRufnKikyFTweztJPlKld6ngiykyyJpS9+bFHl/aMy2Uc199nwmMY1
	 c+Nqcvjdi99rBvFD2Wp0Vkk6BTAjzS0ylzgGplim92QJfN9kekxuHM6RuWSqAYVpGh
	 8Wq/DzsRGZ0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EBAC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768735359.24252.2229027848070166243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab80788420503be410886b4a16287528cfeb10888dad085dc204857750d65a25
Date: Fri, 24 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737687353
