Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617991891A9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789877434; cv=none; b=FVaplAuKUUnLLL7/1Ju7mKAptHORwAzNO5Re2doUdECIO0BgBOvd5xEWNy5D1XyfcQ/7oXkt5OZT9isD3/Vo8r0pznsmq7ZTrSD0bODPsEJc1V9YlbN4zHKL974TcskTiBGFiChc3sc9af6e5RxNo2/n8SQXJewB6TThE5zX1AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789877434; c=relaxed/simple;
	bh=T879K4mfOr93whm66Qik7uYexOmI7dXJvrV1inyU8g0=;
	h=To:Subject:From:Message-Id:Date; b=CSEFXcsu7+aLA7HmM7YhQkFGGbTNN5cqZw9A4hL+UG8WlZNI/LBLDy+UiQzvaovhKJgSspu/t70sXjvBhCk+RV3+/kEi3M+995uf/yUK8xwJQC39FVF9jJOF4gTgGBCfa62odehkyqYORpQEy0NyqnMvcR8C86/Sk3oGMwBAoQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spPsgde0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spPsgde0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E435EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789877433;
	bh=T879K4mfOr93whm66Qik7uYexOmI7dXJvrV1inyU8g0=;
	h=To:Subject:From:Date:From;
	b=spPsgde0Vk4S1HzWIbWpbS4NuEgiNCqavE6kSkQAulMLI+7Mt3gDHpGONpEt6IC6Y
	 1lWVuPhQmhd/pJIJhATNtlxkPmWBis3jwoDqKYsmNR49jYbJzQLkBLFA8Dp9CbOJWk
	 egfvPdWhmTOAxDBvatk7/DN+aRQC4yJk5XJ+IjydKTJ4Y2jgLFN77PHJQflvf2QSYp
	 wOPqm0sB04Ob7ND7Ulltx5ACWAaHW8HkU1nJgfMuAbHJNQA4ihAe3UwB7uWZpQxrBP
	 Igu17gowl8xyaptj8/wUq/2ooCVu3g4oKD+Je0xC6F/NXGsyn/BiNvjMj1rfxZByjx
	 vej2DKGMEAHNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9751C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987743373.19529.9369456417248669668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60b2f4448c7f86778e627963adfb2cf95974aedc1a1f06355c56a44fc848549
Date: Sun, 20 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789877433
