Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6D631A05B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765371774; cv=none; b=l6ogiLa6L5dSS7QNduaX1Mm9HlQz0DxHlEMyrJkBBwdpi20RL/5ZCsaSrh/ccoQwI7W9aT+MUQZSgYESr9crXowhItRjOtN0f/9L0qCPzBvF6Wt+xsSNZMnt74NH1lVgjZxGbTiYJ8fV8bMnVzWUFTG8qWQB3AwudyOpQdn7CpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765371774; c=relaxed/simple;
	bh=mKRVq5k3E0BrUE/lg/iYyU3lNAMAiqMh9Ph6hYC7Lzk=;
	h=To:Subject:From:Message-Id:Date; b=uvPRIPy3qx17PifAisE+mA5an6g5+rg3xU5PWEWV02g984WQgMdUFi1YII44XwAUZd1nnnTEv4/HPl86ymGPdoq49GTcd3astTTj5gl9gpOE4a+CZyq8i0XqTwsoh8LZM8fUSaDDP9ijJYHFf/ZUIEea2PIA5DBVMTbqTb+MVZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDOhjKUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDOhjKUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE33EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765371773;
	bh=mKRVq5k3E0BrUE/lg/iYyU3lNAMAiqMh9Ph6hYC7Lzk=;
	h=To:Subject:From:Date:From;
	b=eDOhjKUCSegu7aueb2nOziw88tuWIJ311WixRQloZt8V+NUQmVqa7HnSX6oZqTZGw
	 F1+c8Sm9UmSb4baBTuFZ52F5smaUCLD0tgQHUG8J5b0XHSd59O9qseRRsiPjviu+R1
	 0ivSXAjurqJdAK3ZIG5k/2kH7NqYhNSQ+RDZiFcFRKe2q9bDJlTV0plVKn0mm1Y13Z
	 rw+Eam8kfVQBYxD/I2l71St0obxwJOZKWAOaSfRhIDwCV+WPRgM+4gPF+aZeD5hLvx
	 sf16tWpUVGy8mO7TzsxCH0jqtKI9+iR2kwEA+0L6J8wT+LtdWEJBMWoKeTyLtFNODd
	 ts5FSGOFJVb5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE81D3C53D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537177361.32602.9925923628740736498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9749c2094f1475de09810491f089fe2d2b834202a943f4b697bc4884364968
Date: Wed, 10 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765371773
