Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C1D282F5
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748370593; cv=none; b=mKrguP5cusrJ7mIIYpF0FFB8g0Dgrege9vZirs1sdEWrh6omGjaArDic+3C0BdQvhTva+GvKANwFVy4LXaa3NeYHfc3i9JB597N9SmWWN2P6CKA1okTFj67YLe2SN1E4SnqvjaRaFs52EC7heqRV6Baol5n2G8kXmk70BBmOHkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748370593; c=relaxed/simple;
	bh=McHEd8QzV6C8E5roHhTisUuixNb4FpQBtMyMdHyHezk=;
	h=To:Subject:From:Message-Id:Date; b=KUs2DNeHN6DYigMpO0Prv59zaee87MY/q01XoYg29YA9dTZaqGOjOnbNDD4CEChIjqJlZzYQB1q6HgqC2s1hcueR0MCmDV2Vao4oVZJEHBCiK+Pl4c51wAtuzIhncUJqP2I1y1IvBVdJvj22oFwkooW6RkS/VJekiyR06O+jFlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH7CrSZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH7CrSZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8455C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748370593;
	bh=McHEd8QzV6C8E5roHhTisUuixNb4FpQBtMyMdHyHezk=;
	h=To:Subject:From:Date:From;
	b=iH7CrSZ25qLnsvDyhj6kkis+to8dfBmGsYc8nBeSROpYJUaK1eRTLajEll3YovvYu
	 burAuNdmguL7u4A82Jnd06OD0Ej8jsWXkAZd8Ug86KSp7UqXaypEn1jH8lpAt/Yu55
	 /0zJfwjV7xm+Ugm4z2rXYj2tVzsYZYwATwXiNBelzzNjtEJtxYNScQ3KYlU1/K1OjG
	 x2UPf9iLwUMpbbcaI2TQkL5MiGaFZhTb/IqStP1bkV4BSGzZJFwrK50mZmz8kJpxPT
	 wwAKSrllRnV2LXGp7W9u7gWa47Y1SgyW6gCQHnOY+UdgJCC7ppZrCQHKgfK/HBmpcE
	 pgWVOUFaM02Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92058C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837059357.5661.9560969650014057584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed61718540497eb9f2b599fb5b771f6eaf50ba2ccb7abe7acc9f89231eff501
Date: Tue, 27 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748370593
