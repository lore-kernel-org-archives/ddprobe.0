Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2922A238C16
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771481094; cv=none; b=gPH8uZ/tyxm8UxaeMZsbDnNihW7gjUOSq3pHf3RSwVGfaxaMTZiZKl9YNRYfZZjmxi3d7942TaQ4hzhXuJvlAjizagJLd+vjzrsG8gVn6R2vw+tfhHU4DYSXSYNgl17vqA51/d7b8hAaZMaWXibaxfFhBYFJ7AXxITMsAeKroHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771481094; c=relaxed/simple;
	bh=a92DfYvj7Ht1oWDwN8wp5gX9FJdJdQ2aMYcUYwe9P5U=;
	h=To:Subject:From:Message-Id:Date; b=QMX7NnJ0rVtj36UUravBS4kSsVioSyNxeLC78uwExFgzxzUUMJsSnCq9l/Ra5EmjePQX7R/W6TScVf1AKNF1ranJ3TOz8YKeDecstRp+l3hRPZwH9FiLwF/wrEZw7MLrp5ZKsD64nN1/JRxr8V8A3aF/wDkHGDCxMfTvJLErmk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhRDJ/74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhRDJ/74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC95C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771481093;
	bh=a92DfYvj7Ht1oWDwN8wp5gX9FJdJdQ2aMYcUYwe9P5U=;
	h=To:Subject:From:Date:From;
	b=MhRDJ/74lZuZQliDXsdmiTG3XSJsmqAklVf1s9sBG4LcMFHitKB9TcQEYKRWnfr9E
	 42P4qR4GdVIFPhLGvz9UIO033HN1EfDOMhXQ53dBqPGty+jux9Bbxm3BU0nGdMcXJb
	 +YedDjN/jHMPAfDNdPo6nHz+BF/Tb+R+Y1QOo/HDs7NOx1KGo2uG9kHDix45wJBbYw
	 VySJqZzBSXT0pBrivU2HL5cJElAGtXaUyrFqzPdQmcyPyenbwmwj6mCuvFW3czxCaj
	 NuxcUAC1dDEMzBAZxAgRDoqIipxWwE4bbdgiiSQSM7k7++xh0SC1dsP+lEgXiXLCl2
	 fuga1Skvf0oVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04A7E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148109364.26369.9888968359521901351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f403061a97897aae5470f14708636c6ce52729d57306e32d77e201362ae012
Date: Thu, 19 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771481093
