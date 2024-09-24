Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A241A3040
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727174753; cv=none; b=QPIm58BRqSkujqpD+IKJ9kETpYyNA6edbWrXND6szLAY2Mv9d+Ip/jOB+uH8WGMplxwCOf0ZX1kL30Tn/5xna8Q2jkJGk4ZG5EV/7EYxf4t8AT6IV/0odQ2R9vr0N4aePLJgRabW9jFbp33Gi4ijp0FXPXMwN3qP6GF4QQzU0Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727174753; c=relaxed/simple;
	bh=RVw+tAO9emAya9uJzvhqNEolVftjT0guU+l9BS0kfVY=;
	h=To:Subject:From:Message-Id:Date; b=twje5p+9evFvVIOU2MdNip3FXCLnD6J3ucM1Cu+pXJiSj5MycbMTbzrzNCohl0pX116/zXM/wn+WysCgJhDdyfJuY6Kfcpk/0750G2RwgcSCHjX5frmdk/f6uf+Km9pF/2mmznnIXbixbCgtkx/qZ1z9bF3Z3nHx4sY80FhR7gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMrmdf/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMrmdf/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43DDC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727174753;
	bh=RVw+tAO9emAya9uJzvhqNEolVftjT0guU+l9BS0kfVY=;
	h=To:Subject:From:Date:From;
	b=tMrmdf/K0rIfLAlA0/tu4x0p8PyoYv0WsC3CVZ+TwGr17TNekIyN86DKC4VejFMih
	 HdHyB5zc9/e1pZgBPKDlKuZrT3E2R3imqlEAoDjCLBt9pbTyjbwLv69uW2NP3UQL0q
	 XktIof8sUmPgt+s3jyyEk2kSP0h+KLVGutJJQu26l8N3S80Y1hxX4ROZN9FAgqZKnw
	 P7MUDgaTjgoYJ8GZR3WxPfzYA0Y52rneqTCO+bDQJqdP2HsFu9ktV1YlpG7QciEXde
	 0L4XKwbReihj2IHClLx+wBbgCvsm8Pd684dX7PAUEwcnbo3zukBMwlQO3IjjKdEqm3
	 roUxw2SZIvnnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92786CF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717475359.2763.11723711691604856073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed68a482e254d87c43ce95a0df10229ed91b5f2e5514a1c1ab8bb214360d1c0
Date: Tue, 24 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727174753
