Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D08C1DEFF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742579994; cv=none; b=j13/PA0NY/163qjQI1ejsM9MwfWjao/Nnsuu0Adz9DHRMyhlSAc3HwtlMwWoBQwOkaD9EfsrJ+yALfXqWaP6hXrEtIc+OoDepUxz28aEPtMfe1bQNUavJmh2atoQjeMxVhQvHL4UIpsVYkizVB3sfIuvpkoZSiob7k4wkVkTb94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742579994; c=relaxed/simple;
	bh=WYdhHAYslUAzHYQRn6sksWOLlz8/rIOWb+TGHifk1Ck=;
	h=To:Subject:From:Message-Id:Date; b=uT2Zse1urS+4HqZTIGmKiaagGBJ7Ydpl+O2zp4OoSQTtA4yHB3lVLS/nSDF9Syy6ArKdn0rZxe0NVUJcvtOfOBG8b/lkSXvfD3/TR+BOStafGGx/4puU32GqOOLUmjt/itNY1g948avbNL+ZDq3R+3flNKgOb5vn4DFzhHdV+zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLekYOEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLekYOEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBCEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742579993;
	bh=WYdhHAYslUAzHYQRn6sksWOLlz8/rIOWb+TGHifk1Ck=;
	h=To:Subject:From:Date:From;
	b=aLekYOExPxRqAymUlSVjdqhSZQoVXGe7kzGh68p82cdm3x8VpxGEKsoKA/qzCiAdC
	 zIaYWCRqbPpH0+GGcs5K48bVS+vNlkf0YDG8j+X9jcOl8u0NbDvsfxNQuFbOgpzEBI
	 vDW/HcOCKRMzYTKtDde1+tqtA4i30sHfWItNB92X6zK/Vjk/u5IMdjhum2H3SWdHc5
	 /lO89fVdN9XSS5TgNhLLaQlawXdJ0qi3tNwj032GpOojlxGhgu2Y1HM/0eUlHxUpJ3
	 fXSHMPzNCCrvDQo1V371rFLVNEBSogb4D3xmttudSL9VPmSIOC67/RL74bQi5y4uMC
	 HBY0zatUNspGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72A2C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257999363.30585.8336755826938460698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812769bc6dc0fbf2b6816bee47dedb983299f7d99eb375f67139fc7de19bbdc8
Date: Fri, 21 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742579993
