Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E214125DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732586154; cv=none; b=LQKWgvud8Mabcb5xUGY/nesVLa30+eHO1/5IaIUZEqDtDsA1rz4QIHKVr67bTDaPZjEeTvHquqd9GSARyFKCnhkWoJbRPaIgb9SybPEHCG0ydGFu+aE/jhjwM2yd947B020iycKqThwXvzlxV08tKi021wtf16UbbUfJygLy/+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732586154; c=relaxed/simple;
	bh=1b6vbHVZ3T/EQglcSVhQ5iYT1BI7cvGB7xhXooKGu3I=;
	h=To:Subject:From:Message-Id:Date; b=YJStZDOyM0EMB19S9qg7UVvuKo8qLespo/eP1hgou7f1skAZgMLZov7ZeMGKAVW9UWD9WMu/VrxffdfrAtKmvIYCJiXn3bAEWAypRDAcGr7SuARutzjD7VW6Gl8XMKZtP8LjvVhsEoskxl0Cyzyi/W5ssfqi95kBcVpwiB+I67Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IggLUkc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IggLUkc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A723FC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732586153;
	bh=1b6vbHVZ3T/EQglcSVhQ5iYT1BI7cvGB7xhXooKGu3I=;
	h=To:Subject:From:Date:From;
	b=IggLUkc79Ixr4d0SAAjgcPneGGViismH73hWifNdSlLjUXax4Hj6wzp9CMUDRr/QO
	 AS+ATencATM2mNPinHN2eM/mNNS+Vf94x8epT2OzWW6ebmDWOjJvue4zSaEJqwRbdY
	 kQNoSvq0/VVQNdbG3EYRt5TrlYvbIhLH/tITMZTMheWRe4ZD4EAUi0uHfoFH8MTfGF
	 pCEMEP6w8kKy3gAoiD4Fk+7tddrouTK8FOcFZAnCYbRbgUp7Ee82mR/RKY1vBwtBFf
	 RJuehIFSbmLUqo2P2MKcWphabA6kpWiSwRncD3tXp5B6VmtDU0oTc+XdMU8vtUpa0A
	 sif2rOZAshkoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D4D5A6C5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258615360.14724.18371021880539009719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5011dc3233ff8603bdcaf5343678f38c496412b0c30dafd30da322adba7b59
Date: Tue, 26 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732586153
