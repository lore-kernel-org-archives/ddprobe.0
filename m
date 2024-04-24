Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A55115D5CA
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 13:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713966623; cv=none; b=hp2EYgz+v7CoHJHafbEH6VRqpGcO6TF/2iN8RjgyJG0cs9KX2Y+FZLUGuOTID+DxB8hRtMJZzzVcL2hNs3HF3VuDRiPdsToLtWx++ODZegC6Q+LRv0oCo0spJKPlduENKJ9oCKkkT15KGzeS5zdgqMPqc1KSAkhb3FrFZHZT6BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713966623; c=relaxed/simple;
	bh=AsnppGx9DPEM4+GsBVXzeeaHxcoHaK+slt97A56NrRY=;
	h=To:Subject:From:Message-Id:Date; b=SNdQx7AwjJrooj3MAgRhTgzxcdWtA+h0tDF+JjdmuKRdIunjoCq/nHBsiJew4IEYx4pLO47Q59nnKwy9I1NdXnEFx5Uji5S9iSIqyxWPuoiXGtvjfP0yyyWnKLEo7U41sBvjL5v70CrH+clhhco0lNNHlve3kCSQOFZOC3awbRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm/Zdtd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm/Zdtd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DEDC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713966622;
	bh=AsnppGx9DPEM4+GsBVXzeeaHxcoHaK+slt97A56NrRY=;
	h=To:Subject:From:Date:From;
	b=gm/Zdtd3VdGxrhGwZNJIXWSuc3OzuqYPqbBXgOSrVZl7KG1X4WZCGVeNCY4hzXRvm
	 uVB5g7vIN36awzFZQbFZL7fQ2+X9O19YXktejJMQFJOLQrWbAFfbjlIgxuGpcK85vo
	 JkLUOQeqWdu+iT5f+jqVN6kq7+1fEC/4tYGyQ3cpeE6Bd431nNBb/1Yg/AGNuu8wxp
	 XHTLQmj9R0eZZ5vph+4vddoAwoOFCPDHu+AI4x31qBTtVCnMC8j+FLD8l4Rs4XZhkL
	 Uhhp1HhNfxiYUfr1v8DJuvBz/kpTa6sSlLX0jzbWhOM3JMKLKBoIm4EOs+MthkbQcX
	 Yrt0VlWT3VVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29A1C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396662284.16556.9619770342447153941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d39dde966592fa548f92a981e81a38bf878ca5237b1c0b464719461230ad28b
Date: Wed, 24 Apr 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713966622
