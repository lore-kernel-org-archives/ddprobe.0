Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721AE429CCF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784800774; cv=none; b=DN0FXGiuDMA6MHdOXQGaCPt9u+uKRa6C6d7okMVyVXqKIwi0pka7mPjhy66r6gGTfOEM/9z+rz3Eno4ooqx8cEAevvEmV/x2numnXv8SxxE+4qrc0Rhq9DAdpxViHeTPp9J7INmscB9ACsx1QMqeBlmDpcG59lZSXDg1lXr5AxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784800774; c=relaxed/simple;
	bh=jysbb3k43FdyBaOtsfG+cewvc/vgsrjhfSlwOWmleFA=;
	h=To:Subject:From:Message-Id:Date; b=bY+UV7lcakFn7lXcbICjb6oJMUwl62oKuY49eI32/NTujE8nkXDDq5041Q3bAoKsiipmmzzYpjLGZ9vCwfqOkJ9NuYntNxhLKGQJEgRqNLicFBoTXqel++nZDysOvRbMIOpeQSY5ZF5J68IRRvI5eGCs2M2toe82R52AWkjTIPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siBzQbpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siBzQbpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E57ACC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784800773;
	bh=jysbb3k43FdyBaOtsfG+cewvc/vgsrjhfSlwOWmleFA=;
	h=To:Subject:From:Date:From;
	b=siBzQbpHPQEzIOAq/b7YQfOU+R6V5QOg5hcux/d+gNf7shd2tc/YJro4sLbTLbaKc
	 u3MLgP1/ulLPv0vfjpagpnzQV0e1BHsS+VYGwKmKcADDHEYaMQfZDFOV1rr8YDUWq2
	 7KvPfP+lwuKvNH4Aai9GGDY6v+zsvn0g4eVuE0EBRM5qkjrWoht/c+653v3h/GXQBq
	 GgTRAYLrk/Q+afAyWuN3O7c0pjrli7dJ/PXDpYX40k5Ii4QNLoXTabYNwFg1NK4FTg
	 giGNAwcaLO3aiWYjlfzLXdoWzqfkHTbrZfEu6hfVLSzTCy4e862AezR1WnoTFGxKKp
	 OtAK+ftIJKzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AC7C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480077372.1846.2442262483641586772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754e4c364a911be5d26a409e86b6d1c40363649efe36747cf0f85f8e95c99a6c
Date: Thu, 23 Jul 2026 09:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784800773
