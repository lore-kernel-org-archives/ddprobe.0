Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0443A2FAC0B
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761208195; cv=none; b=X1vKfaOBIljUw1PUSpY2t/vdMW5d3C5FqHS9gYDDf4trGapgziASLfAT5uBkjCmYdHgQkIeaiFiG2bDooGgPU/EzsBUw4VZUgEHkNRIl3qEjO/iBsUnYOZKMcRS/3UWSNyNd2SXcTX8zBQYm9of0y9kPciFO9C0bfxXaWcZ3h8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761208195; c=relaxed/simple;
	bh=PKVHSTdZm71+s2CNYlJ7ugKydiv006QJxB+6nBQzWgk=;
	h=To:Subject:From:Message-Id:Date; b=CZtovFi+ltdkiIq6eLdlC/j9oLVcndNfS7szH1ZeR9D+jows75QIoPLMjGBb3HxCq7yk9/X7/aJF0pq5d/EBlcvuGoFHW2Ir/IdjNWo2zlTDz/ZTz5Pdl7i4busmLmX3abj8D1uZSkD830D9LQI7rdCEn8FsH7iYY7zNGJHpCsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdbSQzqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdbSQzqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C31C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761208193;
	bh=PKVHSTdZm71+s2CNYlJ7ugKydiv006QJxB+6nBQzWgk=;
	h=To:Subject:From:Date:From;
	b=DdbSQzqi84xy1RDf6/Z6CrFdAB8DgksP5iLgt4sJTS1MinzYJ6Y4Z+gp0TqwxG7Gj
	 SgZ+vNRnsxed66fP6wSvN7ZmfIU7/Kljd3dz3neR67vlRa0TiZXIrNCq1vho1d5hIC
	 /s0VAZY0IxwCIsn8e3P3s69GPQWlCKnZTfncna0qHfJJnJojX3yQAkrRhvvKkvCohj
	 4miLINYZ4joUtNVIn/UCPwBuvfWXymvAY6U27eAnPiWfYmtgUhMhot9xPjJwhj068l
	 m+0IVB1UW7Z37WzhtnXzOqlb9nICJMVWn0xcbDkS2m+tm2hFtdQeNzgLPxsgWjuoC8
	 lkbn4d3wr4uHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE68CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120819358.12279.4231323981491931709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10db6fb99187f94cf9792a022913cbe4e90e6e2888c8d6af4c98ef7574fb8e59
Date: Thu, 23 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761208193
