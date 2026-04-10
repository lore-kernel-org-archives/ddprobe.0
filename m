Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB6238AC79
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775842654; cv=none; b=ULWmu7v8i8dRBWgEpCHkhSBGj1i3aapZ70ZlegftRk7Ua7qk6Kq0m3FXlS5h8dCMf7qESN5QqxEI+3J8v6en/NXrSSlFzUqVKjHpbK5zZfugL9BrM//eIZm3dIu+mxlhZDdmDcSFHP5ky1DUq6CNDfM+XIWSyRZHPYTHAXFytUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775842654; c=relaxed/simple;
	bh=JK9Lh9lCKCEJW7tT6khKytRuBf9PJCxiQ0okYbWNKrc=;
	h=To:Subject:From:Message-Id:Date; b=Gd8kYCN+btQOV6Lb2E1hjuMHDZ8li4sgfsUXQhg7PpbS7jXL7vMQi4DZjuGq+BTYIuarSGq8gqXmTakosudy0ixkU66J0jxEd4m2s7bZvWmc6G7LwEvPVtX51Kvd3tJldJuFs31QWCoY4UGHnwMSXj/nudXX1QD+R53m1NlcUCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F122YPyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F122YPyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4C6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775842653;
	bh=JK9Lh9lCKCEJW7tT6khKytRuBf9PJCxiQ0okYbWNKrc=;
	h=To:Subject:From:Date:From;
	b=F122YPyGIo1fxSm6b9Vs9nfqvl8/cAlYdkqHWMqVEhiTXx/16bZ+LuYm32h/gJvvU
	 sg+Ur+1uttk+7C2O/bWd9UMpRmyWK7l8mYRN3zejziDCHDLtEMf/HtS+PVzP1XakDN
	 aciIXZLXJh437LkxhX9eOgcSyjoAlosajwT1V9a3F1/akNFTSCghse7gVQ8Zkico2v
	 HNEksBHs1AsEMhcljbJIgvvIvuMe3FE6zlmfjjuo6bju4g/6ceXTBpZB+L735I8dBJ
	 8GQq2DTeUzk2sRFGySORUkqeC9YdRpP5FICb/CbaIOfbsXRJ/huCxN3HeAcI91ZKjP
	 84evPT9g6Meiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B1F459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584265369.658.8933785306880694500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d92e32f1d0f0a8a08de1dd1b72c58902833fdf0655038a64c21c84916654495
Date: Fri, 10 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775842653
