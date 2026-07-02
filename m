Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1DA306765
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782959314; cv=none; b=MEra3lnsjQP3af2Jbf6HINj91aP3RI9YIetveFc6spWscwQpY9tZrN9WlN7cr24C991fwedRwWgiJK2PGJDLzY30y4ty32BaLaTWCRWELEGv53I5qK4C7rU0lctT183ZbBv4WMGzHdxrN4D4cJzf0K8lhhIJPkeDV9qGysHpFgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782959314; c=relaxed/simple;
	bh=ciUndjS73LGTSr9GYA+FTBX0ZbzO/qKbBy5YLgO0ZuM=;
	h=To:Subject:From:Message-Id:Date; b=nMO/kz/fExnoxQEUecdQbG5vQ+SLvIrRUNqPfSBOIDmKlzrndyQqwMy8w2CWdcGF5H/hB/9Ot2FdMF/nAwVIP7TEQ65oMbLNEDpRiiaujL8RMjgPcJxXK4sd9upKm1BkjqCJxbZpkiXERKzp1d7RikF47z7Q9XDxzomcJBx2BzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMwegzcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMwegzcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D369DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782959313;
	bh=ciUndjS73LGTSr9GYA+FTBX0ZbzO/qKbBy5YLgO0ZuM=;
	h=To:Subject:From:Date:From;
	b=NMwegzcSf7ON13CAvid3hZvAUQkOMdxMoVYLuO8BRuik2iJ3gujF1P01CVI+YO/v8
	 BuzNa7csPsF5HMaLrm+yfHAW/cB6sI5zkt+ZSUKhlWRxPMK0E6bIsZAhJ+fk9rvth3
	 K2lm6NZqMli+azb8Uf5JstcD1yDYeZi2mMxnCabZglkHL49ZWNttIF45lCBsdhuWXN
	 iTMTOOl8mzHMcwIv9BxbyOGsmYtygDc8xjhmQVE7NyTo8qTFfdlO+KTSN9fUutMetT
	 XWb4FAF5BwyxNIFKxilZN8jybaHwIZPH56hi8N+caJSiaF8/RiLSk30KDEGg1UOw7P
	 UP577V6XaH7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09F1C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295931368.19505.5354272698536122101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e18131820ab17773c390710651314b60c39e890c7ce332593431e049a606073
Date: Thu, 02 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782959313
