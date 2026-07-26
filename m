Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5911C231832
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785102034; cv=none; b=F5XuhyLquOBvJPqboezduT4hD7W8Cd+nHCBcJm8nAkOMVzxaceaZw7/gRVMPqf7z6QVqzzVagrVNSNpWAXCnr+NOmLKmMWHOVp/8SLrz/OmpSFam0LHAv6cLCwXS0DbSYV6JSasMFKDPFdVYCCUNnHaY0YmcDFNQCCtzUqBbtvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785102034; c=relaxed/simple;
	bh=vEMZvcxTqkC8Xlyi/uglw/i3FRCcHGof2XphrlYNR0E=;
	h=To:Subject:From:Message-Id:Date; b=ZQyG5OfcvjenTvVT3ZOmwABi3BHZVQQqYfXmV3LVZr5SX5PiM/OivCarMFGndDTPS5WVYzep5At4G+FXwdunakXU3irQDGCUEGNSIlj/70y72iL7c1h2WpP2abYvytT7MCJWDeJ5bMfOKJM/bbgv2JIw+I+IR+5J1QLMkud1Evs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j49hozKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j49hozKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0696C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785102033;
	bh=vEMZvcxTqkC8Xlyi/uglw/i3FRCcHGof2XphrlYNR0E=;
	h=To:Subject:From:Date:From;
	b=j49hozKf1slHw4fi3q9SSnbhbKRnnhJTH7Nfa5JHl9tobLRXCfoI/aoxU28ih7NPH
	 kBi4kIDjl/dMKjxQnzJ1Kw1Pup8IOHLWp78TA4p6umdsW5aTYZbNOdAjNY0bJkye1z
	 kxyKi64RLrFSUX9y8TA91HxNy1dqNdTJuiyyk8GoQwRPW9QXmOdH3KjNCkdk1jvjfX
	 siaH+4nX95OcRF7Rhuo+i+oCMs0qT282GjyhiFp1FWscJ/0By+74B5vhXJp/gR/lF1
	 NEaGGrJgMHsqyFYK2XuheYhfieGsjk9IlX99Q8/PxbL9kPPlh8ag4Q1hr1co/oQlUP
	 QJFbGqZgxK5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFEC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510203368.27888.9645306519878067748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5daa017997df51ad93b621cefd896834af1d51d09750effa8b3b925960fdcb6
Date: Sun, 26 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785102033
