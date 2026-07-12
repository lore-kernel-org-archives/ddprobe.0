Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E88C1C68F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783823914; cv=none; b=NmWrn2vcTYgrt538KIvUGCEdSir7+GMCk3d9eGb24yXfq94lMSyGWj3lcXJIljzoPod3N8CwEn8nZGiVsJcqh2qVtyOivxU/Q6OAT73RAPeqFyL+0e3SBDv71ED50LZrXJbdThOKZSxuRpE3aLxno6QRDoWGNzyfiP49HB/IZzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783823914; c=relaxed/simple;
	bh=yxMkyPrCAHGuZ8XS0eWBdV+pO75/gT4oyobXF73U6jI=;
	h=To:Subject:From:Message-Id:Date; b=sSYGe1DQc8EnLAdx9n7zRdlgiez9HyZkAF1o3REtKSPNpRmx6cBs9bCZFkBC4pcTHthywBpJXKbdEVWlCbtz782tPVJCuIGY0ZZf0SX1N354cruuzbhVSxnzwnD1wxXQ2vwPjZ3E+FT7liPV6AXIZodPS5lVGvnj0vbNNiyqlm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7HSZO86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7HSZO86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D187BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783823913;
	bh=yxMkyPrCAHGuZ8XS0eWBdV+pO75/gT4oyobXF73U6jI=;
	h=To:Subject:From:Date:From;
	b=d7HSZO86FQwiaOIqCPzlPqXtC3HIXc+UAgD+iYYwp6ZAmdasxyVuje+vkl/PnoRoJ
	 5X9fic9pQQxuuEx7Zh6sym68L/ugZpQsraBvoNlFTtXiiHNQFemtbOh8QdiQTJfy6G
	 GB6zQ07WC6b0O4/Yew7/NkHmHofbZxHdjRgZIB9HQQS4tTJEZkFvNsLAlla8hvKzEj
	 v6S41XADQz9YEk1Fefuz7y3x1pgi/yZjF5s3fYQ+CTojyr+g22VU8PjiYsO+pY4DXc
	 qhsdpFMmoR2MWsZ7fHa3UR4+UiY3VMVGd8IJdZ8KG/L+s8hjpybDewdkONLOdkChXy
	 M+tXDgcMlvjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8678C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382391368.18549.9641152600105317843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b8055ce03313797e9624e3276284c887221bc244c9f69179785848eccde726
Date: Sun, 12 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783823913
