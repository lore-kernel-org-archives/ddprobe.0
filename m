Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D02AE90
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726067154; cv=none; b=Gw4XEKJMV+gv20NZfULq7Nl3cU2RwPMj/OiijABF2Qc7Clk/ii4/WmuoXoLvlwDAHzm7d7NDsQy53DRWMrT7WMjJY5VatTBcajgpWmOMlW0s3xNBpjlcfP3AFzJCEKSCXf0xiTvIFCpiREL4mWUm04lphDBpVPWD63+rihvaNNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726067154; c=relaxed/simple;
	bh=opJlz2yfQWOEsDkbKc40Z6MJb8qbwe03mf5G0KYZVbc=;
	h=To:Subject:From:Message-Id:Date; b=HNMa61Cnn4bDLqavZEbGKUb0h6oIHlzosj07XtHU5J7Vv+Xg9gXJSRd2Qy7hB5rKwFvx01eu/6JE57nHqf08C9vNRlDleQ8ZH4kESkYHeK0oJDZmx17ft3ZDapQtjz91fM+crPF6nVmLyzbK5qmBOxf2kfYJNXFxsnIuyw6dUYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgSmodvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgSmodvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DABC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726067153;
	bh=opJlz2yfQWOEsDkbKc40Z6MJb8qbwe03mf5G0KYZVbc=;
	h=To:Subject:From:Date:From;
	b=XgSmodvAZp7/HfHox3THiLwEgfNSJOxIzR5FBUw+cxCO7k/Wh4SkNiGOT4oQz9ymB
	 r8p8nr35iXl6kR3iLSqkx6CLWZK7FunJH0CiwE7cvQ0S9y/kZsRy26zPJPaETE+seR
	 XGnFICY6VR1S0hDasXFduTrV6lN1gL696rkRlgTJzO2/UNGTA/foj2Y0Yd1301kQMp
	 6z+GUOnxlSVRBfthhtDeJYnXE37FFC1Xpxr1URArlbD4Eyi2fV4cTJm6HENaULv88n
	 siF45F3FljpoewjjdDivUsEXZUC/yuovazUAdmiSKbFLhk2UeqNbqOe46vG2t7CnVR
	 r1MOBdMNa4YMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C36CEE49BC
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606715363.4498.8071735982256795107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d12e7560118f7e2cff005191eb52585ec7768ab4f9c7529d9c568c15fb24dd
Date: Wed, 11 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726067153
