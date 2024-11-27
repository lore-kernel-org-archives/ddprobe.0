Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F6D192597
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732699554; cv=none; b=L8PrnKbhFpeSOQelUjwGsxmEWWQeD4Vsc33ry3xC4uPRTgJh+OnJvHSpi/W4qcrGA6k2M10bbQwRIcFe8XKys3AhQ8dDYaYR1Sr/p0EAZMckrVc9yNL4zy9WaHECwPnXaDNHXEIkfZz9H+5+xDF6iEt1XvZ9XsiYIXVYMdGWnhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732699554; c=relaxed/simple;
	bh=3bw/G6dSng/sb8CslMKxXs/1QJ2DS61ogQtMJulxoYI=;
	h=To:Subject:From:Message-Id:Date; b=AtV1sY0rH2JfNr8Y9++euGxH3D91SEevStLMbRdmSlrk0Y+P29W4p09xXcW7ufNS59u1veI8M/5v5lCLS+5pzPeS5oc2/b/EPJVIqr/mOpkbxJbeFBHIqxI6tU6yH0CsR/LlduqiQdNRhyIK57ZaHNhem3kfNmZniiLwYiKfsl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHV/iS/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHV/iS/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3D9C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732699553;
	bh=3bw/G6dSng/sb8CslMKxXs/1QJ2DS61ogQtMJulxoYI=;
	h=To:Subject:From:Date:From;
	b=pHV/iS/JLyt3530oQeq4mTYELZCx6hQCcn91Jo1nirqgBHPLxjLlgF4xyZlN2axEu
	 JH1eHcZHU43dllCho6aqQnCiPp7VCVNjrvvJ1kfFzuika4ct8PDevJoWiUeY3S6KFL
	 Y6oNNvEqv81j0FoaUPhRThmYojmtkou2tarI+4RjyTco+G4ONDDCI/3jQ9kmZE7OL4
	 CEWnS7ojO2AF7pr8aQk1iMK0B/8gnc+7il6+4uHGk7GbGXVwyTHqpP5Wb2HrZMOxaQ
	 keByjOMh/8jDSPfTybOeNCloS5QrnFVrfRO+jgBiUDPlF83rAHc6pSyv0d9F20gSdu
	 tVVM8uTI9zGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A443AD609C0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269955365.31321.16645067205503438774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe07424789244289d6a32886dd307aaff3458255e13e92b834543eb5c633415d
Date: Wed, 27 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732699553
