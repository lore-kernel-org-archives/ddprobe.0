Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390C736CDEB
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778911234; cv=none; b=bqFujeY6Mu9omVyl1q+xMlYmsyTl2ZqxuoxFCUNPXlJdktlbWLihzvK2j4T59u8MltDMWKK2+Iq6gweUv9Br96EV/7b5w/r1mFs7l63pcTlckq2wcYds1pMw0ZJKBvXiitaq+woBmPAHzILY7dZxKkIRy7zKuXd/sApq0nt6dsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778911234; c=relaxed/simple;
	bh=Ufd07+xxrhUm6hPlsqZPGnwxlm9hdi/fhLCH8OWGLIA=;
	h=To:Subject:From:Message-Id:Date; b=TLSZG/JoLEVilTXl5wBe036+m8AwKHHSwKVJOne0kt1joUmAfaF64g8SweWThxgSKP67QzfQoL/UalnGibnrDvnHU7KAlf+qPdgxvsLyDnwrOK7m97ko5Y2Kef4Lgm9VKUSL8B75okD0fYRE5ZznBThXgMkQbBh0YX6wyV8/4HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPDIgQ7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPDIgQ7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4796C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778911233;
	bh=Ufd07+xxrhUm6hPlsqZPGnwxlm9hdi/fhLCH8OWGLIA=;
	h=To:Subject:From:Date:From;
	b=VPDIgQ7A1yCm+l9i4AIOkiWH0ps/owvpT7N6ZsqkXnx9Rd1bYYtOIROVxndWq1GFp
	 +jkRgSApjwYQbwF7kss2VF1phGsGvEfuUdLKIfuTW6XVBbrar4deZ5/4l/A6gSlfFd
	 ekhk1IBZ3M0pv7bGs43H9YDS5grIlPbPeiIjjYzi/iWMafU9C8AT2/jmuvvfyFFmTW
	 UCpqLQOZAma2HzNRGzL1ApdbRVS+gxSKUFSB85JuK22KcIeZtnFo9L7VpkilIqEdYP
	 aZAt9iaKOcjhQ1oj95/n56zl4kxMPgaOWs5vB36DM7cIuoa9l9OLldZxu1OQE5kLdq
	 2DmLJ8eo3neAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6BBCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891123374.18023.17377874217809115496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674299679f3d78ee15ba047bde3b49477560026acf9515dc2334546355068b60
Date: Sat, 16 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778911233
