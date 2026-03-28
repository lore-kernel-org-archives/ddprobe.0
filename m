Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAD71F1537
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774703693; cv=none; b=oHVD0QGWEBSsZgpfTDpxULDpRhneuV+Ke8AwDidg65wSxk2Ty55gmFi3CZn1oyuT6e5UsHTyjiErifb8dfiVCrK4n51PnedJt036wblU2TGiXl/GCEUoywCsaDyYkB49p+g6X90difjzon74J/Tb4ZbWET2aVt+Zb6TTzO6rTio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774703693; c=relaxed/simple;
	bh=c4dy+FVlaU2R6e97MBvGNWEIRbt4o4Fyd60ik3zS5tI=;
	h=To:Subject:From:Message-Id:Date; b=m0/CMTYEH2OCDR+6KUHgL7Ds6I2hipCq35m3fEwMMohE4/i2blRRU0jixXrtc3naKOK9uZBltLynwvQobDr3KyoX/ZaCiazytgqAbSOmvRCt2Hxkil5FqJzkXygAg+QkcFLnsIoboqb+AQ08AGBYijmGIwikgIdJFqbU08ry/7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQuLEttJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQuLEttJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B138DC19424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774703693;
	bh=c4dy+FVlaU2R6e97MBvGNWEIRbt4o4Fyd60ik3zS5tI=;
	h=To:Subject:From:Date:From;
	b=KQuLEttJYm/gpHBBiVdrVX0D/Q+Xpk9wqSv0mx5QHECMyWer/J75cYln7PfD58qr3
	 +A+DA2y2sAI5il4roKRedx3iJDws2E38isdzDpGU3vSofGEmKHga7ISJQ6RcC5s9nY
	 QyElDwREARYbug3q7e7A5JFKa/vMMfv2qw4sI4RaW6FmhmeZEl/km+s9MTNtEt3TF6
	 hFa/NqPvPhfPEURy/pCuNFdAqwpw+7yQBa9JofVhYm90+JLUg+6PYtRlnwY98MNC/r
	 RjJ4ZomJr3IpqDxFcvbpCrmVdwkWD08l86c0s8FWlI9sKwR8nOin48Q3DUhs8G1y2X
	 65hzImYlE/qPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C82D10F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470369361.5763.6162738134923145741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ce782ffc6bb3050085f62d031f43c8fe9901f617aad38dbe0f02338b5ee871
Date: Sat, 28 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774703693
