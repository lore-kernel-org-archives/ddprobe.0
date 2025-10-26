Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B033F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761443394; cv=none; b=ddm35g1ix69to+pRM7m2P96uj83OZvZRysGK5G5vo2RiqTH9w/NAAg+Bv0s3YGDvo4/Y+4R2aRMbDFqwSZDa6oJz3x+SRiiwc237dpvMO9f9MMlgtJo/LrX21pT3sxTdeGsOiMFIxQ/flIvi5xKEQRH/C6f0R7PvOBMfzQU5b2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761443394; c=relaxed/simple;
	bh=eGk5W7YY7s4Gpo59LL86CvA719cZezAuvBEloQ6vMYU=;
	h=To:Subject:From:Message-Id:Date; b=N9oOd3PUQdODpMkgG0L2my6v8umwf5IigiGUvv/qQmVLy188sAto0C+wmoslHoL5eK9dgJqRlZteg4yvdnBUhe+pN42mV3Frysf08htLCbvXrfrVypIaG2JKebnsiM41j/LTv/HayMjNnjfOxlBL8kqkf1h+Y9XWkyOZZ2CmHOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9tqoU6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9tqoU6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABEC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761443393;
	bh=eGk5W7YY7s4Gpo59LL86CvA719cZezAuvBEloQ6vMYU=;
	h=To:Subject:From:Date:From;
	b=b9tqoU6Q1LSaskTtwvXXYNdHePjMyaEcrNk47MtjNWU1zHv4vk5Y0p4D9r0IMtOs2
	 vb6YnRCDhNQZOVZTIa9EQ7eLmhD3KT1nWgZpriM9UAFD65jrgR894Wwu83CibHyJOG
	 lcRSECFXsEOS8nkWXnUCFcu//7CeAAinEWRK6vFr3V2ziwAUS9nWl0AyrlI7PKNuP5
	 nXV/7UelqmUsuWldhrDmwEw0UZBhjU6Ww7rRx5wpgIqsE7V7A6r2XsuxTQip39d5BP
	 rTpBvoQ1RO8wHBpfIBO3P0jzkQ+1+m09IRa725uXebU4I5GupruZK3H6Lo8pwOnfmn
	 eXHX5N3y2xAFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95329CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144339358.17128.7496063286238344538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af73ac46540ff27c3e8b0d4ff163715e66b79066b07d13d3a95c4e1712988ab
Date: Sun, 26 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761443393
