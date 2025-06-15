Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A708202969
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749996594; cv=none; b=NwlsFyL3WFPIGJcRo6wXUgcCEE0aO8Ah6eptRBxBIVGRjH7kpB2Jq7nugCD5ick7jAJ/jyVtFW1Wkk8TGjWjNU+6lEHnVX3B8dewA3h9WhIVD0G+ITUxEUf2THFRwkhmDk0iBnFuLbAOpHpRRH+Yg4wYrZvWp54xsWVsGpIYPDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749996594; c=relaxed/simple;
	bh=chGrU08lXQWOxQtKFyTueucbWK/1QjStOT5b2mhDK9I=;
	h=To:Subject:From:Message-Id:Date; b=jDuJaSSmAlEzZTC8Y7Fa5YvHvyC2DupXfz0MpO/BP+vOXsbBsnBvQJlwuY4ovX1jGPkkqlVNwpcDLARWIhAJvVE8Tngs799HdwpmKhyRqxUEKSCAT2oZsSzyWZycdpc+dhM/jAPcOuSuGyImujT8HQuoFhtW97ekhIvmZQ0UFhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3B3M81/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3B3M81/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF1EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749996593;
	bh=chGrU08lXQWOxQtKFyTueucbWK/1QjStOT5b2mhDK9I=;
	h=To:Subject:From:Date:From;
	b=m3B3M81/xLfdTaFRF/xVGP4Hyrc2prr5j65r/DlukJvMNdBqp7AfR3QYf7m20SzBe
	 tqZyuKkSYK4frEwvsCTUOzDaR0lWh8Qq0oyftybqKJz6XD24ViHO6AUmhVCuvfo/7C
	 zTe/ACAAhhaq4Mm+4ix/LFZ27BIPU9+uw8EagnM5TkFXM2bo8J4i081EnKzXdy4viw
	 5+Glt/J1WFOdUadSu0k3q6nNOU5IU+V3T9gHXCrHTy+9w48atCdorW2tHQHGu3KLKv
	 joYAI94ZMLhf0mQnf7KInsCE/RyGKnAjSiO7rNdYM3yPuibvBA2NQkHzmUEfJLvW4G
	 TwDGgS/35SbGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9AC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999659358.21424.6568299681838371284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a07f002d90f21e4d1e28b7f7142d74b9a45b7c8e8eafc859c973a6a094d7726
Date: Sun, 15 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749996593
