Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923D3CF4B
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706762297; cv=none; b=oVyp+KCC4pnCHIAqQuJBfJ3TeFnBIAOfvPOEgeThvqeHt/czXVX0MVnxbRfF1WEpduKDQ/O5bmvUeflNwfOYgYgY2ckL1VG/gORulPLaBcUeHbQYnAaahwRLiesQdSB4lVtjMM5U6ef3Mdqub+lUx4vVWVr0961RUJqrYBjyHDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706762297; c=relaxed/simple;
	bh=HjkCxPg5LbeMaNfENStieuNhlMFxyiWpxp7UQciPP8g=;
	h=To:Subject:From:Message-Id:Date; b=MWd2vdj8HoUK5VKns6/m4s1vd9cQnIZ2v/zoHf+6/wwG0muhLvyoEf5yHLJtiKxT/2CKDHPCAJT4WwIb/H06uGqbQQS7CZGjiD7BwE0yagFI0XtvoMQBnCCJeKu5YrLxN48pV+EKCfX5QnRKa2xV4Ps/GZqkxzgsrJgvwBxOCmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzksZfIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzksZfIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7329CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706762296;
	bh=HjkCxPg5LbeMaNfENStieuNhlMFxyiWpxp7UQciPP8g=;
	h=To:Subject:From:Date:From;
	b=uzksZfISTiASvesHVuQM+rEUwrkFW/w5aR8MpwC1Sc7Fm8IqtRp9fYYvDYYRSVMtg
	 4oea8yE2NsKI4WzXyzlar9yt0MqyG6uAdDzxVPwFkCQVQi/pcWrQDNdR+/ImLHIf4J
	 8/ge2FhUgI3PdxzcVvGB8uXEXn+jgkhxBpJxeMqZqBqSyAPxmRgzn/6xZZYYcRb4Um
	 yy95qrMax7uKxt2T9E4vVKCP+BXu34OECfkzDu0IxxATDGFES06zVCEhwuvN7oO9yi
	 GykiDNfdTv7AcKbaFEg7r0AMENhxo1dFH3halFvHAhoUIVTKqA5aKr5BNmrKx6W6LL
	 K7sp7iL1dMnJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C649C47DDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170676229637.6966.10695731826800037437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0354a53912ec4cfa5ac7f7e92d93b1a2234f396f5e1df028180d144c549814
Date: Thu, 01 Feb 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706762296
