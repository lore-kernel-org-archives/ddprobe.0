Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311991A8F8B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734972954; cv=none; b=nmXKj/R09LvdSHnwlFxDfLteyK5RTCZ0e62qQlNtv6BWd7gmx5RvtFIXhB/Kpn2nEZR/mPcMGvw4BhT/ZDbVMX00B2LkzqyYd3ct/rip+rVUCwinVRViAZniMB/fr7j47oR7Cn4PyXjvHstDK4YLri9y4VoCoXmF2Cb8jSi3hPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734972954; c=relaxed/simple;
	bh=KfFlN2gWgRdGdK1RRNptAhiFfJ8zny+XYcNwYXKbAtE=;
	h=To:Subject:From:Message-Id:Date; b=hLauWffk7TL7JVPP4ljb+gPCJHeI9wMdg75I7TIe98tCX+fFaDjTlByhUNiLmb5jHFJCrqjGsxGul+uaulOIRi3M4J5OREdEG9vhX8grNVXIhng4Ai5ilUpPaNVcGMgNBpZYjUqdh71409B8Eggjg7TOUA1/4uRLc5kX5Oyvwmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAMHLDV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAMHLDV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA5BC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734972953;
	bh=KfFlN2gWgRdGdK1RRNptAhiFfJ8zny+XYcNwYXKbAtE=;
	h=To:Subject:From:Date:From;
	b=WAMHLDV80ciV9Q6w1xTBFjrkvugUqbE/cagVyDGkQYTcWD0fsXX44vHZQkfyn/V0H
	 1dVniYxRncNIzXVfi3YqrJ+I5pbK3adOhxIE2GTOn03MftbKSD8yIjXUz0/9pxlqLw
	 nNk2jzaE53AXbEPAl0otHu9xB72U3aNJuA7owR39rX7wS8G3zZXUsLZdfT0uo5V5gN
	 ClLX9duvj2pw1EkLxhwtRBLnw0kxj7k8DZqWXU8UhCIlzY30GORSu0rf5MW8kyFSHE
	 CA0n4qRvccVAcQgfrzGpFrocw/3yEkzznMlFORJ6l5dIGycfHidsef+JsYCJTnqDme
	 ON8azHhMrpJfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEC0E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497295362.11144.14474118514961290401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4caaa46a73f79c0962109a79612c66752c0dda182c4ef1f00bac4eb3d650e1ee
Date: Mon, 23 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734972953
