Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BE1255F30
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747075194; cv=none; b=DYjpEh78S9g9zpYPJ1APH8TEUgNdn6zvFBt7J5XtAOy0WvdoSasjvpNSFoYCM2lZimvgDe7getE6L5Kje0ZryLs7J3wc7/cQ7CfLq5w4X0S4a1WXa8k9gBDgTKTz5QyqBh7qwEZ+U4afNOQ/BpPkYt+WX0c4SedTLyxv35Fy6rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747075194; c=relaxed/simple;
	bh=Oqe3WtEHbYaDeGOVu2/AoqlK4+/Nk66O+JzSFN57zgw=;
	h=To:Subject:From:Message-Id:Date; b=PH7qINBukgoUNx1ycU3+wyYHz0zPVJfsrqc+kXNrtW1Y+Kl0V+GvJDp91CnFuhi1Mt66lfkG+x2RvY0o/JzVJ6fheQF3dajbf3JPmshd9bppIcNCeC0xHmnA7eaTeLqeQ24INBgoqSjfhQJXF0ybmQaWd9PUCXWJr5n+kFtocso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEV3Nb/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEV3Nb/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F82C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747075193;
	bh=Oqe3WtEHbYaDeGOVu2/AoqlK4+/Nk66O+JzSFN57zgw=;
	h=To:Subject:From:Date:From;
	b=IEV3Nb/r82YRmTJz658TKUGxB06oqi8AVky4I9xoHHAssR7Av12w6sB1lAQt+K8mV
	 iC3NLqR0MPnEUbBoWgWAAgJftoyINImJMbvpN3KrvwMKxF5DsNxuINYZ+dauZtDwmh
	 wSDGLSUi3lLW7J7/eaGO+e4rysXdizj8HgSIZ9udZ5y2g1caoD1dObzMwiaWf6A5Q6
	 tPFCihRA4wZNC3iJ4hJM8jrR6s7PZ90oVkaCBQzZqkEgUXLGMQ6ayeMLsKqI2aIci5
	 tJtDvDz8jVmd+qdogN1rPBhj4J1IQMECZ4KoldOS1KEgpt6p+wgAA/r5wuly7Ihe/6
	 nykgMY/32Lu4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A77C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707519360.12094.3781992231340674375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db33cfbbc9114a2b61b5eefa71f271c9c3d93fc7e758dfe5787487c4b439556
Date: Mon, 12 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747075193
