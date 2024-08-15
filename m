Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D9238DC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723757154; cv=none; b=SqCifgQ6v15qySsv4AD9Wb0D4a/zjTVuAfyGmuHUKp5kvUhBYKwDLV6M4hX7GQYMpqFvlbjDekRA8tEUZp8zp/KRyObfJgDWOGqWqeqUxn9x6XrzM6yKS4PxnyFUEjnrUk/7WTxHHM6JA/hUONy+Vj7CEQmllXBTTPJ35hzuAzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723757154; c=relaxed/simple;
	bh=K8VGZG3C3o+2kYQ5mVSRkmgp4Xbl5deba86QdlnadBM=;
	h=To:Subject:From:Message-Id:Date; b=ak1BYnM1STrXky8FuaBlH5iHbeUxlMqQ3hPEBqw0dJANWH20ViKDJNK8wkfZGdLh+Dnn8JN11lE5bdr8qinapC5e0uR78ZrEG8L4PdtjbMrTyQHBnj0MeSY+fGkSXo3IHtaS+vplSlzIazqMncaf0t+U0sBCYK8/tb5ms4NVeCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCR1Cpro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCR1Cpro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC134C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723757153;
	bh=K8VGZG3C3o+2kYQ5mVSRkmgp4Xbl5deba86QdlnadBM=;
	h=To:Subject:From:Date:From;
	b=KCR1CproGc4e7oZKh7KXfpZA3myux4NfsnUzne9TUYfY6bjuicN92K29Jd9fZO4DH
	 5Gq7ybLvu6WHINfvpDxON9Yx0M3VKgi6sVWTl/w7cvyykQr7UdbK+c7dLysijK9ODZ
	 2vS1SOo2tfQgI03hxtMd51bmzO15iLkjFKHDLHf8KX4RwSEC0u+n93ThE+DNb/OLh9
	 gWZUnT6TyJsshpjnWNKmvOfbfxWLmHkeNm1AzfDw7A4qabRhwOTJyP1g74i36YjVO8
	 iasP4z/HXn+yOamaKl+C/Hj3dTamnmvun81PG0ZkHwg4+ch1lRqnrNlKjXOoaE6A4V
	 B8xjg5PpCTqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCCEC3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172375715360.27527.4478653663461207790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687025ccae2511b8efdacded25a3c62f0d38913e06b073db0dfa3d06355630e3
Date: Thu, 15 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723757153
