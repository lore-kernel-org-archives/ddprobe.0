Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF84129E9E
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716745463; cv=none; b=Ak4nC64AhYOJcDmMR17XT4oIqq8Rr9s5YsdWATto3bYxDB9FZ2JTtnFtr4sY6EdZRDkQXV+16zSL4tcXZSrR8mvXQFyOUwT08Q3H7WJ4cXMhXwbipZ615inDIPuoyhNovJuYrFyWDZZ53BuT2CbfJxr5/V8k5+ZDyWw7F55JwF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716745463; c=relaxed/simple;
	bh=cQTirAnUJ3Q5LjpFacQ5QkMDc0K8zc7vnBFPWwEJ+6g=;
	h=To:Subject:From:Message-Id:Date; b=bSVoMG0piY+1xuY3sm9gDQM1BSPaMdsT9DW3+GRDXBtk0qbj1SFGO6aGsp545xeuSODnEzmkBqEmYEogTFb7ZyRzwtjQ3chDii2V96STsbd2eiW3+SSymUaifX70iMkHiU4fuHLw6tLmm6TKS9bAe2BIHoVOuOgDQ8wDkaOdIZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNIi779p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNIi779p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F3C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716745462;
	bh=cQTirAnUJ3Q5LjpFacQ5QkMDc0K8zc7vnBFPWwEJ+6g=;
	h=To:Subject:From:Date:From;
	b=CNIi779p8wA4TC2RTzNFZBL/xZDG09hvVJ90lytdyZ8UNbOhSXzQ1IUz+bbeT79nN
	 0R5oGaYq4h/FontyhYJLfJpgXLqAHHrnxb35gc/DowV6XuU8e+qpdnxkqAPm1Z1SfG
	 FNJtZ4OwQWb6gGt3fQhJ01+QnAlAi3SiNZF2TOF0fbCCXMbTAsfQh5VwlSv31Adzr9
	 4XHvIdCZyQObTifCsFYyZb7qMGPsG1vWsBsZuJ7qJ4H6DphMLhnc5tUaHlOtXJwqNo
	 pvmoYZcxa9g5GiXoA9uFHrwPW7HlzzT3I9nXDCfYOXGhGI/8nj9O8DVqUFJEHFtDNu
	 0MdjuWbr2qZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E85C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674546277.29366.8499135768282270783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9473125f08c47a1c60a119b536d02bc98dae18638c2202b1e2da1074b5f038dd
Date: Sun, 26 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716745462
