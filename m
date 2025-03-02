Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947636AF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740926334; cv=none; b=mDDk1njg/x9+3WqCMhXDK05REefEJefL9E7zkMnkz2Q+4upJPnlsyyYctWFNXPMrD6CnNxD4LcjvMA+4NvKfnOGKSxhEg4EOpixSgNWFtXnDK85IMRTxuE2xzgXbkVv4FMCyL4vU62pyNI5Gjege2WoZmFuUIGMqa1nXdH5/e3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740926334; c=relaxed/simple;
	bh=ScwP8XC2ywu85ZvkcI2u+xGYm/vRCL6Mlc75tVrH/Us=;
	h=To:Subject:From:Message-Id:Date; b=UYkzuJvlmuK6aJBAqgAqsCM9ah98ZKjvgjO5xhVQnlxpL2osRPQvGDHepIyQVyKNoOUwIzXMGxEKiNg3/QM3uPkacmNMxEMi2fPww1sG/QkfMzMjoIiXKilOOpuOhO7VSg5Te127iRo4pIX5o5tlmxuH+7A9w8fsnpZa3uii3tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJLElB96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJLElB96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA80C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740926333;
	bh=ScwP8XC2ywu85ZvkcI2u+xGYm/vRCL6Mlc75tVrH/Us=;
	h=To:Subject:From:Date:From;
	b=hJLElB961nOKCS71HxYVM/5hZNMTD/XHjz5v8WWO4J1TsvfF1FcD979naxN0UufgO
	 kDlfpUmtYxJOgTEMYybBdm2Z9/iS+luaH5ALsT8OWCyrij8s9Z4uXxgtPoH84HIFRW
	 5bC5GBxAY+Ps/4n4drtXmHKMD+89TcMAOErXbzmoDUV/bZbv4rSYZ0EppGXPTXSFcR
	 THaltw9EqQBJkLfYGJr1O6whrN30gTqNiiQYtVHrU8Vl9wIUIQjEdoVsZYXL/RXWwn
	 qZQlATYdq4Ah2gI+UyyVLLqr9Y3sORgYRaRVq0N/zYd8sW8hNse4RrPeTGi7zNM44Z
	 tm8zJwWX3SZeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1CCC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092633362.30474.8835703057026007457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614a6fb043dafe8eb74ab4f55e427b04f62ae2a527bd3915cc43c0fd2bc2523b
Date: Sun, 02 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740926333
