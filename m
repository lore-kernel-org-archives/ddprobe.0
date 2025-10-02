Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276F72DCC03
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759397994; cv=none; b=XTgsk8mgrlpC8uayIr6q30EDWxdI0tcRpKeyaTIbvyWQi3w03iTc7FMC7ZoLkQIuSqJGWJhExy1B0dJxIiZrM/LGow9l0Ai3vTZGQnR1Pp15F/q6OOeDLCVxZ0WNHj2O3nTgcIs7VknNK3F04aRFElGk6jcQDle7PtRNMQZZQyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759397994; c=relaxed/simple;
	bh=OYdys7Gdu0Be8DvdJbhPJgEvbH0IFocTtsvCheESC6Q=;
	h=To:Subject:From:Message-Id:Date; b=EZx8QLfP4V8dDnL/SkBt+GAem9ykUFMFG5AkpCSrW2aE/CBcP1Vq0lMTeZRTb4axBkiEvUW9ghaZ8GIgO8N9+b6MBJR43x9Xb2NUjbxvgEUDrPxs3yvz0A9VfQcp5quS0wLo6WEh20Vgd6XRxgukl7VJ0ZtSurYscp8vDYUAZ9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilZWZuCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilZWZuCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A91C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759397993;
	bh=OYdys7Gdu0Be8DvdJbhPJgEvbH0IFocTtsvCheESC6Q=;
	h=To:Subject:From:Date:From;
	b=ilZWZuCk7Slt96Pn397vJcJZSlGHtLa0miBBUHyzpQZnjNN5OBiC/RN2yzwVdu7va
	 dcrmXTya0PRc0feobRAySKjQ3RrwsXvDAgI0nWp5UPNfCwW80rVumy/nlvsTl74eGe
	 CLPYKuONn2KgmzjEYcL2PlacljLVrfA5+gvGbY2/xVP+d38lQw8mYa4EsE5N354zAD
	 RykVnjqt8qibXJmPs1ROjbA1iSUcC9QqosTF0Nw+6NVEmXAL9QI7SBUJV7QcuvamcK
	 E5h2SYwlt0MN8T8gO32QbtTI0S5WSi9MqIQmaK245N6wzT0egiQEgTcyeIGh+HiF7M
	 Rqzguq1MGCcgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9585FCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939799360.30721.867334547042982028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee090602eedf15b76d12a98bc12f357ec2d4c03b782e4806bead4f9dfe12f027
Date: Thu, 02 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759397993
