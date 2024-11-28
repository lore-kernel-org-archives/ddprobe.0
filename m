Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE04A847B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732755954; cv=none; b=Q3pyYGDD7iMLPx4Q5ThKNXeM+Oj2q1Qt6DHKPDg8FGhxsPas1OOmO6jNHU0IeZeQcRzD7fQHjZpKjBVybyXokokr2kSfkc4hnym1JIVDjp+Ekfws//1BqJ+fhNdpJtcDt1YJoh8cxPe1dZby2igI8sGcvMtQywS6KOETZHqqHs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732755954; c=relaxed/simple;
	bh=BcfFMiyjA7uI48D/3E/kYjb0E/yb1bpU9OdkIfh/apw=;
	h=To:Subject:From:Message-Id:Date; b=BchEKuZJkBGDTKhugud731aOhJRI3+KulytQyFFMXFn/EYQYcNreXw+S2bGtr0xQhAsmzZJ5Kbq05jyo9q77+OUesXY0un/GFFmu3vS5lDxW7RKrTFssRW5yulXrdHmakyzwnJE3y/kv0lXXtHvtff4oLLuGoXLYy6hGMUTuHIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr1sxyVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr1sxyVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732755953;
	bh=BcfFMiyjA7uI48D/3E/kYjb0E/yb1bpU9OdkIfh/apw=;
	h=To:Subject:From:Date:From;
	b=Kr1sxyVldkioHjRWzL5bTTfl4vdIMaaStFfAiLGSbTxxox+TcmSh2vOnXn+nxVycO
	 G4Vbi2se9ymTlvj9QEiuM/aVuAQqfa3/ACi5kZt8JmkzaXa5VYeJXGgqNr7bEbjHZH
	 1MFlhWbb3yP9KC2H2aLK2Bkgtqb3RMMNXabH0Zu3ucY9MT+rl9sgZCp3lshLCgf6DL
	 tNskhXfejPSif8Ka4EIWyUe5ryXrXHCkMpkzTMNXYytaPE/nfvzW1eoy8eLOI663kM
	 /PNhnO+GJX+5MZLH1WPkcjuHXMn8whesMQD7osbpJS54p+4WVpna/T9dkNWNBM8l03
	 QdCH6NTmpI33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95590D6D250
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275595359.15969.3584768507465834992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14200d6fa0be7223e1d0a36c29346c6c67a6ec3d2036786a43880e2089d30a98
Date: Thu, 28 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732755953
