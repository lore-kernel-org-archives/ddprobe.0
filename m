Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4940B205E22
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712931563; cv=none; b=mWHtnH17HSgx23mfpCTkD8unL5nwRyho1vLDxrw+GB7AGMw9XeU/5sxSj5dw5VureNzHAT7Ax83FBD1xIVDBUL3vzEdZkla/5RYmNDQ6goovdBMKY9sXsn5O36OYDLI94kGXYELzDC5ejOLFjI6rizjosUX2gLpQywT3OlT8YPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712931563; c=relaxed/simple;
	bh=KINp+ciqiLPSycGzOqqd2LeUYlspVaXHZV/aYZZ7/HI=;
	h=To:Subject:From:Message-Id:Date; b=ZGXH5bE/aWATvrg3wRIYVA2kCJpcsLAWNbp0JN/YnNmwKkR/j3iycB/Fe+xLtGPDu9FA0IvYWt0hSGErRZgmupvzjk+46pOjSmwEek5WFjujU2/M34ANc6nARfscPSFszve4ZtSN/KXFtq7cUSEia3ewi/T43yeduHI5WV5mMvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+1Ko4Lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+1Ko4Lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2E8C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712931562;
	bh=KINp+ciqiLPSycGzOqqd2LeUYlspVaXHZV/aYZZ7/HI=;
	h=To:Subject:From:Date:From;
	b=j+1Ko4LbcIAkNHdwSX1C9FB6644L94I8gcgQl3tlpjWqjNGSL9wmYBi7A61mMCMNz
	 5YJ/fsrBmWJ67YlCW9lbGOYfyhcwDwcvOSj7TdQJn3b3Qn+aDHnRZHSXWIMhdNJiJH
	 +eTBfe/V2jIBRpFAZBUsfTtHY0vbSIf9cNwjeMxLmBNMVpl3Vut9Mz0Exzg2V1aDEb
	 RQFcHMeg4eFbu9PBLiST2uuoLKutl/GnMI6nSuZndEzSlRW7jyITgdUniAPt3ZN3xI
	 eLFbPk/P2MuALygaZfEj9SMaD35B4EWbWEEXtPQqBcKQd6Hb6p0QnHGo1dCsXOuZ47
	 gqfp/nvvQacig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83BBC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293156280.22890.2219481284159906383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91c7980c8232f07cdb39b6e86072f5cf83fb4df57e35e13a5a5f8118b6e8de9
Date: Fri, 12 Apr 2024 14:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712931562
