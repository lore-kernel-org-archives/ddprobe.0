Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8AB3B71A7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792257034; cv=none; b=Xg/duCzUjNQ/bYftbqw8fTSlxr0GorFHl/l/qCZUjhmoHBHYQB/8h1tDURny/HrU2ZJdX7eBhvbDIUvKT54JxBrgGff9C01WLqEvfrjo3ZdTP4JPFHvz1tmNj8oq07O37n1Ay7fGby/BCpAInQf0Xaxx96Mwt5CLXZjJK5j6CnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792257034; c=relaxed/simple;
	bh=bgUXIFhOyHRgSsMJSgSBez9y4QkOYXrvOo8nzqrUJug=;
	h=To:Subject:From:Message-Id:Date; b=LfgnXapUS6w/uXZg3k/S6x/OsrbsXmnBaISew+ZDG/5z5nU1jkyvXqVywnc2xl3pbyIn00cW6Ulu5mF3RtEpK+FluWT350LojA04taPY92tb8uGA+4vncu+P887E4VgTZQ+JoIREujsCvLB3JFhLjZFqj87PnvTJ7Wgooln334M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akv5iFKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akv5iFKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F2EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792257033;
	bh=bgUXIFhOyHRgSsMJSgSBez9y4QkOYXrvOo8nzqrUJug=;
	h=To:Subject:From:Date:From;
	b=akv5iFKvQDh5pCQHX/t4FRZ+N8pBHmRKq1aPrET0AIrgNiVSJkiPyKjdUOYqbuNPg
	 mMTdplwX6uMYAZ9gRYbtxggLK4KswdyLNpeyicoC3sA1gKJ5ry1Z0MPffiGO2T1uoG
	 LsxE9JtabP2X8lfbSiLV0YpsvnWWmIEV0vTXDzblXK3gDjbTof3JK/pLIXdg337Wgk
	 HExL/EQSX/aRNP+UmkF4tUAWCaHmVUfRHmH+7/OGjPUoY/zrs/EOhcMUETVx8TkGfP
	 KvfTkfIPh+erxTlU9SjObn0SfD1wMfy5kkl+8kPBViWIo1pr4DClxHYr828TNsEY6l
	 dzih8MmVjJwcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA759CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225703374.29134.18419636734977847892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7bcf6c7a7222cd902bd080caa859003c883d5ebff2fb51933876b7fa54ecca
Date: Sat, 17 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792257033
