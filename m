Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1952F2C21F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767339834; cv=none; b=IvA6QpoAv3FNMyJk2uaP2ziqkfu9dtUhrM0nK3on1IWhVbTRxrInOM3QoH2smA+jPGl5ThG5uHKH82woVt8Wb2ctcp7+Sd6YnT0rCOzjJfwZoPIxOCS/P6E60KEyyyi2ES6JaYnr4op9ZxCCbX1avF71+fVOe5xXl8nMcMBI1Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767339834; c=relaxed/simple;
	bh=ogwlc7P7liof3nxO/FLJmdvi4WPWRNDNIq3TvaxH/Cw=;
	h=To:Subject:From:Message-Id:Date; b=TKYBw2hExQVboUDwY3pfDHUDj2UpTQuobRzHi/7dv6mAWFOp8v96A+b2v9heEb0xcDLF3Nek4q6Ug9pkPK8sHiB4JWgcY4TXxtbG8T0wIs/6s84ae0U49c075Z5iYxTM/S/0gpfV/9Mh7RyDdeRDIuk2lrCQtJ5jbxSrMdrM+xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWWsbUqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWWsbUqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C64C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767339833;
	bh=ogwlc7P7liof3nxO/FLJmdvi4WPWRNDNIq3TvaxH/Cw=;
	h=To:Subject:From:Date:From;
	b=lWWsbUqia51QEhvyjuCoN92MvWev60/X7BUimSuNv0tnZDkNpCLvXDjQk5pqYxuwu
	 GTlFsGh7wDa7ToLvgxuXdN7r4v9hadNMjk06EF3vJbzdPyvQk/qTC7O+COaC+yWmdS
	 STESxq/fMsbI2eYjsj3tjzPtzok0aPg3s0VHvJkOhrQadwzDFpRWuzFe2FkeSeWcFj
	 vs1jf1/8UwSoCtePSC2lCSTwxpzj+7KzMHeNuB6eBcqKPjYEKxnR/bOu4iFcjjEMMq
	 IEuVnZguDvOmaIQL+hJm7vB4PdGJZ/2hLH7Wx/50xSqATSccKqbEDczlIiB1uTZwLn
	 9P2/CEDP5nmLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94391EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733983357.17749.471326054681105383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026f78b3ee392b3f83cc988c0bfc92d0251e0106db3f8f1c0b6368aca4711411
Date: Fri, 02 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767339833
