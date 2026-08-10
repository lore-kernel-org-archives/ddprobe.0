Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443FF3B52EB
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786402234; cv=none; b=WGRU9QtSnyrBcdfH0cAgeohPteyIzQ2HrFXEU8XGTSXYagiTNsSjLyHbhYlB90XY8VfTbQOtzFmOqnjkQounXnk49vnnbjziv/hp90YBAfmMvXfbBJ6pVJzMZY7ww5sVdi095McgTRtjocVlHurLqGIo6voIhPi5WvfgO2UwNZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786402234; c=relaxed/simple;
	bh=EBaSiwxlWAmodmCXP1rd9atw8Jx3kV6Pqph75Dg9qgs=;
	h=To:Subject:From:Message-Id:Date; b=QnDhePQTklJOF8dm9L/7JWrnxP6PCYlox/UXDjRThLJnxUaOkII24a1f9Mh7LxKndcVBti0OGyOp0dZjKvNs3qMCOxb7sXiU2RAizIYYtyoj1ITu/aQJ0yLEaP8hEC4iC5SsVa65wbAwq/XmcG8nzjlEUP6Ks0MZRotmnvoDnc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6DRU6WV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6DRU6WV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF9EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786402233;
	bh=EBaSiwxlWAmodmCXP1rd9atw8Jx3kV6Pqph75Dg9qgs=;
	h=To:Subject:From:Date:From;
	b=B6DRU6WVkcj48oXvDE6ApEswF1pZIycEmivs0XNjuu1+qtfJafVkTX1hKIBqKyC28
	 qEi/ldfGXJW/A2zokBhdpaManSGBPeJ/48cUUsm5JkBDUBXY77dK//NeKPUFSXsePp
	 nlHDt9TLIGV4yAjTc59q2Q8LTG6vP5jB2Gujf35S9LKoFqIAwv5lV8vIBfibz27uWl
	 hmF5tcChlicJbwbEPpa/V71CHeb1WJG8lj1DKcLHh3nR/tyefW0fzq4CbRIDmx1Ado
	 pNXjt2vllfJWqofOKg3EOaXgPMbGRkuyTwTqO69FFyfy+VsFRtrp11t4Hbnt8/3EEv
	 7ynl/6uK+ng/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F51C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640223368.29346.16149179437273748229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe682455d6214d01159511e759ede8d080a4ffb3276586003709586cd91dedc
Date: Mon, 10 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786402233
