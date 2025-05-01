Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4090B20B81E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746115194; cv=none; b=qUNtNnge5a3FtyoYs6AugBPJ7QDF+NCDCG3Za7gCvMqpH9xryZ4gRSC2CcrU7YR62+rx9nYWMSjZi7xgN63V/wrAJRDwJQ1yWnkPYZou9ABWlVfV7baFHxOedJkNTXUvfJy0Gc783V2NIJNU9C7wkqVaK6JmvZe21l1sU9v92xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746115194; c=relaxed/simple;
	bh=UEQVsahwGfr8T4jHPWnk9cum5oJWXQ8HYmHQwoAEROw=;
	h=To:Subject:From:Message-Id:Date; b=IWtUexB6hy1yFq21qleaFRdurjKHW0iCQqIUp/xs3NJZzRjMzvFA1eWXfGvPgySVAU0TJBSpl4GLTG6U8nqpjFWvjYd0AwyAlVGLq61g8F1qGFeded4/cXN5rAP7wQ/6si/405CK5LOt8NH73sZ2sHn3IY5tNQ7t3uaRydnuZSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx2Arlw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx2Arlw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746115193;
	bh=UEQVsahwGfr8T4jHPWnk9cum5oJWXQ8HYmHQwoAEROw=;
	h=To:Subject:From:Date:From;
	b=Mx2Arlw+Bb8DfgGCIofW/89PNhtSr9KCZUwTQkLnIQme2QjzB1frBILsbe6a0ld7b
	 cRvoX7TzPm0JieC1hYHFMs3ATgwBivX0STVUVO0+Y2pvAK9p7nkt2ruTIZf4afKHR/
	 METft6MMfAhiJgKMomWFKjJBB/47kVL7BUBNpxLskVP0aoDYoh8uVLfar+k02g8bRc
	 WmbJCxXMQi8En0pKFEoAutbVA7XzXI08+A4blUnzXpfXJKMwMaWPdPltwkopQUPm9s
	 Q+Q6EOXqApoZ9j0bWmja3NVckJ1y1rUFSc+5DTG+RsVKRAgpsI2tPSWutn4DMkn08s
	 KwtxEJ3+IKvxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90819C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611519358.3350.9743151044976489684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48802c6ab4551fb477472d527993de6fa3c5484e642331e3568f9395e2d2d1fd
Date: Thu, 01 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746115193
