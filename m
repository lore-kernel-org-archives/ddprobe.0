Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF16A182DC
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706676497; cv=none; b=dlD3vNVEaRqNn+jfSm2gtdenoJ+lHeFeTXCFEAZ/ZzU3mzhzYNo1eJouuPR7ArsNHie2fVuXMA97ePQDl0pdU4cgCDUuXFtxy9yWrtJv5/SBeJZ3Uw4+y6roVQswo0yZrb4Kip/S8rnpxkwPqoejST9oK/ioYtMqzm4uNzx2R3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706676497; c=relaxed/simple;
	bh=YuzWVVKXijSABK+yS/IsZNs7yTGhQJATD/K+9SWQRzo=;
	h=To:Subject:From:Message-Id:Date; b=gx66g0y98EA9AsxFwFTz/tg85SXIx3kyR7OGH554aWBfWCRHf7yxPjU+eUibg+4PZZY10wE7tyhv/5ZuuJpOxKFTZTdegmJQYrj2iMEdBSDlRQ5err+vnspLByHVu5f0jQbDP9SYGQKkWHiUUZkXHm5bmKzd2qKESWSzOABRp74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RddPtbda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RddPtbda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA94C433F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706676496;
	bh=YuzWVVKXijSABK+yS/IsZNs7yTGhQJATD/K+9SWQRzo=;
	h=To:Subject:From:Date:From;
	b=RddPtbda4jSApWEajTOWqhYWTcSGcPIXhT8pGKfdgRcMyF0tg0PkNtVRK0lLgffx9
	 WrNSa0rAMTFZwFv3a5Y6NvZWLMURqai+n1jo9oXcEqcp+V5H1AKLfe0WX+DkIEYw1U
	 ugEgbtClV+6kn6FaMyNE1yshk0AcYOVbLbOjONy9z5r4ApfyDCWN4B2WtaYdxzo3ve
	 QPrdcnIQBR4Wnv966H6G7nEk3uZ/6qPoSFG5GjLQ2UM75W0jNcx8namaNczlUDp+Wj
	 HqpvA7sJdfwhxQjKZExxu8GA0bvIZ0Zhtxu7cl3h6OBuIuZZIqWEHBY3pkYLFeckl4
	 pgR9qTXa3eGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61666C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170667649637.7494.18235649963985285282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45a4ddadba670044c52005bbc1418818ec68547fd00ed89c214e8852c96bdd2
Date: Wed, 31 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706676496
