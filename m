Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A451230BD4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748959194; cv=none; b=JV6Ngegn4QlJ5MAJhd4j9cgr+4m9r9d1Ol1Asp+fJ0zNy1BKYyaXXoB7Vml7VS4P01WCHi3unDyY+QAyYyZom2MbIvGs1t8tA0wfDujSDhXU6Yd5IBPMu3FR3vzi4FXZLzs6hqcW+AfRzzM56JRqf0QxL4cv/rgW8YqtHSMsUpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748959194; c=relaxed/simple;
	bh=zw1KFqPmjbZZoOESI40FGyz+ZjV3T9FRw/VREv+5xxQ=;
	h=To:Subject:From:Message-Id:Date; b=nVg8lnWctjv5OBIdb9XiZ5m7MWTEVKrx58anxkiau7GWAQMhGoOTgTk2dUaJQouUMtWtsdwYie/ackYUPWxoMJawKrpKKlJ5uRncenLTmLaFSXxAyHSLuM2nhtC6+mVUXLi2rNHyjx128eKz4ZuaNl6bRMbcXy0eOoElEml8U08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxssOPhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxssOPhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE4AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748959193;
	bh=zw1KFqPmjbZZoOESI40FGyz+ZjV3T9FRw/VREv+5xxQ=;
	h=To:Subject:From:Date:From;
	b=nxssOPhGMqf88CY4SV5slQOAAiaUhaLlURp+J+urMJFPZLvHxWF5ZOE9Bgfjc1F78
	 jOVqD4DCW/2ldkUh9Q/lZCiL+3cMhhcym80/WRLordEZyOV9vPfDrXg/S6kUG3gfzq
	 7s5ATzY+WkvAKGn3o6XE9FlxhAvnIyeOZfXB+Pww9f2kHMFq5+/TMztFIwYWpvaMl0
	 W4w6sI3uaKLkRwphngPt+1b7Ivnesls3Y10OyCq5e0HGe7ROuFSqj709AmWDe8ysg0
	 vJtAHZI/ohRCn5qnL0Ex9CAkERn0FxxsrUk1PBX3QpNMnOd7xMdDivX+5a+6yK7co3
	 AlRkkbuxc1+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895919357.13200.16118656160231550254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340d51b6abd6be89d2a315345615d931b250e4f9a2c3dddfca2989f19300c480
Date: Tue, 03 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748959193
