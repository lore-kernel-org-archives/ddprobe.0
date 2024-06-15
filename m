Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B19F2110E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718448503; cv=none; b=OCaHdiiVqTp1NHsnuM5eTwWRv1wzMDz2Ry78d2jIKTV9DPMJkC7wMkgrfe9Js5prVjGpYI3+p3yCl7YSqMAk6aZjl8jLjzSqfqWW3XdZ3Zp8ibM2oV0Ts8efhLLamdpPAspHlkljWSUobHy3dp94EkkUodSVBQ4s7ILbsXPF9vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718448503; c=relaxed/simple;
	bh=zdgh6HoKeZ+Q5+SocQG0RdebuW/Inw7kWtKcGJCGee0=;
	h=To:Subject:From:Message-Id:Date; b=ACWqxDSfzKwGXR+9TSl06VfVXVB/JWCEojHKRrBSMQMcMxjdxmsMuJamucEfWdTFzkR+UNjxCavU1WODh5JkXdP5ALeNP0yCJ96CWCIQ+N+unjJW77AUwnvbWABqsO0Oa83N+1R8ldymktYvlySUxWmCTfC4wPC4uktFHZxym/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNM47ZlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNM47ZlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBDCDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718448503;
	bh=zdgh6HoKeZ+Q5+SocQG0RdebuW/Inw7kWtKcGJCGee0=;
	h=To:Subject:From:Date:From;
	b=hNM47ZlKhUQ03yQZTRjWWHKPcSzGktW/qX4YsLXArl6I0SxuQZupgch6uDUhq9mgz
	 BWeGDA8blZmJwk9yztRwPdiZnOcfuWViDPmr8tMBaXAooMKV1NIJgY7RpFVXFl95te
	 tLo1gR4OrgIH6xGIR1crRafI9bkAnjHHR3TwxXFrr3YeDM0yIXYZEFmEogtl/t747d
	 bzGqSGo4pg8lFNTPKGkjy/8CO0En5/hnzrQjzfzpvgX7j3C0tl/VjHxiMvis/yWfwp
	 ZMymit/ksThDvKphY7PssJN8ZM+kjzaOGyfeujrGdmQqoKxlCea2PBGzSGF3DUqh2q
	 R/6P8NM4DuJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E40C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844850281.30432.6149260278164297363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acddd2bded5c8c143b67c951e517547ce8c821476bb73326aab21c58c84da4aa
Date: Sat, 15 Jun 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718448502
