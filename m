Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FB143F0BE
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784412514; cv=none; b=nBx09n7hPWPnFJq1O3P0oT0GOXWBHSruiWYThNgGp2ucxuEs/Eb4QQ1ZaxFOoRznKRWC2P0OCiIhAezkJDk0+mzmHIxN/vZ6ZJ1ne9zEN8gLuFM34waNKmKxIH821liClIgaGTOznXvtcRRgnoUHJ2MhDS6QUgkLsILM4TkEHVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784412514; c=relaxed/simple;
	bh=hwfC/Apo3FTrzUgZ39Gul1pdquaYP30FIOjq9oreW44=;
	h=To:Subject:From:Message-Id:Date; b=qn8s4udBdYJgBA7PQgOjQgi7/Y08QZIKkc0O3X731MY6pSq/o27nweyWhoz0tAOXYamAY194e7D7U1X+kYM4CtLsjS7FsR/4x9Cl7JibwWMqkjmHuOXgAZEjlvc4I+fhJvO1kwWS8QLq0oCg7DdDcAFR4BBwuwACusTSUnALSKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOUNIOiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOUNIOiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE948C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784412513;
	bh=hwfC/Apo3FTrzUgZ39Gul1pdquaYP30FIOjq9oreW44=;
	h=To:Subject:From:Date:From;
	b=eOUNIOiKnZgOqb7uFcQ2g0quilALg/iSVtKdqGJ60GRmmiU/d96E6WtRawN3K8QXi
	 ezZCllXWnvRQRBE5GFTngU+aKJJ7ssq86GNPWDQ8JjXAc81ZKLw/RsY79rrGJt+EDH
	 eh5T+VO3FVgMNat/qTiRPrBzLem9f/uY5qYWd0y6aAdotXOFBU+FLWifS/dd8rBdDX
	 8NAxzfImttSEv5Rd2LMRelMkYqq3gxgWYo9n4ze3YIEsHDketK3F6tVXBYlheNThTm
	 JBBxL3kj+EZu9gYOTnrQlXI8jagtMsUSaz1qX5B5QUODTS80Z4hos4CTjOv63//fXx
	 xfmQvIfxXEIYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB536C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441251369.31855.2289370443946817284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc296a99f3c6d10abdae8b08efaa514c500ab23a55fae3197811fd0672c0726
Date: Sat, 18 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784412513
