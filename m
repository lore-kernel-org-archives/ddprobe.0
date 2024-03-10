Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54215C3
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710053297; cv=none; b=Zo0n6sCmgmkHUgA+VqrglACSpqDvAhv97RvYjzx5ZtWs8mQlrXfsqFZ7+ZzWwaCFxSpG87uKnO665SUnPF8ECru4BcZiwlTbXe+sGGXEb+55AfyGvmL/zRwWCL28o8j7yfP7yNZOpQ8zspnCIMtLin1J/O0XCOgqJy0dpVGNkTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710053297; c=relaxed/simple;
	bh=sU0B+u/jTDwsi3exLObYTv2n5bbuDoPIuIlW8yzWbsI=;
	h=To:Subject:From:Message-Id:Date; b=fyv+IOhcj/aiVpbicCXKT6cIyyJqwEQTsk4KG/Zuwp70OcG8vzEWuM3UX0mTMmcileGUmncS8j1j89h04D+zq0eHBIffla7JlS2eXKx2JPje0YmgPtBKZpuDD6ypUVKeI8YLX3mJmsqVXR8JY+H0DO31ullTGGjkj+UyR2Qm+Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0MThTVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0MThTVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E78AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710053296;
	bh=sU0B+u/jTDwsi3exLObYTv2n5bbuDoPIuIlW8yzWbsI=;
	h=To:Subject:From:Date:From;
	b=J0MThTVeFAZ5MViTUxIX4kc7rWMd/vas7YeEqnus77cM01mbjKeFVc6lEG2pFNMtM
	 rDSAooRxHMMkse+DY9pvy5yrTLQLnl4RzvMblmwfpj3JYxbd4aa7s3CPimWdNY+aLz
	 t1AI5Z9FyHDvu/u/laOyPjjQ8biWUPXR0sSWezJtRTuiQmjdWRNjM6752LF+abKr1A
	 CkzVeuPMp7zuP24/mbJXghE0nOHcUJhkwJ0JBy8Vx+1NsoF0oOnNGkEdU0iyE9dgec
	 oSxFZT4b8CH+xbOG9vfyI1Tp9l0oaqW7DydCjOQoHgNOhkiNxYlEh5ALEM+7aIzhHa
	 hrVyyKDLTi8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E96C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171005329637.24491.1126542395348794923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85375bcb267412c76a33dbb84237778f7878ecefe698629736c0e3987b87052
Date: Sun, 10 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710053296
