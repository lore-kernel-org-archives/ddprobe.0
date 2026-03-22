Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C1A175A6E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774155294; cv=none; b=W4EAuI7lIY6vWlHal3DIg7G+/W135qu6kRjqlhzuHuqqzcDZpJFUMowCSfBy9niVZ2q1pntJcwTQX2d7vJYHk+Y7tYQlE7qaM1ySMMvn1rxC62PHhHVbyYabCKQjI3aCQtPnVtJGffW+qk20rcI1QcHDVT6UF/h2ke8DH9RnW7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774155294; c=relaxed/simple;
	bh=He6ta8uJvIdwgEPkaUjieORflSngTiDeRHDPoMnBcY0=;
	h=To:Subject:From:Message-Id:Date; b=IEaR23xihacGHEtdNAf0XHBvEtBdJJISJEiuGbH5Hn9NgqcW6e+rtXKga+d70JI366f89Oi+MMmZ0V4tyYjAhBqoA+0MiXJeccuxdizA/DR8BAZbEG+TFUSaDg599rqFqonFG/WWGdEPhsM+JrtRLVoVdKMYCCvZ2uTKiVNV1Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZY8rXau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZY8rXau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6245C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774155293;
	bh=He6ta8uJvIdwgEPkaUjieORflSngTiDeRHDPoMnBcY0=;
	h=To:Subject:From:Date:From;
	b=HZY8rXauq7Gl2/XkxQi2fQTSCf4kIiqyE0btPOthCW1GX0Z7JyBCIaM/ngn+vXMWL
	 pjH5LXviKkS7z1ThYpubAXwOSO+GoxemoKrNyYoplkm+8hAD7n4iskVmacH//rY4XI
	 EOycMjy+bMtQl7e+N27P/DMZdRdqBGFU4uTiIsi3ZhFcExGh8EJ/IcWxvB5I977HYp
	 gxaix+4Mn+rwF7VFIA9zgfc+lA4iX4uK1gM4uSy2Sah3ujHzEDx0MasxTPlCIMztTG
	 SyrkwJPt6tKHwMlVhOomay+udRhNpIYEmQ+okfM0Ehu2473d+IOI8TeBEoqbhO2Om9
	 j5r7coof5Fhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F00FC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415529357.6235.6838391437216185003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bcf0dd794182d3a843d821931ec82a3bbd389c2374a79efd64f335b7b0f786
Date: Sun, 22 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774155293
