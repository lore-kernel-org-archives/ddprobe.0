Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299233594A
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759114794; cv=none; b=dW6vHxpXbQsLpJY+16kjmu/Tq5Jl/a04vkCY+1h1fkfbm+ulp+dk2DsGXT0FvqOOIL00Y/1T7zHvx9UX1T/gf2lUmTgYo7uGbtsZTHAZ+e/NuzE3rQAgtnUHQaLnPsJv6NnxIXT2tRaRtPYBBjgww1KTyS+eg2oSO69yBbzYoQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759114794; c=relaxed/simple;
	bh=UOHIHJbwTZFRnk4fekaLUIvhtKVbiTtQRHG7Z/upcNY=;
	h=To:Subject:From:Message-Id:Date; b=lF5S/Sl7H2r1aEog5xuN0SY/uMH4k+XblT2ZmZzK67WJs91vgCca102bC7I/vr8ATvsEMQ0q/rcPC3TBjcp4F9K9f9spGELLyrkO+SbhpCvgPMFc59hUpX1qmNxuGN+TA9VmGbVepWhw7JXlWirWdn90CTRehqv18f0UEd7cGG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKlyFM5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKlyFM5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759114793;
	bh=UOHIHJbwTZFRnk4fekaLUIvhtKVbiTtQRHG7Z/upcNY=;
	h=To:Subject:From:Date:From;
	b=DKlyFM5v8DVzjQ0OwxhHuJNngueWEDvUgOih7SRZWcab6PnMi021gX6OQEEpWQKIj
	 uPeTrbeQKza+AeZkAvmImyZI6rmPqhYqhHq2k5or1DL3DMlVdx7r6p3b34oJFGd++9
	 z7gxnwSkMvVfLE6C73By2MAaeXBkJTm02q5+Vr9MIEcy1thciEcTwgKU/GSm0vylJu
	 FH76cpAsD+RkQaZh2+6F8toyF3D8vO+Veo8Cy/6mFUBD7VY9Nc70zuKp0BroEaHuAy
	 UcsoGLaCZrZQzwg+hf4CMUd204qCvCSAa9eBILuVQtf0WLEtWiUGhQjiF86pCNDoXR
	 cB2iQDoMy8siA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BFCCAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911479357.25509.17624018735050471260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92fdbdb8a31f710b8275c3bb5eb764eee515a1419694cd89f45e8d9236e72b
Date: Mon, 29 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759114793
