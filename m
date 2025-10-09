Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB441E1E12
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760037594; cv=none; b=qpWNzmxy83fcv96Rlx5sHkLAWPkrNZaqS3I8pgHkPAgRLBBfdzSwCuhThtvjNWUr9wxNEVTATlYezDhyzkvNufg+Y3rbjQImLd5lBv5HRaCXyyBGlmSjgvvniTIkNpNmNAfdPcp7K1BSZbmjFcOIOynHsBdueJT3uGz4E8ubHS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760037594; c=relaxed/simple;
	bh=NnrRcot5o9G4xmZjLNcZimpnlcWn/WOo8sHsJXEOiPw=;
	h=To:Subject:From:Message-Id:Date; b=FwAoxo5pwTlI5U34g7yScGBOwRdF6RuvxU8PFwLuYskCkf5oKce/kdDr6XfscEsA1d+qtJsidJqKPcC5OSOPgdh3kGeFhQRu2TVo3oxYy5MNrQFE2/XuvDNYHDp62K2BwqQ1Pcjmxekh9Dq2rpTfv465/uK92X1UjHHvx48B1+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/9hb7m/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/9hb7m/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760037593;
	bh=NnrRcot5o9G4xmZjLNcZimpnlcWn/WOo8sHsJXEOiPw=;
	h=To:Subject:From:Date:From;
	b=g/9hb7m/YWxHp3VYv8M+wamOE7qwKDtYhegKJ8lw9aGrBd1Er4pkeR+Kd9XED+vFO
	 rbqryfeQrAhGwgriWVF9xUSnC6xkuqdY0vFiD1eNEdUg6GpS8Ev/i+oGZX2nslIoZZ
	 cadnA3gmPSeX5E3643YxJuro38KCuzHlUiwwSNtpejssa3QrDRKZXhM0SSyMoAWRcV
	 OoMx+bP4YhQRaosNAKhTe3Glze/uxLfQSkMZbRsgDtJcbUa2FvhF5ZaL2Mnnx00Gl7
	 CJJ+ypPFZaxY6yEfRRib7VtGzjNesR7f3A48zQlMcpDwLHmUzf6fu6Uz3tjiMOlc77
	 6Wza/H9wG0IwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C94CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003759359.25287.11109901963213861770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb19d24bc50c7f93902b6fdf9f238c7e7da1ebada542d771a6d98f41f270acb5
Date: Thu, 09 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760037593
