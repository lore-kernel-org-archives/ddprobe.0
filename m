Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50391E5707
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729514754; cv=none; b=NjaOxG6hUkWYcPYlCkotxA72ZHGftrbfpdScI0S/ZckMGx8MtWpZWLYPbrb+y8Qq7iANdfSCb3tfsh/1/ZsCPZ8542h0BrfX1WrQWermayTUFC6RK5n9cYyy8X/D2Du1voRhyFM45f7MKCVWhApcSe/YaEeX41Gmjlyo31vbBm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729514754; c=relaxed/simple;
	bh=NsyOw7vzHUC+LDIMXKIr5+lUMgKA29jMk8wgMFoa7Lw=;
	h=To:Subject:From:Message-Id:Date; b=D1Nc2DwayjeJnI0oIMQWU14VooAPQ6AsnDXZMfPY1WkzMn2FxBOTjQQkJ1QXyvLQQ6Iw5CU6xX8Y742lbQJNwf4lkjwtUonO3SWl6feESmW/18BovOhtcKBE8LOJl9RgrSZB/+UrGJ4dYIluesoJ1G59tbmnae9Dn/+6W0NSHeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQGkHCzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQGkHCzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60D2C4CEE6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729514753;
	bh=NsyOw7vzHUC+LDIMXKIr5+lUMgKA29jMk8wgMFoa7Lw=;
	h=To:Subject:From:Date:From;
	b=iQGkHCzV3xlgXj9kPEZhD55P2hcOto5pzt67lkpWj90UjfdnMvVtEaqpSCJFFQZn2
	 M8OlHf0dJGmEVXNZs31lyHPCGw7MWyltW2r65G8pGt9sbpvne6lyit5Wc5QieW7hKD
	 holOZ2TzposzNkZfswfoQ7YplabBKsAhB7Y+YQLvm7I1Jon/jTke767ztpwqGsNBBS
	 V6s1XWbqIcI2cJ07NH3/kb13R/NxZFKA0BhDx/ebgg2u3V230SoOzUdWAOyOYkmwnP
	 8ONn2/QZlAwy0wPYWbKRYRRUehx18QoWVzs4rJbMdk1dEgwRFYZ/oqonURJp3xLKnO
	 y56MF4ja8qRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0817D15D89
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172951475362.28116.9795518984517686851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180df517f1db04791cc59b795f1eee7c0712b16118476d42f3aca5ddef80cafc
Date: Mon, 21 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729514753
