Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB0264612
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762732194; cv=none; b=ZXfTWUqkenfg5ue1wUnU0yAVvrq1aY0vNtpyiG13XoSV8iYH/yTImI6vlt6ZPexu0Klx4fdkFNyKJ6htai+A0DkhB1jHA6E4ltBpDsGjAq6e6dFzAM7EZLEDbOtqc2vMadWX1E5Rm5pZw56dfmnhSfMlKg6SdixS1BWjujF5Jdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762732194; c=relaxed/simple;
	bh=YyrVS3UVec01oWeeHd905L/RVv9dAyuwLTEX9Nl5yns=;
	h=To:Subject:From:Message-Id:Date; b=Et/FD3NfVfdjtViVOmOrlvaRdK7jZ9zUA2MgVPeD9ZTNB0v+/0dsdpidhoOTkOJPYzPdI2ufYpssA8Fcellvtx4FZdr2fJJ5hfIEHNrs+y3Fs31nWHGsKiIsqtM2pzjgQ0FXsVkoDxKbnKhZ6WR6Uk/idfHfMR8SxK1uMYYHrGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ainj8BHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ainj8BHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB02C19422
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762732193;
	bh=YyrVS3UVec01oWeeHd905L/RVv9dAyuwLTEX9Nl5yns=;
	h=To:Subject:From:Date:From;
	b=ainj8BHFxK5Vu3f38UB89qrqOqKGWikFqxeUxn/5vUzlPqN5i9CczlycPqVNGQBnm
	 lmcQsNqA6qw5zqQKXbnxpFM/qrYBQeCF0BG4FZIRtwvDG9RFFUgP94A1VHNd2b5WJp
	 mdKj0eagbYVrrJ2JpGOAi1XuAzR9iKlPiPMk46cmRK17dyGtpyxM4SRSkP+VKm2sit
	 GK3B9FRSZq98qmCNcmo4/xs62KFjyMz4DEDwuCG4f+VwmLghKBtGf6lJHM9kLusfMO
	 aORXRV7Il9uxLK9mu8SLdITZ1hBkao6qaUauv4iETuyX+zKAHv6wwkglq7GZRWVTUw
	 NPcmE53YMecrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91289CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273219357.13291.2648966396039964101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cb3b1adac3aed7511304a6c48711f21cf5d259ce1cd5e085e47e54a04e6a42
Date: Sun, 09 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762732193
