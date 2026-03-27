Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D946F3090F4
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774632893; cv=none; b=El5aC4Lym5UGVxVZCZS+cy9mnpvvTl03s/Us6SyXRMJo6upfkSZy8KdK+fNUBZBOFgjZaU8PTw31hoE8gzmRpGucjtfkYRO5+7xYTF/Mfjn/c9UKcKB9fOcLdTeuGqhQQ4eyYMkSRkoG5N5OSDpiiLct34gCmikEYSwEb+NYjTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774632893; c=relaxed/simple;
	bh=1DTEYDv4DXdOZ6rvoBZwVlH8llCTSAoDt/EoLhH16Qs=;
	h=To:Subject:From:Message-Id:Date; b=OMaY9OJw8aHJI051+YGa1Ga0jm5WvB90EvDj/R2W9pu3VLv9n8DYWWQab5wh+MHHCbESFtgzNPx7gHaM40KB0weEwiwhDZzgwJ4rueUWQ7/MY4fCq86T0WRbZsUpybeFqA8mjachB5vjOC+BciXYLlEV7J+Z0p0lNl3DXxJE2Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFKRGoUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFKRGoUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4174C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774632893;
	bh=1DTEYDv4DXdOZ6rvoBZwVlH8llCTSAoDt/EoLhH16Qs=;
	h=To:Subject:From:Date:From;
	b=IFKRGoUh/PC5oYnQ4CeBe7qGPeHemn7ejH7LaqApYVwLokPGIfETetiEXohFREjJk
	 llNje4oGGX+bK7dv8FQVdCQamCCpyvkdQ6NGD/DMyWniTlSO/F4Dnx6z+bfTZXt3XV
	 SDCbZKVmiA8hS+VcDskG39i63ArRAJAKe8IYMHgGMkt9aH57H7+nDESCk/8dYiDHYh
	 yvsjPjZPt2KVBqVvvaPKhkcr61HVtgO7sBmqcuJ+LKksI/Pzm4f6b2bOKRzjNp+oz0
	 bit0Hd6WxEn1Rgv2TAuzfcOOold/9kbn5bDwcEPCQxM1I2Nyn34ae0e4S9GoN6yJqx
	 IpmH5IP+0deTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197210F285E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463289358.27120.12130370032045128035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e262d5addbaa14bbfae8c360a4385195888648a6e1594b4e5ce0343c079170fb
Date: Fri, 27 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774632893
