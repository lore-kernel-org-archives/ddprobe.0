Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516E327470
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762231194; cv=none; b=ifatFaTem2AJadqIytSZJCcUtZQQud9ORwMaQw1bKUMCY/VgZc24N933Ajc+OX1fwlHPwfFYm75Sz8McBGGIaJ/OggUF2cRIs/yTPYR4q84q/RFDwT75jMvXaZgAljwk7nLZ6e0cxsK3IzLKdEJHptRFyMBY7IJ382IdPe1AyXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762231194; c=relaxed/simple;
	bh=+r+Jy8YS6kWwTtJ4S1bsPD9qNZ3VqAjga+x6yVcfs1c=;
	h=To:Subject:From:Message-Id:Date; b=OoNE8eik3sksJ8yaW2N4JfXSIAGMJW49mhg4nhyxqOaSqzuVEE1cAwxs4OO8sZq1O0SfyjiRheWy9LqPiwskhMpXAOmBU7K0ujGhdrD99Snjf33NuJjnc+bvREzrn0GSH8tnGwIvUIutW3MWYvyObu+UKknQsIJWY23AtwKpeY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8exAAgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8exAAgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2514C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762231193;
	bh=+r+Jy8YS6kWwTtJ4S1bsPD9qNZ3VqAjga+x6yVcfs1c=;
	h=To:Subject:From:Date:From;
	b=X8exAAgMiTq1dTH2Bgfa4zitlg9K7DbMrwv8SxykaQ0ho7X8ZxAsHBG/B6cnKSQKy
	 Uun284zXqqQ8I/VLSD0fH31O1uJ+R216EEqnVo4Ia3VRsfxQxZKGyN2GxZ5fcx6SfG
	 MAaL4zVGsBZfd9Xi2k3zBZXUk1nADsIwHYD+rV+gHDVRIsJ5GywvFebKGkMTq2dytC
	 5YXwIfdjO4QBCoeZ9SZ/ERku2bWwL7A52lU1OgawnlnhARIKh/TNTHayQkVCt8DwPO
	 zsvlsh1Owqpr/8cgwbpTHtVbk2u39ZMqZaygcwpSwjAcPm0VaXvq8kfK46MtHoxlAM
	 YRKXBkY5roo0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E36CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223119369.24412.1408152014117709623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a176df3466f4e9e01e00a0d859a8d654f7c061df9042f05047683b9189eb4de6
Date: Tue, 04 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762231193
