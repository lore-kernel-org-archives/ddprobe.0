Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35686288C9B
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747676994; cv=none; b=HSFBRNyX1eNSt6x8vPm/appNYaWdPK9JWyVDozPcL6HurXmbR7IwmnhnhFgUzOZMGn3KX324caEj/oh6L0D1+lRAigQ7N2CKiBGosTPwtWaI7U9oL/6k5CPagmSpUbhx+aD++KsqWXriP6XDkEdMgdsiZXbnwteYYsZ4dr0UhKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747676994; c=relaxed/simple;
	bh=Ch2ihmThqrToYVWRHh5AvZehPZcrCwtWFY2Un6yj4Dg=;
	h=To:Subject:From:Message-Id:Date; b=MA6rSCTGgTpguszvgdMraR82+WYMt0DuSdn8VsoLh05qnnPVYlEwawj0jC56mqD91rmpFbq0AKMFt//c4jkc1ev4X+IsNJwiSrujv85exm703hTaNXnIznFdK1QERZ//aCbr0COX3n2MCjXYXfiCLZHbJCmJeXqQDomosCYXX+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6rfGZnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6rfGZnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A916EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747676993;
	bh=Ch2ihmThqrToYVWRHh5AvZehPZcrCwtWFY2Un6yj4Dg=;
	h=To:Subject:From:Date:From;
	b=Z6rfGZnYF+CcwVpcMjHU8GTz5Rlgm3Ji8GURcVoHV8RxePbNN44kv+UVzQ09x0Ftu
	 t/I6OB61/39Dez2zxrAxcRqW0LzsyUuWsN8ubz6xfL6e+eGhSgsBy/pjnA6mjYd/mN
	 h1LhwZZe3REyVIYg51A6lrwRQm9VpkDREzHhGCIq8jU1mF8o9EbP6T333Iy2SFfbwk
	 LAh8+EbA2laDDyO7zfyuGEcgll9Q0Ne8En0mRLhTk26QIlIK3oUIvWVBMjU1/Tkqmm
	 5ShfyfIu0Mkhlkp4p1taokLIjWWQHUAi1mWqnj8z9f/lX6CVdKPckTf2TbTdrl/dmA
	 znJUlFxArak6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93275C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767699359.19855.5009933398267110404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47907ef842af50cb80ef7c9879024e56802e5e8390e348ab40a3b4daf675da60
Date: Mon, 19 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747676993
