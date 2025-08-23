Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575E33BB48
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755952194; cv=none; b=f1rkjjZNa1GEXIWX0xToL0/ERHN8cQwTyk6ORl/RPrsqLMX5f/qYl0DFkSdRP2GRGKaydt5T8G8Ckr+Nx84HTui0VGE91z+sO80kGTCHl0LvYZJNrh2xZkjM36dvHVzBou9Z8sPEPgYgvA8zSfAiFYWq931xGroHiJph98qDw9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755952194; c=relaxed/simple;
	bh=9Ds4j/XunwGJsjcIGVdUo5ps71XOdcVyK/FSlnUwCJ0=;
	h=To:Subject:From:Message-Id:Date; b=cZiM3X2IONBvMQUI3Zz31/DtuHfYETR6C3un81UN2jlElb5ouZrGzGART0V2R4yvdbniSmZvuqGmFl5ms3SWwhkxjkPNX57HwHqvYOVID9jSvLpe/wka7QHY5fntTXKXPQV1QYL2vd9qX5yFe+iHhaMGjCv5sR53ZiiSGyRChxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR7OiUch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR7OiUch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755952193;
	bh=9Ds4j/XunwGJsjcIGVdUo5ps71XOdcVyK/FSlnUwCJ0=;
	h=To:Subject:From:Date:From;
	b=UR7OiUch2fw0O67Q4oX13YjV+c+gfB+KrddQ8alw08uYLpw29XTyBYx/saSevWAio
	 H4hxk+EdrAXgIfsWrwURVIs3ccyKKz+JcrLvpjEuqpQVdZu0ENZurURxNAJ7RaU0lU
	 G+eXQHC83u7mlyCbWfQkEmLkDUg4sEKtkGNWwxOee4W1DNvkAYSqRB7bIOH0GnHavy
	 8t4I//og238dShM5gWNKAoGeFrtwlGwFhCgVjo9/g7Gomh7rXRiOuG2SL8NxnsQQ6x
	 MAl7hY1QqiSOIXyGjLBnaED1ROkXTa8U9wQI2TEsz1H2wAbA3R0LH2ePh65t/Z8KJt
	 wYokaqSp12Vzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23CCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595219357.2208.13429987209618158728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b8430930d37fe20a0fd55d07c971322580edcf7eaca6922a33e17c51a152fd
Date: Sat, 23 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755952193
