Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330AB1C8616
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766999634; cv=none; b=YG+DCYHQxdnsTAfb9S4MTmaA0oEjuYTjuwY443Y0EypybNbLhJgABaDdndn6Uc3uARvutyxYqk6k0FpywFGm2916/z6xCJQDJzVrJmY4ySNl+ouDFMWp3ZVm3PpjiNvQlW5WEnl6TPDAj1huI2p+SGeCbNJnt8WfCyYZ/hxBnnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766999634; c=relaxed/simple;
	bh=VQ5xHyvw961jr3BQnaCksaE/QpvVA7Ytvi0aIcsNlWE=;
	h=To:Subject:From:Message-Id:Date; b=LkD7zNtVR+/ILEKoVwA1gwxx/Dt0MUcktE8Tp963XTliOOGdH31kK+1xUeElNZlDr9bXUFo2KtByyVAJTbeQ9om7lzGPQYB62LHyHe0ICjObIpsU9u8nc2+5LmsKWWcjZ/seJjnXI1aMqhtOjinqCxBdiWPIyxSN7ZpCRpHVV4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnF1YnFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnF1YnFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B142BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766999633;
	bh=VQ5xHyvw961jr3BQnaCksaE/QpvVA7Ytvi0aIcsNlWE=;
	h=To:Subject:From:Date:From;
	b=TnF1YnFhns8GDXvTj+Gs/PPIEdWEI5nibqn2IeIS2CcOqQQmFLAzM6DAr5l8fGTHx
	 ZIVx3pet/s/A/SLmNyBLGENV3uIb3PyeLudQ2aJB7c6fkSECmTaUyoZiUDxDhDzAps
	 dtvDHcGHBPe90V8uy/qKTSvj9t3bQ36Y68HNm2xE18vlgwXHQPkKfxJ5fhMp79q4C7
	 5nxJ0xiP9WUseuYBIKLcVFDlow2gGoMUdb6oMWocThNBUypjNbsaEFXTOLO9WX9FoC
	 uqht+wfo6/gHanBVQRo49TNOFWgqqx2wmYWdBlINfnJahydqNA3yMWY2dq51q1uYh8
	 kduWrzgE171PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C70DD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699963359.31863.13185121856475944274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79da8ad583d818ace8af083af64c9479beb6482162aa7f6387ef20edcc6a22ba
Date: Mon, 29 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766999633
