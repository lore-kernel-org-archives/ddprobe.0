Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBF9DDBC
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753125595; cv=none; b=Q0gnvM/tbUYkFsftgFtVGtxrKAbdVrfQn6TOpa0bS6LqF/ZjreLrDgIHDW4YL4kROEWgSumLgicPRoV5d3zNrZmFdfSnAXNjwVXwMP26vlWdp3w5ZnUlQ0YrVOXOz8B0sfC7scAPRJsmgoRAf0e/wzIiZLoXVotB+lOkWaNYqKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753125595; c=relaxed/simple;
	bh=onK0W4WrOANlYXwRTdYPs9dPQbCx5J/EWzYWJnK8b7c=;
	h=To:Subject:From:Message-Id:Date; b=epO2eVF9edcteFbq+WObwVE2LuHO+noi5y7Wakae4m9YLk1GIR/D10GUJCavhe3XFGz9CUggyDKg5kxL8BnVk6jM+WSXn8bAPFOYZxRjBgvJbVlmeorCe5PWFmu1tMOXliR/mqlS73IUy0e2+6ee8Ch5XvLLKpdkKTI3Nnf0lIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmBnvioB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmBnvioB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753125593;
	bh=onK0W4WrOANlYXwRTdYPs9dPQbCx5J/EWzYWJnK8b7c=;
	h=To:Subject:From:Date:From;
	b=BmBnvioBI7PJ/QrkEFrzcpWwQ9zRQRNb7dx+/OrOQ/Y0IvJkR0jiAkWs6GlA3nV+l
	 psz69i/wJ0+AmFdaWRozPWpqc88xR+5p42YkSV/4b9zUGLigkubi+g8nKPgGnzSfnI
	 j4k8NsemHnx8OOxultzp9eKOJaBMAPiW6uqpfbxhbtI95nDesH+PEj3mtgIRBWrZlx
	 UuySHdKjia3wONUGwY8LJD1a8BKsDUsjybK92E6ekssVv4uSl+YfB4rH6g3HAKudVR
	 hNwxYr+fRVARCB3kt/waxrJfNaxCp8d2xNESW92ObPbO0t5vDREyYb9vIfsdTS65tJ
	 0uFfmEvvvMjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD5C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312559357.22916.332559505783610283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89248d499dbad091a7a62a1fd006dee8446a82e25e16b8ac96e1a8f174bc39be
Date: Mon, 21 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753125593
