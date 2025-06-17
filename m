Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2282DE1F8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750163394; cv=none; b=c8Xgsb1ubmItHtE4EQu/88FyZ48PqM6k6rgQHu/x+rK54kDd4f5Yf4myB1KtdZRVcLgZXuJDap3IOjw/RMgvJGRob7BCjf1liHOJ+nnX+XqI+KY/TPF7LRB9JzFTZhNcN0Rkpqz3IvZKEJ2fRy2pXj1MsZ+ntKNe+FMK+PXgZSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750163394; c=relaxed/simple;
	bh=06o751CQRmVdsPmk1Rbs2NH+koZsE1zH5ALXbfpByMo=;
	h=To:Subject:From:Message-Id:Date; b=iaMMYGj6nKQLUUOvFE950/6cz4duxJPtQUAq7Y16R+0GRE17koarzFT584GRXCa4FgFbJ8twrC9nGlySSxDbw48X3yeUutX8F578OQXGoOLcmNh1o/mzBQsbAVrLL38JJmjhhjGAM+1YuEn1DNeI7FpA+nYiv82Yn9/k/YV5QrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIJ1dJc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIJ1dJc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750163393;
	bh=06o751CQRmVdsPmk1Rbs2NH+koZsE1zH5ALXbfpByMo=;
	h=To:Subject:From:Date:From;
	b=DIJ1dJc557idcHx/sRYy+4Tj8muwAJE71NlkuulSH+QNFvbVuuGGCoivqSp8SHtzt
	 kAykHbkAWKE01XINwGpLg5u5jQzo/5Mtme4lIDkMEYw2IcyY3kipWGbzq2VbobO+SS
	 KRwIinA1XlNlU5Xw/qaO7pIYEBJ7V07DCqUoPseADMnqNWMXKNWz13uHU+NpOfmy4S
	 psrLP6/GI2hKXQv95bhB/xopXs2lgclBl+Dk59kpMcutW8eOFejXdcaQmTJf9WcQbB
	 FqcIT+AcBCghJJeZMd46dDxBWp+qmL4RYcYwrILceBQbHB+labJN2DcxXE9Wq3ia5A
	 e2tWYnjdHrZ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF8C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016339357.3577.17403240888791264573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7275261c7251a69622b1ced2549b1a054567e52a10ab8de72e19a473d89bc14
Date: Tue, 17 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750163393
