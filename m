Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD7218A6AD
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765619574; cv=none; b=TUvafpj8vSuPAAy5eE4gBHOM3xmKJ/iueMJbtaySqBd4kD9DeMbT7L/0OC/zP3P/g4S2e9ufRKj3KBy3Q6q8hwpCcbOrNUynS/1CLfk67tWJcQ7+YNN+9+0yM/SY4dsvXIO3CKA4tVOeuuf+rYyMUG8bD2ccWNyqmH9E4Z5c0G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765619574; c=relaxed/simple;
	bh=rrmQri9AKpTsIVInra/WKjpgjlIxrupqWDNwwMwQo9k=;
	h=To:Subject:From:Message-Id:Date; b=gX/ygvAycnX11V6O1mag0Y3xh5krm9qBGq1YYRcI3RsvazFmYNZ4FLMpk4RIutPRQk495ZN8K3Wzf6m2yKT3dLQfHA1OhVU0lpmUMRH/qzfXKOul7jFASiecA//+rKlo3O60TmwWNUMfCPOnwlBTKISB8XFybooEuVp2kCiUdRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCkp+ELB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCkp+ELB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C71C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765619573;
	bh=rrmQri9AKpTsIVInra/WKjpgjlIxrupqWDNwwMwQo9k=;
	h=To:Subject:From:Date:From;
	b=bCkp+ELB6kWTC5V9IiXVYZCUfg/VwHfbFqH6qJ1kPQJ++GnsILv1AMPRrSEPKZBnG
	 U5PhkW94p1EKzd0yinRD3IywkUc5I+uWEtwa6GSAgsvBsFH/0YE1BCF5Ff0asVYPOz
	 f1NL9xE49EtoqgwLAEL+LC4BUdxWwMnFIYsFNSh4iYp/ROJfUyVA4n0cKHHM/QFv2s
	 kjTvGUnYiOvxGnVzdi3VtP6vEx2/7GEN05SMKJXn5hMYNrEfdsIhtLLRtFNU6kDpK2
	 2osY9h4kvaxOSrUfG7Zf1Kb9Qv0AcMGFvqxSMlpTA6PJFBOD6bKbotpSqNrYR5oNz6
	 UbP1HliPEV5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D33D59F5D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561957358.19786.3154359291219221715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e24d72891e795ddbc61708b7c374adfe7e0c8de4a7309d0762df20f22c54c70
Date: Sat, 13 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765619573
