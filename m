Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE8E4CCDC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788843034; cv=none; b=kqQ1OOQqPgjMOLjZ+Vu6pJ/4GxFqzhbVaeJ6p/QMqycjzy20jWE92Kw/A6MfYnhzoS/1wQYHaQ4lR6citxvOt9Fle2InXH2C9Bhh09YeFWMBlP8lx1B7wkYz8SFZZHzPmOPrlWBnCMP/Br7AKb1X+JE8rNtqrp3Gv0COASH7BRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788843034; c=relaxed/simple;
	bh=/IWipGIr7Ee27nEpjc6FVcjv8bApq2/LbAzkQJyTUms=;
	h=To:Subject:From:Message-Id:Date; b=WPuBKrEeIvAi11bBKadEULYBEZBmrIbct+GgeBrt979hSm5WvaBhGAyK8sJKz1TEBf8VWqFH/akKuh+fv2+minV5vBMNs6N54UfxHT8WciffcwF/d0V3UtNpjN8m3WwpI02ZMdXzyQGsJsM6kzqWA+cM+PlUTIL8SFLXlskHqn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4QYZN7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4QYZN7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABE4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788843033;
	bh=/IWipGIr7Ee27nEpjc6FVcjv8bApq2/LbAzkQJyTUms=;
	h=To:Subject:From:Date:From;
	b=I4QYZN7qxwc5l1bpQCCwCFxTHoA4onDaAGItWN0ayKbi2BYQ09VdAghkUHduQsJRd
	 Vlmt+dS4sH+8f+YKSChnIBzXrzAmXQ6RzMDJ+AtISLI8sjA7ePayNM2coU0VHrUKay
	 hBaAFgx6ZlW/eSlkgsEFNJOck4M+Sr+6iRd03ukZj7MEWoZaFoQZGWJNzG5sN/8FGr
	 OTfLHHXuwR0WuzCbNApxvHw/UaXcKfW3OwJKT0w+f9f9pAvZxJOr8Tmu2TmIR5znn6
	 +A/BeW80z9J4kevsngBzVvHVP03Q5MvNJWjxu0Z/lNNM6ilkTvZPWFxQwuaWb4dXDk
	 GoduSvPaYjJ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B075DC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884303371.5074.16172338072097187837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcf2003a83ebd566fa3077e035d7e709b6bd33dfbe2cc29afb524cfb0e10e19
Date: Tue, 08 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788843033
