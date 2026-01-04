Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D25A29C339
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767511434; cv=none; b=pG++vVWkL8glkPftmc96FH3TclKdaMzKdEmbG2wmdUxR95eSh7fkKKNCymxbyCPl269s1SnclYFLcJXQWB9S5ftN6d8vGgBnr6uq/mX9lSqS4aTJdEcmSh5l1f2XZzhRlX3QbZ36bN6Du+bOs04zc4rG28WomB1xC/eHusDOTCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767511434; c=relaxed/simple;
	bh=P9CmUfb3KK7LdAtfdC18ziKBSHCPyl5WDFy8HoDKGTg=;
	h=To:Subject:From:Message-Id:Date; b=dM9JQseoUIvcjTsZP9B+rJOk5uU3ZOyOke0Ysoiuaugt5paKg3uRcyrio60oZHzTfGeBoS9WROI3kq33fZvzp1yobXGt9EkJAW3yPytHEJkfpsDOokI+0+bHEpbyBaZtGob6+TPfHJUjnByqvkAm2TxjYWX6wNqQjOq/bI/Kp6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDwbEBzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDwbEBzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A199BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767511433;
	bh=P9CmUfb3KK7LdAtfdC18ziKBSHCPyl5WDFy8HoDKGTg=;
	h=To:Subject:From:Date:From;
	b=RDwbEBzDAr+2AJMb4o9rFE2hU5AsSjlQXkNwE1Knnqz4ysiwUPxEIJ20U5u7f8x+H
	 QNUin5GqqVWZoFcJSd91HhEJRWndAcGxbJeI1zRcYhBgYDE8befC+qPTb9D0c64Jvc
	 /79W2KuOjtNc+XaAn6/AgPjcpS2ANHSHxXQMjMeNCJ0G1xkYZD6DpBeg10eugiLS9x
	 /U/FS19CtQ1l35kMZMSjvDvUsP1oyN0mMGkj/H6lKYiQsE2wtmSkr+7mGWKaGKZt+0
	 hRfHGFri0DgtHO1F5uimwiV2QBxZS27IgB/nlZNKslGj3VqMhuzn8UWjs7Cp/OgoW3
	 fE6EfmW9zghyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A3C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751143357.16418.10038325042284211482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e07c4a89dd93e34a00359c3459e1e49a1e6399e0e775a46ce1db170de92ba1
Date: Sun, 04 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767511433
