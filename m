Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2736114A8B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751248195; cv=none; b=TFp0gSSNkILD0G9c0oNwFO8S8DDk2H4qxn1cPlOBw3IHY+xMK5lpQlIjqoETJnyTvDVn9uPkapT30zxYrNvK0O+S6EKx69C+VWuPHehUentKH0dCPWGgVzhQWLXIlp3I1pFqn/7FQE8EBWWAfs1Egx7sLv43HbJEqNHHCX0PVdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751248195; c=relaxed/simple;
	bh=XYkjsAxtrf9jJb2XdMj7gSxk/y6/qHT0T7OkgshRhlE=;
	h=To:Subject:From:Message-Id:Date; b=AxSLWtiA02D3eZB+QxPSezcV8DwQsb6pROUFkNE+nio26/b/YvcCO9aWK4GTtIXd1O/il5gzkZgejT/+KDTh8nON3nncCwmmiaojAvNKczxjflrT1k6+ionxsbv8UC8Q1XINnr3P7uKTG5lGcwG6NWrmxizXBTDLm8hD1jb3LBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHVfYLM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHVfYLM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751248193;
	bh=XYkjsAxtrf9jJb2XdMj7gSxk/y6/qHT0T7OkgshRhlE=;
	h=To:Subject:From:Date:From;
	b=UHVfYLM5PcmFafKAE0C58H1XzPRp38r0kKc1j8PESaO/bqQMyk3NUGDrTDlZYaAap
	 XbANW4CoHjFYn4z/McJ3OfbO0ewyiQ9Z8d3FaRISYxwX/d8MND/g1yD5wUYcSmmyES
	 PlscdJ9/ln2Yf4BZmm7x+zyXVMkqKFN4tCfZe8yIoo7XKiMk7SaQs4h38V7FZDx3kA
	 5MOUs0zr0vaI08AKv2zsLmnq01GdLt6VHibsKDeK6hDwGzf7UCNqPmUC5nsXynQEot
	 JHd52JU5nfcrzhVA9AoV2X6a8JDRYdLfwy3xl9B75PgVKhmFfHMDvD8vtFhB789Xrs
	 dysG5p4ehIOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAEC83026
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124819358.27898.16888699679217910358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597c0db05a718629a04b54b264da4c3a51d6832ed0b54e673b606e654f6de111
Date: Mon, 30 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751248193
