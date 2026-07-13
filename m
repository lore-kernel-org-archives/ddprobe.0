Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D434040A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783936114; cv=none; b=IORYGVPLBK3OSU2z7Q+vAmTZKTUhFvECBqypftZ6yRVHmuaoVTLJYlDLs1FiJI5UgjQh6Q6GVvMS/w4UzODk/on150m4o2IEW5OdoPko+vQdWfP7HQQoROGJ7RFnda21RZH5TvCdxb4GncNqYDP8Pv5ek08KkSuchKq0nr0lkWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783936114; c=relaxed/simple;
	bh=T8ptCTjDSp0yl2ahzVHnbh75Z60mejqsDHr98RLL9vM=;
	h=To:Subject:From:Message-Id:Date; b=cccQGdOBeHUlyBWNkJkTlfMOS4aPo6KJPgz4GZDcA/JaRfjxkjlJ9to9B2Je2jqVunKjvEW4m9Xs0o/MlCqCurrFIPoNGnLd4IikuHlzNANjHHAVO9jpP8DsXOI1ndg4XjBapADyRwSuVH/IcVJLsocG1VrpOwFEnK0MmD2OzU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V99pGg0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V99pGg0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CAFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783936113;
	bh=T8ptCTjDSp0yl2ahzVHnbh75Z60mejqsDHr98RLL9vM=;
	h=To:Subject:From:Date:From;
	b=V99pGg0aLw3X9uiVV9VUAfvcybSZ+Jkvg1cmt7SZe+2oyVHiCPFIPaj69mmoe/wiB
	 CYgYEr5lYnpe0nLParosjdTS9/XEFnBbkm+d1WCLfI1Bjsu5oFAEmRcrTaj1wv5Gy7
	 ajX6ZYo1nX23vkpMs7CWAz8yfVYyl0XDKUnULSHXZbI9TmanrVSDkXigUpZ+ULOVhG
	 SU9C7BzFCX0bZ96RMLZ20IptoQOSxjA90QzA5GoHvntOsv2Z8pZ85Y7aUOAW5NUuES
	 tvp8rDtT/ArhTcNM0Nl8zQUpvCRmXh0YFMQluX6YfEHr9eFdIKpxL5Pgg94Ew8UVLG
	 bshDg3o8fviAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0389C44506
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393611371.27102.10289803688256913926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670fe93ffd9980f07e180576f2cae8619aac6148e7e53bc14ae8704003cad777
Date: Mon, 13 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783936113
