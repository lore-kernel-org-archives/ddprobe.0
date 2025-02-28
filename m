Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF41849C
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740741535; cv=none; b=Tvdi6/7KZp5DraVLKpD6jhB3DbMfZQ9UBz+XwVASFli+MgmnJ365EmPYlOpaWMsrjMrjsUreAV7hbxxU+CeJtUIxtEbEPcAbNw8H3WeR2G3ccH+E4w8gzvqRvrimaF3VF4kbybLJaXG4j+G0dygbQWqM67D6H2pBdItfVwCJtW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740741535; c=relaxed/simple;
	bh=157h12GirOS3fKln36bN4BZHqOI1UwPVEqRDwn4N0rM=;
	h=To:Subject:From:Message-Id:Date; b=mEvvYgG00bMC5X8Eo7hk1E7777tf/y7WQnSJ33CE4dObnCdiHfsLjTcB6xAzetn1/XMXUNESc8Zy52ezCrHhta0WddFlMjrrQpSzD7T+ajwbgxtTciLqttAKztPfEgWhTtjGByLW27800W9+KVUD82nT25/hR25tZVRVTq9KSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX1ljDIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX1ljDIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6F0C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740741533;
	bh=157h12GirOS3fKln36bN4BZHqOI1UwPVEqRDwn4N0rM=;
	h=To:Subject:From:Date:From;
	b=TX1ljDIRX2cFeLT+gEQ8Cv4q/D3nN5EP896fZuD/b3keRC1e5UMtdSg0iDCoYokz0
	 uJv/OnVMWykt0+GqMCBPobsn4TKnAkRncxTfdpMUWDh2EaJH/zWOv4O/sk+FdiU8El
	 sxNjo6VX4Xmw038tjC3Q1uy4Fh9QBllu899wVJRg3TFkzKY9LbA0AJSbvaaVWnhkX+
	 qb4+fb+q5dz2cq8Ov3CuwVkf2ma7lksbtkf0GIVNNC+9nb/6Iqzvx6Zy+tH4QXux7V
	 qwEhZo+8Kn3UsnQKyEILYjQ+G6BWX1ZSkKFYilkm+2WoXbPb04JINrsoW2pUEpzlue
	 xSvM3eFxW/dfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E876C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174074153362.12029.5847550963134799709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2030ffb7c2033053585d043963f5e23cfbfd82d17d5d1cfbe7b88717e40472
Date: Fri, 28 Feb 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740741533
