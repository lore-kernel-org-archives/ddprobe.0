Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3869313AD37
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725272154; cv=none; b=Gk//XeCDL8rOTSS2lmaBEQ7gn1az3BfE6YB0SNs+YInNbWzyIE8i6aXIVCdpzMInZpNjT0ydjbAzORl/qJ2JrhlezBQXfEVGKWedzq4klu4iEK20WhM+Q8dwigQz1Mwdy8EXRrykOIYkEnAGGny/Co1DTavE4V+AlOTgVxuEIEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725272154; c=relaxed/simple;
	bh=Q+xKt6i2x/vr5NlZAaguQD3wzio33Z/HYIoGRlH3w5w=;
	h=To:Subject:From:Message-Id:Date; b=ZD6JZhKIfSzWDkAH0muY5uJ8eaZgS79w7mxl/zQS36IqUaOe4Q1rWCcOdsIK95hyR3gkyPmG0Y8bJzudy1FzDO3NHedJJmk9bSq5oTJTdCtEuKCOquIhIOmLeG/RP497KKiDWpBsy8pNvTTFhmhFbUlluESKFlH9pK24qD+e9lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds6TM8Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds6TM8Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A641FC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725272153;
	bh=Q+xKt6i2x/vr5NlZAaguQD3wzio33Z/HYIoGRlH3w5w=;
	h=To:Subject:From:Date:From;
	b=Ds6TM8OfkTS8Hoopkga9wQ5X7cQr+xFeSJgOd3VzElwK81UVwC4bonwTKaW4i9ji3
	 H0aS9R2twbYicajRNtAY59k3GvicL6hSpoBEsJGWdU/3aRZMmpNPIERI+CvkecJznd
	 pt/+AK7B8sisonmnIWT5Z5lcmb0rAcCVuIJH9OxPC4QmAweijWHGndYJEUuqv/EpCs
	 wg/Y4ywgw3dLHRv6j6l9sPpxjg4UrW0gb/V9vHU+BXAaAXtzqvsopI3UIWSZ9FFeA/
	 Ugx31ESySBs/eVtNUjRgKCHG8Ihd8GdN2yJF6iFLQsxushjSBGAtLZZJZXK5qNltxS
	 aKNPCyEyEfKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90693CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172527215358.18834.11625393909626163224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28f67578788ab20bef6aac7afe480ff2bb5e350e7f81d8e947e3d5cd63ff7ea
Date: Mon, 02 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725272153
