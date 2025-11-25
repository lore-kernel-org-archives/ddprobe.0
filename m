Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293892D3727
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764099774; cv=none; b=Np1Pvi3Z82T2++fmXsIvLbYcvlPTmqyyFev4JoGriqf15UDw1GrWv6vj9gOkTFnmusBbqF8hAWrLHOhjsUNpNo4l7GBPTTPeHp6qtS3ik70F6PopHkGL4lSoBXhkkuJqpamkZeND2I6thkuB0NTGTDe2Q7K34zc2jhMiFZa0pOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764099774; c=relaxed/simple;
	bh=NczzFjOst7hQVP4cx9b/j2QsgH/u05DwR1tmvVzYGPk=;
	h=To:Subject:From:Message-Id:Date; b=uR04NAa7DY1dipLszzZ58JMy4Eu4ria+nWmSakAEbUkUB0oLB4Jc99bOWXasc3M5P0NYyHuOB6NJOX4axhAwfP7zZyXJLth5UI+UwlQ34RSsOD+DSsmuNv83xTyIvXK46sYJl7AeGWgg4BF7XQh6kl5YRilXYZXmKAPiS1vYH6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo8+s02V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo8+s02V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03E0C116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764099773;
	bh=NczzFjOst7hQVP4cx9b/j2QsgH/u05DwR1tmvVzYGPk=;
	h=To:Subject:From:Date:From;
	b=Vo8+s02VNbLPUNnO/KGrIhzoFKNbt/f/24s7U0zd/ai58qghm/yA7GwvmbR5kxJgP
	 cqKz+sz+BA5OFMZKpe1e38OsKTKg/o/UNEsNK0LoavbJSlvYXqoIwB0Ur883qDhUFh
	 oXU4DXO6BWNhGWnPvU2+DxQyjC8C6rEbGurvtljOT+fJjlHdcoxGIPD2Cev3IioLW4
	 bwxfEbtcukWVv5DGLmyq6sw/vepRMf/hwaoNtRoJh3qcELy/knVGFsHSn4E0DQuo21
	 4L968QS/HCYCs0p3zJUgkkzw9AmsRGC9abWBSTw/fPgEyk/Xn+PE1uWyY1opD/DU2t
	 2WCQ9JKyxNKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D495D0EE18
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409977362.29366.8647264237077938368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce34ff32c1358717d94df6a72d1046640002e5cf5017fbd7cb895a90d9aeac75
Date: Tue, 25 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764099773
