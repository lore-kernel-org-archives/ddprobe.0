Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EA61991D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742927394; cv=none; b=Johtb/kVP/bPvaZHtAqD4RWpbdoT2zd+cWpTeQqywf+Au/GSRlNHVaCCdyqP+9aFrpVU7L6SnS0IxfCjCAKopu0R/tcrp6GzhnhBkoIRPCTZ0iIBucajq+gLSH13QFoWGxlu35s3xMQ3W9HjpCUBT81xCWHEhfLPsfkep7BWcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742927394; c=relaxed/simple;
	bh=AZWUARVUzCMAzl2XjPvOVhMIob24wfBhtGf/KnOWyo0=;
	h=To:Subject:From:Message-Id:Date; b=hjIR08dctXwmfAcLWiHvaZ5q3YJJGR1t01SN2LI1sOde+PFf4C+Nv7IMB/qwDmyEGGKKzmMgeTo8OvZIgJU11oJs30DXvkvJZ7LXdDSBHbqJlKKjGskwiSw78kre2QJmAwhOrSHnQdrUEDW7UGv9fiihPJQka86OlGUUJzp/jUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AchlEkU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AchlEkU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D8BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742927393;
	bh=AZWUARVUzCMAzl2XjPvOVhMIob24wfBhtGf/KnOWyo0=;
	h=To:Subject:From:Date:From;
	b=AchlEkU1RhMXcCCORAKqPRpwK0f7tKq9VkKlF2NBPWrpuxBsLrvihV+B3urR2arNy
	 2sjafwklKlJ2ItgkYK8L3cY3aDTP3h9xUOMo/5Fb07CyxVROwY5LryoFWcTJoIsWHl
	 vfO0E9ZOPjIl4P/OEPSIiUE91sGOCej91y1X6mwcer4PL1L92dUCxMNodPiQE37NXu
	 AGRmqocfdhAwUAING0TFh8hL+cMkkExbnrcbX3v4hjvXVX3SFS0SkiXWf8bhqSi001
	 l7Y+5PLOLeWn/IGiy0zDUNxTfY/2ETmfgijAM121KwcJwtbZs9v1HIMtcFEJLFiqM6
	 DNUznakeQyjDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB2C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292739369.19716.18409100400146329524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33f7c4b1da5b39f85d2f2939bd301f21730f8cbbf76c778806da292eeb9c925
Date: Tue, 25 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742927393
