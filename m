Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D25617BB21
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767303834; cv=none; b=Wfhe5FKDsYkH/zXINUp/Myn9LFaxATqcXW2BuhQFf4zgcz0HyDu8UxqNINAtqIvMIPg51RDxoaisPImut4gfok/Vyb+L9lA14do6p7J2b4i0BS90GI1FueUwuF9kgG8oQaH6l3dFJsS9hjsgplPAflayX/F74/6M7w9hEHXB6lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767303834; c=relaxed/simple;
	bh=Dp1y7kPYcsm7L7T/tJsA3T6nny/8U0qJg4G/df0QBus=;
	h=To:Subject:From:Message-Id:Date; b=HiI44tYxSYQBQWCInE0u1iJvp6qyxx4ty4AoyUKkZmxHc4/rfOc5rB85AWo1ujhCwgf6EjWBpBRdIIY0D63QUoko8DzfcOmdvePXDBa/CyGwg7igmKYeFSH0AdCjjLTHaUqS5lrNmGQjNo8C8ZQ/lMKzjZcwKrs6ZI8H/EL7zmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyn7raiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyn7raiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767303833;
	bh=Dp1y7kPYcsm7L7T/tJsA3T6nny/8U0qJg4G/df0QBus=;
	h=To:Subject:From:Date:From;
	b=eyn7raiqM6H4K2cKj45Bl2yACkp/lfHkMiM//Cg5gv0f2gnmojkA4uM2e0eCdvzvk
	 Q3YSC/REApFzzN8cPt4MqZJRbdCG3VrY664yF2FEqWpLePaxUF9d5zkVdv+UAQCqDc
	 kEiBO3C7WrgDQVjSG1TVNjFxaP5FjaVss8E07ZxxTozG8qI1YCObbCDyBVJrsyrOdD
	 jrJBqEKiRtca+va2ahPPqrhPgbJVgWKXNYw0uNSde2NqdcP9+7HcDi8tfoA1Zzq5Zc
	 Yv6h52oD7PY6I5YUQyK9548HC/O9GNB5KONk/dulzajGs9vkjg6efeU6bZU3dNcBba
	 bkpRN3uTdtayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E9EEEC1C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730383357.19225.14965391586557321516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48500fe16fb65407bc981997d644ace904c7dd85ee40349f48cfd2dc145ea14e
Date: Thu, 01 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767303833
