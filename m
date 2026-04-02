Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5FA1DE4EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775098533; cv=none; b=FEEwWbDxumXu6qZH0Qb+77KF+L2cpuDsQJWFzPd8y0CqiYzmYXSiYAzIA+KhGD9D1LTOeHdRA5oAjocAI8KGTn/dYT+n9m/mBir+TRNIfW3KEVce7UH57Hu0NtRfzDRDjQrYaj3Y9FKNBrouWycmibbrvEK62/piFujjMX9d4BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775098533; c=relaxed/simple;
	bh=tR0cOUWtr9BIgIEoOoUa0S6cPlWosFbzWmQnpLzKUtU=;
	h=To:Subject:From:Message-Id:Date; b=vCnyinQo9+il/Cq4ej5nZtiSUCRh5Ft9PU5eBjIiB0FV8rnvT/UW/nF0n7Um4Qe0WFKTyYAwaoS1Ws6Zq2mJo3gRromIxhtEjZRzM4ZOd+fj15ajn5PveUBtvM5ZgqVtY+kT0Cq9Fa7UQi+QX1E5fh2zzoyHsfURjnnLukLq7jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IReUpS65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IReUpS65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05C9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775098533;
	bh=tR0cOUWtr9BIgIEoOoUa0S6cPlWosFbzWmQnpLzKUtU=;
	h=To:Subject:From:Date:From;
	b=IReUpS6549aL+NqJAoCm9L2NFNxI6QYavYGK8R7D7dtBvJD1UkjmD8vJbDKbt+S61
	 /aEpqlYR0LDLHb1p32l3WEmCEtmulcjoANcYjLYz8kCOAGrg4LQyDrW/mt65JZmcKH
	 kVZ3yZyn/rgroh0z/JMaHnubVCdd3TCxDJmYeg6EidSrPTO5cltXBe299C8zXlSvj7
	 DmIgfCjMnX+LptL8vJzmt1SwJMo1oDImJCtQd8r8JhHl3vj0bcoaMTIjR93+ZE49M+
	 TpRcge+Zjh+V7hyNmU5Iwp6lFndqWIRr3JzS6xup74/NtOkg1tg1cNC9eM6dP7wpzQ
	 xFHeDod1VP5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC822111227A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509853369.29036.15818480425031031704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b057b22874424c57b4e9843c1a071c47189fc45a4c38eae3220a3907959d388f
Date: Thu, 02 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775098533
