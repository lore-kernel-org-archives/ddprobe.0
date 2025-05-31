Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7971EB39
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748660994; cv=none; b=oC7rSdyRmxWDkXZPyb0Lv9HBUj/i4NSL//WRtezsHznSc2x8qfL8SPggKGUku4Nh5wA9QdnpNdT5QcOlUX11vWLy+9fRjA2qDoW447DWO5XPMrj2Mxe99XaGXaehGcfzVN//RCYyTVNeAVp0ZbUig4nwLGkI7oXmfREICh0VjRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748660994; c=relaxed/simple;
	bh=n8OeGrUYZGcp98j5N1rcvFMSHNCWq6ll+QNz6CMB6E0=;
	h=To:Subject:From:Message-Id:Date; b=TIRyOXZFLp/BYZVYtx6cUETbpmN+Vwxntbp0bkAfQxsLgeSlO0Wrs3LUUrjJcdYt0wcFieKepUaHbfMze5FPV9L0EuNpmY5QqsKk8B0VWmJGCgfjnsbxrtIdfwmqwZZP2bTimVzKl1wok7+1WOoLo57+BTAwL86OyGO4z+1XsAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP3Kn7qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP3Kn7qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F03C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748660993;
	bh=n8OeGrUYZGcp98j5N1rcvFMSHNCWq6ll+QNz6CMB6E0=;
	h=To:Subject:From:Date:From;
	b=LP3Kn7qeyMPCzDGdB/3dnSjaml1AmU4AyV7ZRHSfivNpLoNaK5G8gFKGcKd3SoCr7
	 aI/oGBpmACKd02xabczaIMAklxDCcSIhc0LNPOHhoUPhUi5xGxyjbylnqSEf1LCK7m
	 V9SYx9seh6VPvpv4G2EoQDvhfAjjE73oqNZnfgdd/QFfDyj5ATQc3+dK5aE/omtXw5
	 fSnZimfBwQ79AAOgvcs88kbvlDdnvTSkRFlmctErVO1Kd6Fb809IJTUwPWQ5+DmO7A
	 we1eqZ8bYwYVMT/Fl0ws0jn8A66OLh+Lf+Onw0INqqn7zs3ZGZ2aBYHek8u6Y2P27i
	 hBLarVJdj7iyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B90C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866099357.2153.5524868014720734709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aea2c7c63e5be7c8a39b687f14f348f66411b68f711bb6a968a199c174bc81
Date: Sat, 31 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748660993
