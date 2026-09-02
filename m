Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479251B3925
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788310234; cv=none; b=UnkzcMTrH9PGWe3xrGCSBCJ9v3wcFcrYSj+goeEO40aUUWxZd1I+T0GkjKd52SaAw2h38rZKsluz/JF05/mNcGsYa0LKJ2NyFtCQT2fV6RjjIMHjFFXxVzdneZlaZ4ya8qVfwIR+DWJchT8Yk8wG7AObLZWuI0hP++9DcTzoiGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788310234; c=relaxed/simple;
	bh=aD+6yi08CjnS/h/5qY7HBcwxf+3tHxA2l6rfbLun96w=;
	h=To:Subject:From:Message-Id:Date; b=O50b9+nz5RjTeG6qeQ/QlZrScs2COsfZ1irLxlmjPZw8chVrCgFL6fiM8v8+oOM9SEH7lmf7TrIJmTIKfsJkGuQzBuna1CnToFAG4OUkoQXU6qY0pivGpT5J3psrglEjb66Z52eH2IgHxVSkpk7eqKDwuQbLOk9ns/HqWFqoGiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4QXuSFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4QXuSFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5BBC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788310233;
	bh=aD+6yi08CjnS/h/5qY7HBcwxf+3tHxA2l6rfbLun96w=;
	h=To:Subject:From:Date:From;
	b=t4QXuSFbJv10pvps4KYYhQubOTprwJ1UIHWdb+S2hb881Y8NMEQeAujoM0VPKWbPy
	 WWj8hdkqNMQFDBEneZAYa/xEjXmFHPDg9GaqHZcN5NWfV3ZvGIajBzrHWOSmljss8F
	 dwFF2lnLMDFtf2C7PkiWe0wu1DHvRK7iBCb//fFNtuTz4zgOVwMhNcITPgH6rgNZIu
	 NOXhe1aVF8pIU7wGO2V4577aFCL9MAlUWuxdMVnh/yPXPop9g2TQKlwReeQsDnHYhT
	 sE7Er7wh5RGRpxemjyyB2pwjF2opR7zGxgMbfmOYjzDzyjHXoSq6hUZX2d7qHQzMDa
	 6jXaKnAR1R2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD92C61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831023368.25786.1877683888720208308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82db9d90705a380f9857e4ed2858d3a56efc73807e916b403f8b07e3b94c15ad
Date: Wed, 02 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788310233
