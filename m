Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CF5134D1
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726455954; cv=none; b=GEXkXlFMDp33jizTHZE7aoi64Y9C0HcHLJOVHXajazQTQ349YGCrIQ4JOIDwUhLxJx2C6WjLoQHK4DjaAAib9jJTcIqs+zbgkq61NAJXn5UYWLBIqUSun5bJCMhZKWDrXr28BCa+PFdvwwgLdrrN1JFAWaQ96H+SEjdz3rqC39U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726455954; c=relaxed/simple;
	bh=CExMBpxHEeKjP+KO70lLEmk9age9o8V6bNJW2BX6j5M=;
	h=To:Subject:From:Message-Id:Date; b=TV3sxxBVd3OUmloMhGnhtIQ30NzufiqW+H8wwKryfxhYocRAxrJyjnF53GTL7gc3+7tpS/1sKcnRRtJ64tIlexcyr3yhVpk/ujsy9GOV6AsFahS6QX8GjyqzsyN2W9GxXn/p5S2Irbiim/TtcoJWmQoOT9SsxKLTEZlfQaLhEWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL6aXqTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL6aXqTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A74C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726455953;
	bh=CExMBpxHEeKjP+KO70lLEmk9age9o8V6bNJW2BX6j5M=;
	h=To:Subject:From:Date:From;
	b=VL6aXqTtNCztSspltUvAAlOf9ekt4CbjRrHYd/VZwvMshwfe1ZcslnhUgKrtyXLWt
	 Zae6CTI1jXWh8fp2DpQk0m1ju0KoiMIVdeOOz3Ks8KpUXWCfLI/pQvs/zIg/83vldj
	 oyodOO38dYXjmaUlI9phDTJjakC7ufbAYNvWRVCVR397xHTSoOjk8u7afSMcQ4F5GP
	 IVddMRlW4N/pB/k98y4e8dsONOsxwuql2zZctJsPGmpcdCWnMKxs0Z8fLDBHd1Jbd4
	 1oVPgeeDbMM2h/KrH4/g7L4Qz0KaPvhYQo6GQoCkS9OhDnUkCsn0SVjqCKIJRWobo/
	 Ip8LpYMX8xiCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94363C3ABC7
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172645595359.21000.3712422449624051981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b271b5998343cb9762d694e5fd650d572a09b75d6de2600c356a34dd87a0224
Date: Mon, 16 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726455953
