Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B481A9FA4
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778414434; cv=none; b=UI4xiJu1l1nLhu+bTVQjHFaurJ9LZM2Y09qECHm/PUW3Fp6R3omcJBrjD6b7JGZb4PzKJ9lxLYJkhbJsRsbLpFrjvBYbgup0N2tAL4/kHd2+qndXINxcX3NtQ1KelK8oiIHeUWdTIt9seGiPyQpUtfk6MSzf8dX0w2o27Ym+Y3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778414434; c=relaxed/simple;
	bh=rNaNTV3YvYoWMbPYjtxo79mt/bJM8o0t5J06PkdYqOI=;
	h=To:Subject:From:Message-Id:Date; b=QnwbTvfShEjZBRkiMF5LkLzjT1JI5HhBU1LWvYUybu9EB3SEOfSzlATJ2vgew0lZyxWVw+oCwCcE18QxwNtqO35Wxbu1uOXOYTKYbMV3jlT5elkdbRWtE4UUJTQyww9q2bLdfnkrEL2KzbYNkynEr+5/U9SAKop2AhFpU33hiLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnjIeZmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnjIeZmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA58AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778414433;
	bh=rNaNTV3YvYoWMbPYjtxo79mt/bJM8o0t5J06PkdYqOI=;
	h=To:Subject:From:Date:From;
	b=nnjIeZmyxDlPoOFQcq0meJec5t2oILs3Szj51KJuC4fotjOksddrIF0bQ9SyciOqL
	 fD1np/ZkMpDNcrulJhAGW26ukZtaX5Mkii0HvhjIjVh9DVxNmL2DbWkbgCoR8k2nFv
	 3JrNTU5ABtIuu56oXdtqSmUwYe8w+qgvnBQUKknozJatXTRnomKro0jGUe6lediiRL
	 pRS5Filq8kyFIRu6uBBlsZ4HoUT3SvaDLlRQGlzoNqIpxn9J5GtETCBrhrsvxonlw7
	 fiktT+4dbDdyu/aA2npIPbnG6Y8+W805sZYZ0i4BouIG+8tutnYSeVcezjuzlFtJVA
	 6a1cKOFR/3q0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB903CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841443369.8315.15273496396267618488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83d187858eecf2ad452deb85af524e3960effbb1dc4ff37946d0e58584e4c93
Date: Sun, 10 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778414433
