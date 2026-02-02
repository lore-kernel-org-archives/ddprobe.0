Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A124220F37
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770009234; cv=none; b=ZHrMSfsMUG9WSnvm0IcZ7BdHhiaF1fnCHL5fvGJA1lWNhRH26bVENtnoQdfWCWn6qyeKQksF6XShhviMA2WglFa6XxDGNqrDceGYfADBlPsXkLB+TDirn5WpDP2u0xIidkR2idlrbhtrWJ+oyEgO5e7NNSM3j53GG/WT8jiNSfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770009234; c=relaxed/simple;
	bh=oO7ow00i4gGQ869TgiFdSZtJI7NGTQ+wlXhjenrtNss=;
	h=To:Subject:From:Message-Id:Date; b=Gt5lztcKoSu+/vn1XCh2KdyGkLnxnoxaGs2YytRJBDYbygVYbGUN5Oij/n5GQzmv1UdIUsONfsmcL71bIPPLRjq8SfOLVBw1KSJP8ujBSfDEjZmHWa6T4BD8XN/3o5TFVC+Rh5tkxCBzRsUzmp2peAq78J3B1ge+nBoG5NHRCXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxwF0EH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxwF0EH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42DAC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770009233;
	bh=oO7ow00i4gGQ869TgiFdSZtJI7NGTQ+wlXhjenrtNss=;
	h=To:Subject:From:Date:From;
	b=GxwF0EH3aXcXggmfpxbNl54x6J7wPLfyviFWoEMnM2nIlKsYZp6sD8Sfp7PWnf4hU
	 /7xxsm0yAzlurTjW0CKFvkU5Xx/IpkD1ooWRnS87jVOiTWw/RWorUuu+ETaWxZtcj3
	 MfIUGDEVV859620jq2A/ltMnDFqu9JKarKhETg5cxmG4CtPP+JdN/QfXwHFKKTtkMA
	 wb10zUh338Y8FJMFkf/UUJOvhxV6nWF2VnkTCLKgTBuz7ICl/pSwfCNjAOmBLbjoEl
	 TzW7y4svm6873TMXs1tdg0NzroFr9yUvLa1FXZRn1XX3ZRlnheaPqtMmuaTAGfaA1e
	 nKCQLrwpMj5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0523D172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000923364.13926.3585568576138752208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a02bf2238b8b4348b80cf7dd650c326aebfe6237b55eb7feb544dd7b8d3dbc9
Date: Mon, 02 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770009233
