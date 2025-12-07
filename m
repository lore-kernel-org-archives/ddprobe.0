Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B35218AAF
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765117974; cv=none; b=kHuCJmOaBH1ONyDXRXC4gyqGHTA4QnIxqIYnsdUIDmN6hg21yWdKW4UQofM9cn1dxTFQUiPSvkDqBXk0YP9AcNzukvSwPHytuQaa2KUTEx1rj4Rf6piG0DIuNwpKelursseVnuws+aUZVdIyM8ofc05cwxDEMiToE4ivhP+LOkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765117974; c=relaxed/simple;
	bh=8frZe0TtWfhmTPJee3mCJRJOr7Sako2VpxxPvB3ak4Q=;
	h=To:Subject:From:Message-Id:Date; b=lkhB/b/syaHIwOX3ZwWaebBu1j21drg3GmAMhuzYRHOtt1gz6D9jscfTFF6Uu8+5H9SIhPgREg7YriDB7nqmOwPFkrDKwUWnqChIHs+B7xYtCUOlTnf5aObEEGgASdd1IpW7tvZf8lXHHwGUNLWOXvFHswqk+RNq+VjieUJSbgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gisDLf0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gisDLf0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C63C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765117973;
	bh=8frZe0TtWfhmTPJee3mCJRJOr7Sako2VpxxPvB3ak4Q=;
	h=To:Subject:From:Date:From;
	b=gisDLf0k6eqNhzW21uswdkrrD+oGIuQY2wVi+1OzdI6ZibFote+ARIcS1qNKkUS13
	 bHt7OKc8wch9bISGJYJ1jLprNCwpzzz+OveuYT50q/Z1wskysLxAR6dh7n1Hn57pLy
	 b60jqrhW+NPGWFAgnXjnYKeDvt6dXyT5ZtxeJhnCc9rdP3xrkD0oJVOeji+ICmYlZk
	 eCaIU4vbzmU7HqLj6GQn936C2HmoFfjB0KGy4M6El9HNLDGYivOTrOihUsceqENpDr
	 vb/93ItY6c3k109xbYBmqxZ6UG1Dv9+8MFzhOp12s94CG7QnPUu4jj2Z6YuzQmK6Sr
	 ghrQfl4EocRCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E5BD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511797358.3826.4657550313479242992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b76d867862b95f5298704bc93129f360cf65fee09db9c09a503bdf10d2088c
Date: Sun, 07 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765117973
