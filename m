Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCA933DED5
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022334; cv=none; b=Py87lOU/UAH6Eilp/9qQkk3Qi5B6CrzYEJAAYoZrYdGwmc/buFbkCZoXVpQ6ChX0L45sAlfY1Zagj/k/Del9Ohs/wI9S2h2tC4tmWqyx6kI3dXOWIUWJLL7SWPhl9W97xl2T2Lr2w2fhCqXQrLrvqqVU6l/0JvyU/2CdoN4tC9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022334; c=relaxed/simple;
	bh=tsIZj6w2kEU52hjlIaVowMhdgo6g0GVE/bSV2rT4WP8=;
	h=To:Subject:From:Message-Id:Date; b=ZLETUPFHQphaC3s+KdWmHwmoMlWyHZWx62D98NaW2OeV73tz6BGan6Nz9B0toRfeNKc29TvFmWBwE+DaIMppzGevQ85d1+ChCYkn8aZcZRuKQ9nyj1uWggGEQzxZdQCwe0sMgNKv4Pou0Xk6WDh9KSbHiKjUHGgQQtvkbVXGszY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCVcFJpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCVcFJpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9345C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781022333;
	bh=tsIZj6w2kEU52hjlIaVowMhdgo6g0GVE/bSV2rT4WP8=;
	h=To:Subject:From:Date:From;
	b=kCVcFJpvb16km6OQgbNX6FI2FDwLdc3Ukq6yXlSTuHezN8JSS+ywmjQtRLrMMB3Rw
	 hpcRuomumnuILAw8eAtSlxjfPfvFRqB4M7iUp2SeRpBL2K5b/YRWlzDTPHQOAkuNtU
	 h9hCZClTAJ1VTmYNr1b6P8F6R3qEDTmnvm979uD7qHIU+Lo/W4z8QVDVmZgZpOt1cr
	 KNzGgcjP5naJedI1Fqv8DPugVNfi0V7R+Jlh4V7S0RZTbLSQk5408aboiqkA/qLouD
	 3/OtmtYyWT3bt0o7z9tGnJ2Le156Cn/b3il0jtk0PYmQFl3kHMyVQKj0EJZGySXSZe
	 2cti9NCQM+UYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64C2CD98C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102233373.31880.9738128845508227726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe9262240ab69d1440eaad4422b3a84b478dea9d6843b4c900bd4cffb39c6f7
Date: Tue, 09 Jun 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781022333
