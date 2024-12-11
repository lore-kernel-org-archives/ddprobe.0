Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355601A0726
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733955354; cv=none; b=QPP8nhlGRCuYI17ghWfQlMSEDXPNtToFKg8n/pA2uGhevuKXVLbfOphZDvMqWYTHxyu/P5mlPHcs9MBMN3Op/R4sS3SZjEp2f9Qds2nSvGQsqOYce3mXf+DFORya2kuU78EfJAm2ipeVvudLShMPy63MDp9JZ22X6H6oGYisFK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733955354; c=relaxed/simple;
	bh=5iCagXO8N1vl1ql5TPXBZ8nMLdtMLw8rKvAvot8IQZM=;
	h=To:Subject:From:Message-Id:Date; b=S+oUrlfuZt1Nmya7uY8QlPXBfjw4TpcXeZsNFT+ZyfHc/O3fU/Dfp7uuW5zy5vOYTwIgpzaRM4XabldSLNg96LUlatpCKzLH98ZRgBuedgAswCRWX1NfgjofpJX0NUOCS+83V41vy3Uf2OYKWO5FXgIKH4SUzjRHQOhhbe+LSEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyDa5i1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyDa5i1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF231C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733955353;
	bh=5iCagXO8N1vl1ql5TPXBZ8nMLdtMLw8rKvAvot8IQZM=;
	h=To:Subject:From:Date:From;
	b=SyDa5i1sWRtsJAWsL8UfCd6nrJlEiwdV5OJd8fwxb8UMI1b4ykHh1ysGvQyA0DqZf
	 oLvCr8vQNKQH9LRWZKRU1SOlC44WioC7mbVjjTLGXsUayMq8ef0Gsmy9xjJMbYXcVn
	 /vsuqj5QvdrXSJaoqjnb84wYMJPSmd99sgX/QRCpWifQk1tQHbBxt8oKu4KVOUpZ0O
	 +awKduzcXPFwtjLjJnppcXh+iaEd4UcUlAkeAAmuCz/jpx+otwteia2PItVayt3k0U
	 dqnQhdJIneIWKwBphGmtwmteDyDtK6wym9JY5/LNNetgmUJz9sCNPQ32mlWxmIz6MR
	 hdCggDX77THgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5B2E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395535363.21973.10301234757275492598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845f0bab0542351854a52f41be7073333748fd29c01108ac1f04a8b04c92ac7d
Date: Wed, 11 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733955353
