Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE538834
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766829234; cv=none; b=HVEW5husb7IM2TkHasCxIn0Dtae2z5TxYfqf3o22CzCj+zSR5lLk0L/Hs8C71DX45kiqjwRLZHml0coXRa9JWfg21ZUlh7fuJCrt9trRIDXfs2lorRy9sowDwGEP51wCRtBG1PW8oELtOfFDq3TT+grnpAmev4cUxqXuNdo7C/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766829234; c=relaxed/simple;
	bh=F5+IJk9eLi1hKGKuXFjwCmdcqiUEjeXuq7oXCs21OP4=;
	h=To:Subject:From:Message-Id:Date; b=Y5LctTuR+Hq89yq/MwDvse+eKi83Tfe2xdKC2+Fv26Oz1rPwdyfj3lRzl4rt1Qdi9tZN4gYF9iyxo1JxgIFyOOS3Jnove86XBB6yDiDqCeJvaNH9OxVJMqyfvS1O2+Gof6v7biswPJyzG9ZoYQNCUh3X1JR231Xc/HMKIFO8IbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loRJ2i0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loRJ2i0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF295C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766829233;
	bh=F5+IJk9eLi1hKGKuXFjwCmdcqiUEjeXuq7oXCs21OP4=;
	h=To:Subject:From:Date:From;
	b=loRJ2i0TJjYmKz9bUOciEK+8cE1P4kxKRablyDe6c0c8YG1DUXw6R38SUaSp5FnPP
	 2VWkKBwnIakpVUyRti2hCUU/5ENiCSossW9MyVWGBAqDC2aPmdCum4bCbxDFb3Ee4G
	 U5g2ntpPLhmpS3sAw0r1slTi11ABmyoMOjicKlWOjzjOP4jmtpRIXxGZcnmd03b9Fg
	 uRskETEA5+zpGD2+bYvGnYYW0XmU5e+xHfUAu7wR/mB+LYHL5JPTKunwHBApMK6nya
	 RVza7k4Pgc+5CFvuUALUFOfCLxorveLJ7qsiqN0yIFuE8nJFou+aYHrzqYaOboQThc
	 IoPOzAKuvRPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4711E8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682923365.25230.1060026207968592815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e7bdd2f502754c99e95e8c8c47340ba50783e2b643b6fb9abb635d59c19dad
Date: Sat, 27 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766829233
