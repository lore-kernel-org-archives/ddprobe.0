Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2D31F4189
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741765135; cv=none; b=tvN7MDekAS3aPc/DbNbwS5/z0Vwzz+/iGYyvLj1+0YHzFAsxBzu3vcEMJfqAaytftOrecCwILAJeoRqwKekPWQBkJidsMAo7lt9Gr0fHOPJO6mqJs77i7/i/eCa+MlepOzEDR+hFI+hlL1A6gBU8SGO9Q2u+B1256BUItg+9mDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741765135; c=relaxed/simple;
	bh=BYaUTYHX7l+a+AYgfND6ObmkPKkZUxUJBAPhyCsNnos=;
	h=To:Subject:From:Message-Id:Date; b=DHggbv43UTwzz70TvpFHK2Z40RRSbjbH+mlDMWRIekBF608I6zDydIKEu6is5U4JQcqPlbIISrS73LEsXBQQ/vRRIxmi3hZvlVTZM1A6iKHF6VmvETtaCBm4mpsveYvU0glgJryQrQmvnPs3suZ5chMJRQWg5GL8gKzAxdbKUeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLdrjRUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLdrjRUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C614EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741765133;
	bh=BYaUTYHX7l+a+AYgfND6ObmkPKkZUxUJBAPhyCsNnos=;
	h=To:Subject:From:Date:From;
	b=hLdrjRUzmj+RJDjnBDTV+D+J81RP9kH0n7tTcM9RdnarPSS7JZOF8pOquaHZfkCpD
	 IJ7JXhqc5GFO6nA7Qfcnvr90WesWb4TyGPcQI1E6EPeSBQbRCA62mdOKXXbGPsPTYG
	 eU7lOuDTYXxzZmDARJ6ANq7ruxL8YijxTNH/zZrGAo6rGx4KTQ8/PeypV4Lfnlqso6
	 pde19yPS0zchQDINdroBbmyTjh21NeS/AJyl3iAj2K0ch7aZVzLusHSb57ChZEyxvz
	 QOmS8+tCgWLW+1dh4/oPiw/q9hwq9Rmaz30qOpL/ujQUIKxcs89vADsOGJ293MwJ1B
	 SiNsWNRctOjOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B056DC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176513371.32157.14034520181104092412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c87090d5768019674b1f8be64800db4851073a4e2451c3ed119471acc60ce13
Date: Wed, 12 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741765133
