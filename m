Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDB92765DF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783744114; cv=none; b=PdCTr4RGaBGTlFmuG4z32S83lpJUVyslvbVudZW6aYmojt/RLFhSvS2RyqibnCOVzvkjxbj96aBvod+XgKYitxgChxJGEdMYRdbLZFL4tyBrs0ADClVtoARjABKEmQ3nu/qUQOzQS6n0E8pghm2tka12ddCILwS08n3jIgx2+a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783744114; c=relaxed/simple;
	bh=ZUxkNmd6HEeBcL5YrBvK32YABGMDr1ifQIrdK6uDgws=;
	h=To:Subject:From:Message-Id:Date; b=AZXJL2dOhyl7jSQOsDv1HZ2YRbcZDa/FnwOkWoHP4Pwus/KeyqT7d7WB2sHxP4nFAZnWw7AgrPHN3wapS1ygkmK55ub3AOS8CMHoZQlh6r0Y87UQuEp9SYWIixXyARjRS9r7rUJcGx47BJQ1b6clRapMiGCUc+2jCGfuxuW2bVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4LDS6aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4LDS6aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB449C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783744113;
	bh=ZUxkNmd6HEeBcL5YrBvK32YABGMDr1ifQIrdK6uDgws=;
	h=To:Subject:From:Date:From;
	b=q4LDS6aKFvbqQvVdQDaCQoDua8n89koupa/TNbvDRfABpEi4eWSQ8u1OSgN7CO6CG
	 lB5ByV76B0Wlcj5yzjzm8ng5HYfS7qD2iJ5uAISn0o/p4cGiClp81Hc9rFjh1vlRaV
	 QB9MSLo9XnIRoFUzAhPdzI9rdq8nbnJGYwNOxEF2NlncnBn+Fzst2ELhmkfcbEKmLX
	 rspUn2avPAXJAoS79FWcqATkh0AzKexN0H9vePQDeENy10Jz4ujjnYz3+0izphCqGe
	 0jfX1I/OozIy1tMlOTNOBBvG3AtfixlWrdMS5oDmqNORZmJwzxTK6Q86OVrYR2PDTx
	 8+7AlfPpuwXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15EC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374411368.18271.2902306653878745300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c2682e6d5da4e4a6b6810c29960990604f793dbf8326c30b3b7e384a5a3a22
Date: Sat, 11 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783744113
