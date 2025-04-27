Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE6A4A11
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745785794; cv=none; b=gpI5iPx1+c5vrgkj+8mMsRHcDGN/7nR0gfkWOlwClNlfoqK6MjQ8XJluFkWgk7+sFVvSWmcWYCX+p+ydNQ29NDwiv1W1nWUthxBWppkBrLJ5x1xtvDBinbrOkBrCJAGgmycu5h+Z9bsKeLalSkZndjknhIHk0e/FnZCGx5ooZys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745785794; c=relaxed/simple;
	bh=WfwIn2Guh8afvJXCHhmwiSLknd5ykuBZumsuJfPv0zs=;
	h=To:Subject:From:Message-Id:Date; b=TFWVpxMveoG8gZaMglVQorik7LRiHkKgRIOFiqXtwaXoTyBwM4TakYWKFoRnvq6y+1SnC49wAYDPbJAQeGWwviEwEPiBQ64LRhh0B8K8hGfVYz/De3W535irifFV2VLUmw8AOCdMJQDZoK7tnyjSNpWlbNGFzjFVcP82Sh3OSCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpLPWyU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpLPWyU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EBCC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745785793;
	bh=WfwIn2Guh8afvJXCHhmwiSLknd5ykuBZumsuJfPv0zs=;
	h=To:Subject:From:Date:From;
	b=LpLPWyU/hxm0h8NxlahsHBCRdo2wH9OSy7UEonv8y8m/cZltOVsGBWDqbh/gxjW/x
	 g1TADpvco6WoWxE1Ua9vQB2EgzLdzF0BpxAdiPEbWvkCNaJlQmkTERr4Tr7DcSnVpY
	 0WYtcWduWeW1SdIYO+2zVPmMN2lFGIVJqX/+LNYCh1NPbLaTFOTId488ma2WpdgycJ
	 hUb6sWIEvmFREqpQhFIQoMMrMmoXDWhHV81HkErTtvRBaEcob3DdunYuXE8L7+ILJY
	 XhTpwHfZgkOo4wUzjqsXdaei/ryw561YL1ssitu6vswEApW3v4GMtdJsR7uaTH2ZDo
	 4gVZ2gsdmn7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C7C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578579357.26421.7278374879843632658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c752fb05a2422ec16589558c2b73d8ca07635a370e105e92573afd3889175170
Date: Sun, 27 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745785793
