Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764436E563
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567514; cv=none; b=c3HkywT5Xn0hSRHE3Ndbf2qUVv+xyubS9/7K54p4ZsNtrDHCzbfyslBdl2szxily2lYJkHxBSKHDcN0zU058ydRGljCwcwYXKspZ4STMnDLUSKdy5DIEvG8jlY8TTozB27AAaB1dRmk/YH/0N678Qy8NKTXSYCoysJ9Dqe/FncQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567514; c=relaxed/simple;
	bh=G+agR1+fsTVQYv5A7+xTcdy2VdH2+AIE/PDAB5GiTbQ=;
	h=To:Subject:From:Message-Id:Date; b=LjW17YJS77GpZRYZnX9mrOT7fH/rQZdPgDGXa2e6vyTVVjH2CBrpgdqtZlMLKuhF7bvW+7r0GEEGY3TNr9URgF7bfz5e8hEl7D+c3hPBzZXDk/wvKb7DTRgBcGUW3lrA8grqby1T63zitlslMx2m73UnTrN1seQfrA9QWLQFsiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdoJsY/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdoJsY/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB87C4AF51
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763567513;
	bh=G+agR1+fsTVQYv5A7+xTcdy2VdH2+AIE/PDAB5GiTbQ=;
	h=To:Subject:From:Date:From;
	b=HdoJsY/CidxK/koejv5zbS+w8ymtA47gl67XkalxhhwA1DGjTX2Yr96+CRldUhFRA
	 7GnSn3PJkGCewj2Zzw5y+JJqjBPR8iFtSgi0WUSB2OK5qFO4Um9hGTrWqkUOnfYZIx
	 r3e6oXIhUXqBlKJs9DUwpaN9v2TOd8ECyWHaWLoY49hppRWnwdDCuNx82BDYIFRN2U
	 53yMyEdDBgfLJ3qqXE4j9ickOKj4fnddum6A5bgZzk+beOLaby5827NDgLSlHlFNAO
	 adA60fxLBHRPqBI6AJkKitRodUpLIUSJcN+50uGSgfAkwjzhV+L9plHuBhCHzl7yv8
	 98xU9uyhUjJnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CBCF34D9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356751358.3842.1506376348680084164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531ab76b63ddc43bdb26f134a4c541e11e246acaa6c708786d34c4675bc3f4ab
Date: Wed, 19 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763567513
