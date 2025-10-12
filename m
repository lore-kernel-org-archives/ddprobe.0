Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F7729405
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760293794; cv=none; b=UUaRMNSpOzOzap/d8rJvvR5MCEPEHtxyIeznjbCu8FuVcs4tWIF8P+4NPPsIwcUlwiRVC5eJwKc4ttq1tLGbWTucGDW9/fhSx7rxatnjIfOUzvgg5WkIeDHvxRURHidf0R3VakBKARSGoZN1Yt5e2cowozQuWm4lC2FXGxCIUoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760293794; c=relaxed/simple;
	bh=EuWMi6RdJQnQaiKesKnJXxRLa8FWlkWIttjNlcICioA=;
	h=To:Subject:From:Message-Id:Date; b=TvIyLGTvENNQS7o0CBgiApbtHkEDm6wfdaPSYCN2SyCQuPKxczLxqfaySTCyWbW+JVP5jbyZYMLvapM3UKN9d+tOoZqq0WtQFTabXoYfYgKQHY3VKzCgeNiIt/fSaH1EeDB7Kj6cYpqvLgS+qJR20HyTM2Bqkia5ij3sgfIfAIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwOFGK/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwOFGK/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760293793;
	bh=EuWMi6RdJQnQaiKesKnJXxRLa8FWlkWIttjNlcICioA=;
	h=To:Subject:From:Date:From;
	b=IwOFGK/lXoSFvK0/XXLqzMbWF9Vxi4vXHgj3JynBOWq92xo6FdsePDHRrcOQi5Nji
	 YwY4fO5mADY00G24JqH6ijXshsjlrjJsayEdlcmJWGQVkFXdcpBDdbqPxIPboFD+YO
	 x/1xc9flSCNFCZ4Oxpfpsx6mzWThvPUbRXaFaUWKONL9McB2QsDyWGIlktJV8NVvS1
	 78fMjbaOqn6qfmyvNXtAw2mmkpy2myuS4nUSfmQXF3e5ti6G4s4ruZrJzEv4UEYVEq
	 ayiFreqV5RVPL09QdWnmYnExkOxfcvY8SXKYQYm+DlolaRYvsk9bgJ3T/hXNkBbX9G
	 lpebAJ6StgD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B0CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029379357.7359.14622642076271117719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7252f44f573c8692c3571b10dd68b1180f2f95a72f2026d753d7f0a6cde7e2a0
Date: Sun, 12 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760293793
