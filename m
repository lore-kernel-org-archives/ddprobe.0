Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7574D364058
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781613394; cv=none; b=EYqlCJZkWaoOTh0tfT+GT4uOQrNIua0tF9k3ke57XFrJ9//e+57m6dFvrbYdmyIQzc4yHEbRX2DcyfH9Dkw8eZoekGErGJtDHZmzkqHO/sZoi8Oe8tqNCoUnEibcr582YY022BPl24xRptH0W3udpYYxIl9+19bYIuKxJCBoKNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781613394; c=relaxed/simple;
	bh=AiVycOq3CggivCTuRxX3I7EV8yyPCC7VQvD2/EGHlRM=;
	h=To:Subject:From:Message-Id:Date; b=UjnkNzq7lGYf6u+3e2/7m+GKbuWyVUVhuMWZKwuoG2AQZ81FTRePxUoblIi/X/3/aAqQNqbB0tUxtSYDzZPI1cLURwmGYJK1+w13L0pJQlqZ+PEfIke6LKmliDohITA84LvbTCMTquOU9GAjmyvb+akdqjS8TyITKcF1mO9sJWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/50shYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/50shYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED270C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781613394;
	bh=AiVycOq3CggivCTuRxX3I7EV8yyPCC7VQvD2/EGHlRM=;
	h=To:Subject:From:Date:From;
	b=W/50shYRfGxCtvtE0DjvFydNAHc73fE8HiAkQ/yUZmBd5j1ywC+Gy2ieO5TngMUIj
	 DQ7+txUlXiYTkVPotQJ1C8fGqiCXRmuawFqi0E3yJJOJh5EIE8GOo9ZvHdRWnWr6vD
	 NFHrG4NhEVK8cRrv5kvQF2mIOtKzW3eJEupKPlXZ7RuK8Opi9tbUdwEbzC1+zCArq7
	 e3T/7RrEYBp0gdBWiZPlg4XXQ3SDbgEAiFmAe+RLDq3qnvUeEOALCJS5kPWT6RfHs8
	 DLrlY8R+3W5XIEtAsqpPoHHFXJB0VTNQ5wL5WH7PlQJAABvRzFIuYInpMH/MZrSsFe
	 H6lFy1uGrLLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5297CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161339373.21457.1597439790270966833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d9ec232ec88c194d073d9f590bcee4b86742bcfe7e4c0cde079347b9d88518
Date: Tue, 16 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781613393
