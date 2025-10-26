Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207FE2C325A
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761522595; cv=none; b=l/EoQ9WSt7QkWy+JjMYZ24DXqnptOhyQBsm4OaSCppBudchkQkDpUBG4MDf2/oO7Xf/oIyrlIO2fQAgrJYBYuZrIGtzNIXjMeMev1a6fcV3a6rfGr3pQavWWGSSS8eQfrjlcwJuZiHEgCwJhRtAl6p365uQ1ADnp+ZqHfV3hpc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761522595; c=relaxed/simple;
	bh=AjeAK7Zt6gvOWdkkQbHMNcXeIu5dpoX52olrRL8YRfk=;
	h=To:Subject:From:Message-Id:Date; b=WVLjr0F4NSyety2qlpLRikKnI7ImilFrVWsJH7Q1nMqAThE6sTjsMDXbU3/x78FKcCCr0OOQK6EInpGHbukQEcTWwT7/4CASOGI+gNN6TzW6TYxVblf/uesJjjAKIlZ1B7nsdcwCvhgcec3eVC+W6Q4NTIW9at0fa5ljnIjifIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqkao9jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqkao9jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3263C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761522594;
	bh=AjeAK7Zt6gvOWdkkQbHMNcXeIu5dpoX52olrRL8YRfk=;
	h=To:Subject:From:Date:From;
	b=nqkao9jkBhoWsfOTLOTDqLqbyVqXjw0I0LjmVsqi/5GKqASA4mDBZPG0JWUF1jC12
	 P4crb8gSqTDCJniRXtgzj7U3RkE5F31MPkpwVJJuvB8HpMOuYalhB9CCF67ZuJ1ZBH
	 M2xxYS+RXjGXSFegz5ITRvWQsV6m/cX7y86Fmbd/S20sdU7A+zUt/3YR7/iXzFOie4
	 QF4kv5azbttj9j9iFQm4eSyaIoaHVQ0bBHrUlVWGuINie0QTw83LZD/H6NTjQ477nk
	 +Q+S7vJIVGu8qumNuG2PADZllP5XRSCZHMY7V5wee/i5GhxYgpBM6KrTzreoKhTKj8
	 GsaWZqB7RHOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8FCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152259357.15809.2948283172844902124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b639a6be4a762c05e1f44393daeacc5becdf6c2028ad38189a37375b3abdf65a
Date: Sun, 26 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761522593
