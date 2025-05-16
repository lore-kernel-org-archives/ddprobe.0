Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A8A227EBF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747394994; cv=none; b=jXxm1izFQK+SJQWUxZ4h72sAKGJM2S/tP7rdzyUPHILmzC71565Vpn0+XgvIRzm6o5RBZ256NH3z/8nLXxq9c+iaxIms4KLpod+/WVj7pDhk2Eri5QSEbpYusi202KeMbuaWHb0d5bs/gKADY67pk7WnT8ai95R3JSkVVmLqK2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747394994; c=relaxed/simple;
	bh=HrAwB9XKiqGqSLwS5LckK2D80XIbvTX6QgyDEtnKKRY=;
	h=To:Subject:From:Message-Id:Date; b=W3VUyQIvsno9RVjN2vJgRQ+T6QYA0qvI0DnHBddGWGBZpjPZkkxfXzcTtsRjgjsGpV33dDqUt4D6HvHNlN9E8wJCy0Y+gh2lsTEjUCrsKlLeCIE9JC5WiTqEyeLsJXUSrAYAID0SrzSiDTHwyCZuq1aj3snWft4d70WI31BpSIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9vnG16+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9vnG16+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7214C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747394993;
	bh=HrAwB9XKiqGqSLwS5LckK2D80XIbvTX6QgyDEtnKKRY=;
	h=To:Subject:From:Date:From;
	b=g9vnG16+jYvoPj85LncuZdy38upikDqc9FifveNWN+atMQmi3cMB8HmrVIpiwgoH5
	 LiMfnXI6Ee0gN1HwaFETqBT9p2paVIqAnZ8RKzVtWnfsSaqKxkCh6/TUHpB7Z2hMUG
	 OEWdmfiLFo00wSG82XGtXWBavEH8pVA/yuGST9jmSJE/0sT7uC9Wpna6AEu4jKkfXf
	 eeMXxujuXoHJOjjA8SvUyma5cGMaJVYkYtK6eZiQzh0Loyi6j5djCruDQ8OEhjv8jX
	 SbJg2/64XDFJ6BQ6yRuSGb+rLfHGxF79JomDTMtX4qJ/DRGKm7x3KvZ7d5gp4Jy0Ti
	 AC9C07XrFze5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F56C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739499360.3871.10994596879659448867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5a7faf3575600c5b6dd6c9d9d6f6d1e59a96dbe886bc4b2d94ad77d66282a1
Date: Fri, 16 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747394993
