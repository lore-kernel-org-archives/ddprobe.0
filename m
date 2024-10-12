Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222DB17BA3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728747954; cv=none; b=HKoUpeXGeh1J2JekBnsDOVLt6k6CdH27iMx3frS+3KkQD4O9xYRGtc7ysiwOrgqw9k8zYf18pjgaNutiwDIFO5hSbGrcJ4kry73yUhg/MGof9XsDjAuTVSM5Oc6VB47OLFKB2sDfzrkgHnasGE04P/vGdr6eQyar0zrMDBs7rn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728747954; c=relaxed/simple;
	bh=ZAsZxbMsEOZ67ONvvQs6s3S9QpfluJk8APn5BZDBdSk=;
	h=To:Subject:From:Message-Id:Date; b=MUK4LJBOtPmi3W63NMquFW4MObNHsyD5Zq/NpdppaVlqUNj38MzWwDaiiH5IrE3Y7dniWBxQDArHhvHmc7vip1h1dTD++mOK+JSdeVSqo6KKY1wyctL2AdWIqV0q5NyQTlDKhGp0viks7c0hlY9GJbJGHKLBosPOHnF2jMPgTVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=He/Y8aUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="He/Y8aUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8941C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728747953;
	bh=ZAsZxbMsEOZ67ONvvQs6s3S9QpfluJk8APn5BZDBdSk=;
	h=To:Subject:From:Date:From;
	b=He/Y8aUT/Mwb7kh4yhhw8oDaSGhzf+DeRWnwN+3aYVfVLdmv2g+hhGHM4rQBwEbPl
	 xqck9dGQRPVdHRPnUK6dTmdniMT3TU2PK6oFMhWDXxDHBna0DEmso75Jmc1EyEw5cI
	 1tFvT30e6zdzSqbsrTI4hsUxk9GPlBOkxuXqkN6Il6IzeGkRDeS/RR+iwXorCJDLXM
	 8W9VAt3Aky0L1HfSiLTgUvf27dUJcis49bY0CkXXBXNbLyPhiXtUDSptHHdcWnVVsL
	 q3koYSx6qpBrjghh3btNe92gNM3H3yU4wvLs26vf5NcmfJvcrQ1yXLbR/0QzX2oa/G
	 uhE9ugc0og3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2ECF256D
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874795360.3266.14237209347576308822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd7e0be25ecaf7ab69f4791a41882a56034216c02ecf34352de5ea8719cb140
Date: Sat, 12 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728747953
