Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458351F237A
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745437794; cv=none; b=SqJhAGUwxOi0+V9VADjp9MqzsodS+GuMdTy6JUEhc6p9yXnxPg1+UPfnaITL3lMy2LRrVX1GG+HMcyfOuQiXjwnjGQL+XAaBcuFmDJQdW9K84JEKlmne4oH0Olu/rkiecc2HM2o19mT+vZdQl+r9DuBeBhqXOj2HaDs41v6fkl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745437794; c=relaxed/simple;
	bh=DxT2PmvsFKPAsVZytm73eAMEFE50UUqTHHMiNHBNpwM=;
	h=To:Subject:From:Message-Id:Date; b=FJCJDx4OV6mpw2jtl69ksVlDEQ614oyavuAWAbS0sWJCZEsYFvxSDr0Pf601E9F/9Bnzq1VZBNNHjqo1LEmQRfTf/znovHRG5qPaD0Jk9rZHx5y6TlBkeNwZLYuIifKlpTHERgZbn7ws0g3+fum44aFqlKFfRPLk1iLl6Q+Bj18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoUiEtKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoUiEtKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A114EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745437793;
	bh=DxT2PmvsFKPAsVZytm73eAMEFE50UUqTHHMiNHBNpwM=;
	h=To:Subject:From:Date:From;
	b=QoUiEtKPm3BWemwL6MFzZo5/woMA83PEcrKK6Fs01v6oXQY7Vnv10NaGnTH7w/pnT
	 gyirYKjg73WVA9RleaxDB56mTi9P/hGLIaOOWoEdm+rcwsc8eRRDSuhr3cVWHNCdm3
	 BJA1f7kqgLQsoYm1h03naYQfoGbrKv4+xnea6Mtek4QP9h5f/m8H6QX90t5UtishYp
	 7yitCbwFwBD9s4WHUwPDcClg8murZhSksnM2sFFX2LMXC1QQX6LAlV0t0rc53+21O5
	 87RLJY8X6XyIQhu2or4yNKFmCUcoAR6tOgsVUxWxv/U0oI2+ygVDTlCK5QzqoDI4bX
	 /AChAwv5NzG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56BC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543779357.32674.12514416248627270185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9cd69a2bd468eab98de80125fd0f0125eba7d5cb25dca95b5f27ca1ca5dfe6
Date: Wed, 23 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745437793
