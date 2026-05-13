Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258213F411E
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778715034; cv=none; b=DgPPhWApLlqryNOfbAh2RuXea+CeqVJXtUNMUiUjgQol+WRvX9rta6JXFqU3wpQhhvc3p1DiwF6fzpFDgGcGoVckcsPpIdTIadovNVYnH/NUTzqHTk0QOCsBnDkncJm5nSDvtvSZ5PHm42UjK5RichW5f2oxrhS5KBO7PlGNTu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778715034; c=relaxed/simple;
	bh=4QvO6G4opTnKUV13id2aa0YeZMR9gWO/VbxrDePTSnI=;
	h=To:Subject:From:Message-Id:Date; b=oxGF39cAYD92yLlH6gLtPyM+7u+2FnrPD9BFiQjHTlGijgboGp73dNlYJvEEfTM0qCKdWksQv04/fMQLhWQuf8tu+fcHG2jzlWNU0dhNMUqU0kU824pR9DTISv/Mcy+Yu3qzpuhwbHZTH7uvhsgiJtKK46KoK8rjVshJEHW1Ayg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JA2bBSeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JA2bBSeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE730C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778715033;
	bh=4QvO6G4opTnKUV13id2aa0YeZMR9gWO/VbxrDePTSnI=;
	h=To:Subject:From:Date:From;
	b=JA2bBSeD90j7eEwFR+xPGFtDuEVw9bybddcBZyPC9+004VP1g7r07VfV0fGMffcr5
	 rAHqACYbpqtSVjRTOD5jZxjNn/WWn/7MqP/eiZYKxV8qPFDmnGeY2P54f2Aj9d7a2E
	 +kayvNAZ7OeBKDY6HzXC+mDnC1vkEpF/XJdDO/GVk6X/gpPvqf7gq+qgte0+f80lFU
	 p4bpThQIs+iahAWz9aIC256xV12kJ8Z+zEU0Oz8DskKMMHnDJ3qmOwWBauQQyCz5z6
	 sAmzXDi+a6/IDIB3uXnzYsrcf+emTwilQZl9AwoYf47HN5z0vVWf/DLbtjT4tjTfM0
	 BoXnR1WgY4M2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA06CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871503370.32676.6079347442494313954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33f6186453162ac086ae48c0661a9f37f472e43db7009f2f7aa8ef1ae821960
Date: Wed, 13 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778715033
