Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68DD4C97
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776298054; cv=none; b=jI0SpslMsWRqY8ph/OQLNI0Z6kwd6+FbjzPs5FcA3+ztvql3c+r7WDS3OKVBLxA+dTAx0ro0zM97HuG9U2krwzlqcqg/TRQeoLqx8RRFtK+u3ETZG73kVzrq7fkAmy8r34TlGbHUUXJdcDOtE4Gw10qdNtSpvRw7PmqvsKjqZT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776298054; c=relaxed/simple;
	bh=r+f4eTyAnX258BNg99vg0f6i6PUdurM/z1X1d7IN45Y=;
	h=To:Subject:From:Message-Id:Date; b=qvboIA4J4RuKeEHOtgt8bkxZK54LLE0lTQvIv2QdieNxQSsGRnjSlmeGU812XOphhpy2DFlORSEj0PDJHMsNBZ2P6pq9rvgyRTXPmPsc9UnWhTSItKuTxbmWZGwIR7HqVlG127cfKnUODw3AcC+TrVqKZe86rZmno0mywekoHxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgONbPlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgONbPlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D09C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776298053;
	bh=r+f4eTyAnX258BNg99vg0f6i6PUdurM/z1X1d7IN45Y=;
	h=To:Subject:From:Date:From;
	b=EgONbPlYt+nQat7CRAEjQ8UNTJwWg+epWE68gU0Iyug2oE0Wh1SMc44qeoweRIw2n
	 eiZfs8WDue1SmqdvRyXGJY9fxJ+HuzA+I0fLSfwY687Z1IdvcYcf3o+kOk4xz3178Y
	 KCBWkKRR6JDVc2YdS+vj5Q+GAwEkioC4M+gh62msHBwQBhz0tJXj6x8FjTKHxu1dXf
	 N3aNrTcjtU/JtA91X04sz2zUzjwcN/TAXals+XVzer9oAoertkAE2+1pdEanDd0njN
	 oATbbHWE3fNBSnVJ1f9/3wlk8LGv4IgeBbeqc+I5bPQdAsBVAZFmndjLmMw8Qfvd3e
	 D8bsmpTGLKnoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B031EF433CD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629805368.7989.9889166582794087179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f014e103d337f33a4ea6fb5934d917a1b2a849255c8244314d253bd35adb75
Date: Thu, 16 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776298053
