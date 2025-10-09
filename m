Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFDB23AD
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759978194; cv=none; b=W2KzNfkHaI0TL4WeSDu1NGb9kvOOpF/7TbpZcyeX0hTql08aCsPWHSa5oMUd7mvFkILk/IWlAlTH1AjXg+5NbmlbH1t+oAVCXJ+l9HD/nbx7HPTUFTJVdWqOKsRW1zyGluYxk5PnpDUI7i2NdLUngpmNgeRv4H5Yfg97f2suZOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759978194; c=relaxed/simple;
	bh=dJ+UDxBtGw12WzWnMR2d8oDIYNKNwl+m5uVgCM2z2Lo=;
	h=To:Subject:From:Message-Id:Date; b=K+81pICeup3ia6aeY0BhHNbmqlk8IFtbkAXcrYk9ioh8QLcNkU1m3q3XjdYDszPCL80yiwJSPkUh0vKmJs2+nWiwl2FIxkQeJMTt/uXhq/5DxyrXEqMb5/sB4KYLqRVEbCitwr3Ktk/EijG8Cfe89Ydz+WETq2Kr4uIaYPm4spI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehA5pKc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehA5pKc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AF3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759978193;
	bh=dJ+UDxBtGw12WzWnMR2d8oDIYNKNwl+m5uVgCM2z2Lo=;
	h=To:Subject:From:Date:From;
	b=ehA5pKc7WBGitY5GfzyIijuCNNB5CFxkxmv9ufXG1XiLl0nG7HOHuS8AHyOOd3Rsm
	 q9fAbjAvMH6kHjGa/7qcxBQJvCzqtk9w9YrbCse6O1cX/vQ1lr3iwWSv3F+tbBMbKI
	 avBZZtw7zYuyaNdSrMnJhutVJ4EqsLhtIZZzWiYpK9ISiOvD4VJNrd0U8zK7U+AA0C
	 EUcYAHnD4Ujkz95HakaWN7KyUM8vHssZET723YHXV5oq/7YqTtvydm7L8sQgw4Lphk
	 iWXJlhBzCIo8epfJPpkmG/DuHYyfhOmFhHwrZxCLQulPGDOhiuLrjJ0el5dX1j9mNt
	 Ko1k1hRGHIRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D05CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997819359.24822.16970743468649939697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4632ff78e902411dd5e34337570ef0d3626f4c6cef4d805277a6549d4941ce
Date: Thu, 09 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759978193
