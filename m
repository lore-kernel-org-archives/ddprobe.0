Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218291E32CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755447594; cv=none; b=Y9KhA+9l0eqXfE3cRpsrRV5cuFxJniN6DnMfnqX6/xTX7zV1kin3bdoS8gznEtQgiX1NsPmAz3oqKBwlgD6viiTdrDr17EUrMHSe5x0hB/EXtjgZD2dkqZtXjhDm8icCvcHmpzy1qtkk6wjrObkbHfHjEz6/H8CowFPZnUdIdzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755447594; c=relaxed/simple;
	bh=uiTkOgdjPagbdnXZqTo/92rh7jZrqXDMOEj1Cy+ECeQ=;
	h=To:Subject:From:Message-Id:Date; b=fR/WERO7UdG1fIkTyKHiRb9PAdxqJaFwbW49hOjY9s50nBX5qej1gPnDocnh2GUoPp4n/Ds4EuH44aiMqXyPFwXbUELelxF0XEBt076AA0nCTY65hivz1ceVKIC4IWNezS9UGo2S3IPYpcb3CYq/v2IPt63mSa7O7UBYze3qhlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFKvJfIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFKvJfIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755447593;
	bh=uiTkOgdjPagbdnXZqTo/92rh7jZrqXDMOEj1Cy+ECeQ=;
	h=To:Subject:From:Date:From;
	b=nFKvJfIt7pDYYVxEYyb/SuSmT2dzdtaJ4uJ6jmFC1yTyqx+5h1MCTioNeEMaANNoo
	 2R8Gvc/sqon5b6O71g2c83OUdUc1Z/+BMgn/bJG7LVF99mTGHgCAnO9n1F0800FkQK
	 5vi+G+96i0JOyjp4NB08t5/f1apfl1HZKlJHJZu/Mflk2DxzJZr1lPQ2dRyCZzd7Oi
	 GXDl7Q8Dixm4smestxfGq2tNG/3IvGNfk6f5319l8Y9FFwuC+Op2m5trnovkaMFcyC
	 UFP5Kwm83l4OcCiRZLy1ke7pjY7firHAwYqqCxsD+HSb67b3O9RdULrDjzm1A/sw+z
	 cdp38zLpJrj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E755CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544759357.2628.10113763222713858480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475a76e6d0bf60d7d4d6b2c6ea8895ed5de096e0e76374e179407fa0417b9247
Date: Sun, 17 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755447593
