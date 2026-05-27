Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2891A18FDBD
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779907954; cv=none; b=OrbIkYEePejDQKRAYKAdmoNUraPxsioQ8rgdM4ScNig403xcQ1a5awxU7kQIc81ar9n504ATE2CfQp6a9/6+6rMj+prSJmr5BUx1C6Vf0lbE05kteFAJJO8cA3bB2dL5InPEsYTgDj2q0uIK5/0zaB47k/BQh+r4npgtbL6pSQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779907954; c=relaxed/simple;
	bh=nz+vP+/9U9ifim5a6sM7nFPn6jle+qqTV0joyJOfCyQ=;
	h=To:Subject:From:Message-Id:Date; b=axyfizgNliI7C8JVDmr5LQkpHTJiwdWHq5qvFFUSjR2G7Lhy/9HMXpAapCtIEnPo4IvRudO3UrUnBQQ1tGgGY0my5IvVn0JngU5nruBwCyVMownBpfE4uF9vH2kqAl2zmcifsYxwBtoAUNyJ3lajylSvvxCJSWxFA4GUgmu5WGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgClYrxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgClYrxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C9BC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779907953;
	bh=nz+vP+/9U9ifim5a6sM7nFPn6jle+qqTV0joyJOfCyQ=;
	h=To:Subject:From:Date:From;
	b=NgClYrxgR1FNcM806cN3XGDtuMA154USudfk/oBsNiYqiAup9Sg0JNHFk3EGoCI+A
	 U/U7+PAnpZsehKDT+Np2EfAXO54v5U5oIBSMK1VH4S2vav0Z/f9YIZfevWqXlw27yv
	 oovP0JVLV5OsZzNadER385XslpZ3bU7apIazt8SRVQPN5EQdKZEErhwf1w8j+IyDy2
	 2cgtX3NjGnI18jVk7kTMWnMBWBPsL/2XiTePz8q+iwpkvIYSq0CLHo8sqTz2N30Am1
	 vkJQUKHqSCISzF/z4esbaLYJu+2nq5uWMMQXj9rnN+C3ksgIbh775DIvHma8URzVaj
	 ptDIcDw7gaWEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D0DCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990795368.5187.14971686897957256612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4fc6d6fb60f38b480ff946bba248bae1bf78c69eb55eb7b9cc5dc12a589c08
Date: Wed, 27 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779907953
