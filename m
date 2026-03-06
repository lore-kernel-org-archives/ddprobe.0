Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F3C149C6F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772761494; cv=none; b=eWo8UdIMUWJou1O27rd8aws7bXXiTvYBndKPbeNpdDfM5kS3HG9czv9vTKrbD+0q6XTlWJE9GiIYKYSj+bWUZvX5SOVbnhzXxqmD+HMxb457B3x2w8RhhVsk/vF3UI4al5nX6cvNnaa62HGjdP3EdOzWu53IZZxUbnAAL8ehZJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772761494; c=relaxed/simple;
	bh=lEiw/SrFTmpXEX57I3AKKFDFlUFfZ5FwWsZ30fDi2HY=;
	h=To:Subject:From:Message-Id:Date; b=TG9jDYgeecAi0db0f0GPGkJSweHeMQEUndD2aYoApoV8I9P2wA868aEhuoK2jsZJPcDCiy9NCMrTmUwEHVUDtcrOR+iKxydTipXphfQkFqvIxtYnXWNqU3/GpfZtqAKnf/CzSM4BOfU1NJAC76ORAko1nvaW1/XF4jOVMyBN7DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2XgmCAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2XgmCAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86EAC19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772761493;
	bh=lEiw/SrFTmpXEX57I3AKKFDFlUFfZ5FwWsZ30fDi2HY=;
	h=To:Subject:From:Date:From;
	b=D2XgmCAq69WqkK4O6P0ePdzUx5IFKttX83HJpPOx59yoE6pps0pzerUzH7Y4OWPkn
	 XmgwPKFlgONwYMEXxQmaYrUEOBv4UuUXh1kmGwBOk1Pe0BlxlqOsqD+FafBkKy7Eh4
	 qSV+yGelMUW0VNU3U9dtLulbKgNwwmeXuOBolbhcOwfyBLxUVCg/cc1SBtogHOk2qG
	 0ltgxdDC8gbRp+D/ViubYsKOr4Z1gdl+725sYJAxThQg+sO+dS3vSNK0CFx7Z8kAL/
	 42c/AXgsRs/4bj96fqedoPFeFcs0xdpFcGNgjUaLX0cSTsJoK5Cy2CYz+fQOfz4iak
	 Wq8NA4c9LWjnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1CF513EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276149358.21809.7812992633668150280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52107a50f3bf7a0dae83c5b97a649bf586bedd183351fa3d98bb78d68ba1673
Date: Fri, 06 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772761493
