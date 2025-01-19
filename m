Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483D1BE40
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737275754; cv=none; b=WUJV+tUXrwewnaiIYjYIgmb5HyBSvBeU43YJIxh6I10WiNqaZxn9fuu89HdR6Mh5dk8sGb0hPdZ37xxtS3KMTzJCTYKZynJfeDA+QydNgJkTlmF3eHtAJ1uKZnalsR/QALQ3eMCp5YEL/TZHN5iUw3PeM2YLZrtGCl95e5Lxgdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737275754; c=relaxed/simple;
	bh=DNGXsuDKmvjjEjx3cl/IQnJYQoR0RV7KKUu1jOUfkEU=;
	h=To:Subject:From:Message-Id:Date; b=R2TYC4PBgbEjzwQGZ8u7JkoGyuF8EVdfntWe6xmpaBf/CcLie5GtPI/beWvMDXtzAn3/GTNLEJVbfVTJZ9Crtlo9oCi4fK3E94XdzaMmu6YD7775kiNyX/I9dpOPDIgVOpBS93riVxsohhevXeZZ3Gs/bAaTJGO1iyMGzf/k7dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwJshwn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwJshwn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE023C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737275753;
	bh=DNGXsuDKmvjjEjx3cl/IQnJYQoR0RV7KKUu1jOUfkEU=;
	h=To:Subject:From:Date:From;
	b=CwJshwn9BYDaj0BG8TeHKRiQgOQX0C59eWAlCa2EGejLpOm1bWB31esEq64k4eZ3T
	 2tz4AkpwxqsdmR/SDKfvpv4R3xKTzcqPwJaM0kljkNR4ej+GX7h1EhkFm360mnli30
	 FXvqsKugwXQ2IjlTNE/mRY1xBkWnblGq2FzPGZI22jAaRvSIo3fNLIFxgipASeQcex
	 rlvMKKLNZEHb2F/ZRXiwLt7+zSJ+UEG4/mZx5aP9vJQ04gKoiDn/DIcYDTH7mE7fK5
	 KBHHYbUz0jhvegXKLUvc69MQV0QqTJj5HPMQ1mENEqwj47TNFf3MoqsGICFeKjqfqI
	 w5GcYPxwFNcDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9971EC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727575359.22564.16134559697552985854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f134f824d00b4f1c0be49fe6c20d5a45e421a19d31b205a0b3f8222b477c3a
Date: Sun, 19 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737275753
