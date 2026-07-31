Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3047A276038
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785505834; cv=none; b=jztm9+UiOARql9Ej1/ByeAjYHx0cS4jxEzYmDZoj5thgzFXPyxqlIaPWXI3ag0NwyEeEwopRQwbDo1XoowiwT/aj7HTPd3zAzM6V5NwekJuv2kB37g6YuR8+llfjInZdOfAPh8sp5tFDsroSMJx4U6lVt2QOxpIFgryNjD04l6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785505834; c=relaxed/simple;
	bh=cdDva8xB7/X/xIy6577QqE2DrNZzjq1Z//Rr06fwT40=;
	h=To:Subject:From:Message-Id:Date; b=E2QnzMeQmdPskmB2OYTOScUq+lGaiBx1SpkxHrk3OpKeAnbPeAnFBuNpp2LfKYKMgs2bg/lROHBhoDAKiDfe3ttZ+qOIDM8vY7+zegg7PFsgLLG0pMcYRFedihOERs4Rer+O2z0JtsbwagD1ZDAdAvnZFfqlZKRI3B28Qh4ywqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7bmeDnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7bmeDnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC28C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785505833;
	bh=cdDva8xB7/X/xIy6577QqE2DrNZzjq1Z//Rr06fwT40=;
	h=To:Subject:From:Date:From;
	b=P7bmeDnf6CJ8JdIp78FI0/MKbamaQN6MzP8iJ4zdmaxOIBABvL/ju30jYz+WsjHyV
	 PeixnvkZV6iOUnIe0BpqgCAkaipOPzhAxLXrZ4inHXbfQlXbwKsGvPfOvXOq+h2PRS
	 8VVSdfzLvZoYEYaYrs4sYEHKsn3eiUTvrNZk5zJ+LUkFRY5DcbXG0UWrre0G0lZR25
	 q0AyfN5ppxmspsCOr9LvZ/d0TJGsSXgbycXJm6cE4E8bfAlELMeZfP80liIDFlbJoD
	 jrZMCQFzaiQ5qYTKV/IghjoIQZzWXN/m2zsvIgkT0kAPVjPxKWrHR4fEsy9FmZ/qEp
	 HT5F/Bo/FOqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF0C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550583370.11034.3791985297239920484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11e32a7d0f6dbe311229a0f0abafc41b6d492659c90be06d9c3c29f00216d32
Date: Fri, 31 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785505833
