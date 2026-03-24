Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01190346A13
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774338294; cv=none; b=V7YFEqp8BmKd5YTmOGfuBt4UZ27XvfsLuhjaiUrzpFLbIi0oWa7ueEDZuRP19WaLFlWBXU6phz63hb6KGcw2nyvszv8ZyVgSe2vRVPROP0hYmtPMY/TBCPW6Xy7E9Qpeptd+XZYvaBgfC+3wBZw/ANIMvH67DDbI7DvXXBnyAr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774338294; c=relaxed/simple;
	bh=QN1x35FQAFipkcK1pTF2BMKW0bkVlyuyDYp0mWiXvsI=;
	h=To:Subject:From:Message-Id:Date; b=duWoniTxYSaCSyqzDPXcG7w0zZ3rB3WL7+woh2lZIA22ZRSb7U+Vydbmjv/PWUs2VQYK9+JyDhVOCzADu59XH2pN+oI24OriauMG2bWviEvR2+xKeScSfv9IilLRVHCne+qXEX7cV5ShuOJ0+Auvn2kd+Ma7snLMNzsOZdoGZvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGLPhKAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGLPhKAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1183C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774338293;
	bh=QN1x35FQAFipkcK1pTF2BMKW0bkVlyuyDYp0mWiXvsI=;
	h=To:Subject:From:Date:From;
	b=oGLPhKAPy8y3EI5vxkekX7JbmB09JOTK27I1lqzS2ul4tHvzURytUoc0ZT3FIvmiL
	 hPLpZAJaRdtW62o+cr0SSGyUsO720sJ0ZOgFvXbDZpzxcejLdt70/2i1OATxo7xPzn
	 HNqsbrO8/Q0b4B2aufKRuNZdmGegItS9klhmxUxF3ZTpnZ+kcbuvCpjgRgpqf/Bb4/
	 eTV0rusfdu+4ApjsEBI1Xbsphl7Tdn48QIABXUPWCOYPthOVaHfehCW0kO30d9qo3x
	 Lk6MN7x905XMLfr8UXDB4NHqX2OHHtGFuGppQMkN/a9MPhkSUqb3l+a2A7ssGS3uOm
	 aVnxzNopy3Bnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079EF532EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433829358.5324.9421368551603495453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5dd287fc06fb4a1bae3bbf9615c976e7f03dcb948bc5d9b21b95c8f820e7a6
Date: Tue, 24 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774338293
