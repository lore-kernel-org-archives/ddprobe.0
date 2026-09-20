Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07F3F23CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789899034; cv=none; b=P1cMQBji/VJyRh+Fe5DDnp34V03IsGYRAAeXWqo/tLo9kL0yt2tTHJqeoTTl2V+cl6Vcs4E/sGlQUOYA/tFol5CXwQgnMD51a6OEKlgJdpmIopEWwGGluP79fVhfpTa6qa9L/vSA3q/2gTgGWOZh7J+Qy4hcqFtkBTZQx+/sd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789899034; c=relaxed/simple;
	bh=uUcloh5AUJLrqMP5SGMMA/vhQ1McOb+KvxbW4cuB26E=;
	h=To:Subject:From:Message-Id:Date; b=hCDa9qGTbnXemY/mFNSuznF5XHSMVxo5H+8WzpLl/L34jdAGBIrjoQwxXaASMZDZV8WFp3yDclUWXVJHoADZaKKOGQ9WCcQd1bE7P5cpbibKN5t/uyUJXI9Fo9jZDKxJiKynqITf+k8hqN6/ZALMLIb5lZzbMbPUqb6UrRlFzA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3YS5pmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3YS5pmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7F2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789899033;
	bh=uUcloh5AUJLrqMP5SGMMA/vhQ1McOb+KvxbW4cuB26E=;
	h=To:Subject:From:Date:From;
	b=S3YS5pmPh3UMoPD7/FcLXJv0oLmLPOLGcy5Lc/+X59hwBSjwWq7Qs38kczarwbge1
	 kx12iAxsr8SWKSOxQ/OL4BKX3+cG+0D0hV8qg/kTrbw7o6wCRW9y5wPBH/m81mTEfC
	 VBrWysQg+1ETrHcT+Ta3tOxOGys2wlg6fnFsbdCpKY+U2WlekrOYjpsRHAprb6FaYu
	 S0FoP8NOOqgab0m60d102/uptr/17yzWQj/6z5/wGl6Id9d5Y6iJDNudIubJ4KM48O
	 EEcH9Ll+Typ0v2RgsfXV7RinhUWlJLl8+ixp06myuMDa8j3wcq1x6n/HD4MFJQFnqn
	 IuTaFQp5hMHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB10FC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989903369.18512.8515130598253930009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a368fe23b3ffc69f2b63f19d55a66abba4aa8d19cd72b3abdcd6ace77867ab
Date: Sun, 20 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789899033
