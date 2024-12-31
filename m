Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3676C16426
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735682154; cv=none; b=miOUEfQynX1RGkg2O3Ih8dy+r7HGQ4jQLMNY2ifAGrBZ5SyKGYLJoo0ENLpPlIiniXVAakkYyBkPR4U4t8T6m1O261BzbDdY4qY+OIBIHwwvE5KR6MsRI2OJq2t8Plg3YzMWWZ2CGDLWNXYpC2sE4pY+AEQJEgYdC6jAcoAuyRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735682154; c=relaxed/simple;
	bh=JICUX4XjzbUPS/XpxaJFHgFmTF5zIkb//J/PxPMcHcU=;
	h=To:Subject:From:Message-Id:Date; b=t9ljGwljs7VIw/FdniBbvCDnx80lo2Oz9ouG2bGWX0+q7/LVO6e01jYumsC4Sh/Ix2drIVoURsg9P3gfuvh0mmYdmlRTC+11zAEi/0tXmBJ9TpuqHxbG2AnlWK9nVwX0Bqpam+55CYTXkxq+AkmitP/vT1sICktGw4ibTQlWBvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc2D3hX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc2D3hX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA975C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735682153;
	bh=JICUX4XjzbUPS/XpxaJFHgFmTF5zIkb//J/PxPMcHcU=;
	h=To:Subject:From:Date:From;
	b=oc2D3hX9kMIdugop7iF1Je0njbz2kregS28Bj8CwqiY5fNdEwHKvyK2kcG7sRF00o
	 WpYiBlw9wiq0UvDduxcaeQOwuqTwGrpCRaNvu8gVSCCktpqeZofnkj4/JLH+JHxL/R
	 t5u+GvmPsNNRhxZKt6r3IEi2ZRJ/djPeAktl53uxYemtJ18B6o1FNqoUh4C1pIVeHU
	 70L2HgtT+OheUhx3PMRkwfj9xE5elB86XNgxYZLAJG8lIhwErAMXNyOC0/mp5Vy+Fa
	 ZPFB9OSK3MLAXGhxexgXuD++bJ1o88Sv2NO0r/0F9T/YMhlQCWDGs3YTgAVwO+AcA7
	 rRaQNKR+TD3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BEE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568215357.8983.1883782651291409420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46477aa30ec39786435811b268e5055a08af2675300c363b8b99f58f9c83203d
Date: Tue, 31 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735682153
