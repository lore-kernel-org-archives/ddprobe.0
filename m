Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C4F21CC5C
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788082234; cv=none; b=IUquhbhWUX7l1MePL5ChDcDbPUVkSC3PKBYqJKxMDRbA8nNL+TPROMwICqFck4Yg1l+v7rHepTqBIsFOBs4493T0A7cDh5qYSP2K47CBAnrtZ+gtToPPmsN0rD+tpyhbWFbdAbr8iTWktfVTC/rZpiSSAnIotbroTZlTzckumME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788082234; c=relaxed/simple;
	bh=tWeGhQNAmkPyhzg8wc2ZgjIYbneYev7noIlhRURccgM=;
	h=To:Subject:From:Message-Id:Date; b=tCPwlsgH1g29dC4VaBOrAUTHDgoeqNcidG6+pQm5AbEY3xqPCYebERmQiX5hr8/AcqHSVSVAvTfxZ7Gpxn5fIUews0t2Jej5hPV5XhpOD9Vsu8lRxecmJOyDqF2JYjqJR5bJzWR+zgSSAV+0jztZyqjTU4kK/CfRjCLQOuretOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhqn4Cet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhqn4Cet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3715C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788082233;
	bh=tWeGhQNAmkPyhzg8wc2ZgjIYbneYev7noIlhRURccgM=;
	h=To:Subject:From:Date:From;
	b=uhqn4Cet9jE2Hf20MTxPSveQ8LKs/Fg3cfTo2IjuZq0hnHeJqVu7u/bzPtP7SVNhc
	 dywu8WD5T2EPx6T8+YOEvXIo5FKporUNRcwNJobKn6D3nubPTVR2Jtx1NSLuO3omNX
	 baDQn9JZfr6l5e8/3Tejv3w30vEBtU74ed96jYp635IaqWTHxGIcfSXcsUotBPll9D
	 3bAe382M9UKZ9HH7NuYXYayDqLfkGkC24k8/BOv1moU1khvMN4g+TkGuT9TG+P2hen
	 mXKs4xraYE8fJuyMzhz7krF2KLcOXJE7CmNNy9eZO/vWDu795u5OFJ93aKMxOH/pkH
	 J+C5rhe/lRNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C71C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808223368.7020.8959798848331832891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9352e3dc2e7e8f9b91331862e0fcae241e467c1fb396dc0bf4fe9d20bb325dba
Date: Sun, 30 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788082233
