Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F95578C91
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753982394; cv=none; b=dYl5RFhDLGe5yXvHpJCp3l+gxF775eneAfi4jGzdKnhaLFC3Fhur0ZaR3YgLSy/mOOF/QV6HZ5/zUjoQFChkT06pFQWT9iZ5oRNoB0mCdnmFTYUynWlHLKTuKn/UuhpbOkcAVSfviYbOs7mvf1Ddt+DdkGhtiwXQL/CBRmAp6Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753982394; c=relaxed/simple;
	bh=AbE7+92yRDf2In6w05uJy7benwArdRI4Q8o2gIGSkN0=;
	h=To:Subject:From:Message-Id:Date; b=E1mpAYSLirsoIVX/22v1v/jIm7ZfxIJeNIlMzIvVZUnqyVGt4XGwik+m1ALYZnh4Nus6VgfjIV5hrUXP09O/yjjxIF3XrFW4laMf//wjYNqHyktNTJTnGh0/jBf88GG1vyG/wfh4V8o1VxlxMT2tb6yrbV5pMuusick00wfiokY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X01QkAnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X01QkAnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0F1C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753982393;
	bh=AbE7+92yRDf2In6w05uJy7benwArdRI4Q8o2gIGSkN0=;
	h=To:Subject:From:Date:From;
	b=X01QkAnMwbIo5x5tbzw9N7lOSNQrX838eOO09tg2aH8qNxA16PuvKkvsVjDXOlStH
	 rZ4HScbakKyuez7Xg6BRS7F6WLVBUqshzktHcGZVXsX/yDFVMW/52KynXEBsb6A1iw
	 Sr2idLafSIyvpMIBZRoAUiOTNmo6BCDWPvHMn6rB59doNyCIrdRJCq1yE7Qf0nRmCI
	 xpSQVmjXfKipjWoH+CIeojgZveHWwS64D+z5mxuVLiF3LkuqZJhP39dJPGIIWJkdd1
	 qjwL0hTcf2kboMWxd9dLNxgRQnR/aoxvAu3u6PloyIdWLzjXOP4AJmOs2np61Eif/Z
	 GVfWpRXIqOz4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981F6C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398239358.26755.17279404444672182731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149e34c8dbf13ff1242e5f1423f0f3b0fe7dfa1072c1a514702c204b5a39baee
Date: Thu, 31 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753982393
