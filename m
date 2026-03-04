Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29996345CBD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772639094; cv=none; b=WWnVkEulYC4yumInM4+/R8EwqzZKJvVuwAQ5jLolIJHXvSpwZQ2w8sKQXSLLffN7aCgkmyosbkQMLHXtfsgTQefmciLmJveBjv5nAL7lZO3tW3+CKFrjvd8o91eGbgfp0FfARllT1FkhN+KlwxMB8gHscD4snvkmFZFFhO+KzNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772639094; c=relaxed/simple;
	bh=Ol7Qnuz1q553PkKy3mwnBZYgnnV+uSU9pg9XApt6oH8=;
	h=To:Subject:From:Message-Id:Date; b=gOHYPWmbawz/CZJbD1JYd/5rS99NLCzi7E/EYgqX1FrOYb1qNaxcY3DcPSXicXTfr1thZkp6mD+K1GKLE+pdL3L9voxyQi1P4N/CDvIWCOlybZdCLb/2BHMC8Ehr4zCSKrumCwDjB6A/9myUO/9RX5rbOQxDZ+lQD3ScuDLwZxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey7sytul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey7sytul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D473AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772639093;
	bh=Ol7Qnuz1q553PkKy3mwnBZYgnnV+uSU9pg9XApt6oH8=;
	h=To:Subject:From:Date:From;
	b=Ey7sytulMuT8XRIasGR7PR2oGzHeydBnZuvirhZYU3w73uow1KWmRfidOOAYHqWu/
	 lD4Ch25zVMyRw9s0DBOlkOdS9i/iQ78kGImnF+MdhdEAwRy0CR0QApp+v+j48cFMt/
	 4eVa8QPsqj3t3npWSbyZqAzFJmzkK4gbpiJEqGpJ4cG4GMyycn1taebNIOkWl621Da
	 dDTMfgdbrJwOFyRXZDsBPllZNZYISmvchUqQ+R9cHKWGDU4kSjJQic3QSCnQwZY9PI
	 yN+KhqqIyLZ0lekELhhtenEUIGcJZ7cUx1qHDaCfpooJx3NABgy8GLxSGEUlsdm0QS
	 Ei3MHO977pRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE99EF8FFB
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263909375.670.17578114605808045738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc3f81a3faad197cedcdb0aa0e761cf1a2f59d389fc48a7a43502d9aaca9031
Date: Wed, 04 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772639093
