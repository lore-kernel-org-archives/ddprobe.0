Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3956D19924D
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741240134; cv=none; b=f73i+Fg2n3siySPqHFdASXmlmKK9jtsD/CXb/y8aRobqbHSY4Ym5uIFLf6qo5yPeWYMWoe0xS19l1lwytCWnj5oiIhkBcbuYufAZDDoXyv2Y1dEZzqkV+idsKlGB/usn9ZvVVhUwxkcMlROyfuoYFaE+VyhgjnddGQ8Wl8XnjU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741240134; c=relaxed/simple;
	bh=zzTyDg2ayKTJDW1v8JufZf4qGzP9Y1E32LSd7jw1Ubc=;
	h=To:Subject:From:Message-Id:Date; b=gDECuBi8GES9Uws62uKUqRVvKHXB3BYVRzSgDpabp/bXydayFDboZcnaiUt7ccaabpRCAoSgsDhc+1EajXkNo2WUcDfj/Wtuu1YQbODGCWcV8I1NCd5Fmx9ZPaPTqPZx82uOOCJ+OxGcd6wPGI+dD+IM3oFhmWULNJwettdJK/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uckxGzGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uckxGzGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4E3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741240133;
	bh=zzTyDg2ayKTJDW1v8JufZf4qGzP9Y1E32LSd7jw1Ubc=;
	h=To:Subject:From:Date:From;
	b=uckxGzGPTyOoWnh4i4/kd3aLpquTY87hy/M5ZqzKa/hFlbZdGNzwLyYLh/FP1pc2M
	 5IqvPBK1m0IiH+CuKNA9weIUok/18702TSw8z3Eel3CvbP+TaSX8OqdWYhGZv8CrSH
	 jfLXqPDOa0HtWQf7PT9v1LB7TjcAIyvSXyFdhxae2l42k+qOGVb9n0NX/BsGyzDtZD
	 S2Tnm/ryhc08teinyHKs87UabIJc6LL4L9YWSKVwUoP7fdXckghil0MujHX2axQFZM
	 zejtezswbBdycnmTPgk+kpQuMDzlf09Xacnnveerp0lrnisN7IEWiSEdzREe48+zcM
	 h9Zx8qL2dPyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9782DC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124013361.25514.5362807575757592732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be59797a55b7c35334c96cbfce31a15973fec28ef4e84c22dc152607de5d295
Date: Thu, 06 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741240133
