Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22735147C9B
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755469194; cv=none; b=MTFqvw2kAL6KXgIMb0ON8DD8q0zSJ6dQjVUySk9JZwhuUDw1ppxudHxVvpzWJH/RB8kvLqYJcCz9BNK16VzNMCjgHLJt+wQthWXiUORpwIJjNccPC0HHS4sxvTqmFA5fLbf4i7Gs9mCIYz9wdbzRQrjuHPsIsUJ/AD22606DW2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755469194; c=relaxed/simple;
	bh=wM3jrtjEGF/c8M7pbD5g9Nq12O7wpI6yYH7mcDRVh44=;
	h=To:Subject:From:Message-Id:Date; b=P8VIN36Aq2BUAZ8Rtk+HI6CBaTP9HMMXZ2q43QDqR0Xrb5yegzJMEMJ503RSUUNdmfEia84CGHTygZ0Dj89J8jwMdBz6kfHmBP/Y0srfpIFxabIXeLz2iROgMhIwS4qBiZ6FhyEJiF+VvS9TLfZxA4C94+eP6Sy+TVzA/Nd7bcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HizWS/KM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HizWS/KM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755469193;
	bh=wM3jrtjEGF/c8M7pbD5g9Nq12O7wpI6yYH7mcDRVh44=;
	h=To:Subject:From:Date:From;
	b=HizWS/KMQOk7eQH1aLkY1dLTizMwHRRCxuxW7A4jTWp5gPQMSVjWZEM0krbspXQj8
	 TfX0ldU+wGUqspcumWHIJgndlAei/1KffjywM4dksYqXDqjZ5lGFz1lX+l37w2NDod
	 R7U/DLP0C/yNHnY8CIa5E37nT5dTLnjQcteQVB8uX8TZWWK8J+fhdzCCESWOXJbsYG
	 h3dSFUbvvr1Uv7YCQJ6UHZLeRPqF5STrE9K+Tn7whmQSI7FhKbDLbE+1GgxlX/mSfv
	 hikHCpJZKjFsEa7qHAEaw//8lUCBOv2S73i9fmlcXCukXswG80l6PPanFc7bBQVlPS
	 y7VwFKDS6zm2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4ACA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546919357.4431.18223085927560874793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f607d77cfdfdb2466374c98d706788443c14fb06497ad5545a3b996b49096671
Date: Sun, 17 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755469193
