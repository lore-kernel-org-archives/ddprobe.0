Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295E123B0
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727459154; cv=none; b=rUIAuRauM5zhcfMCXvOo8UFeOrjEh8MIjzjEetvxulolKnRv7qPpOSu1YRjTiZW/Z+YcCGjr95zqdZLKS0dlI9Sz12SSYV+cTRGJ3/vuuceFQBqg9rwdVxXrGmnYQCT9p02GLPjQbWgzubWNK/EA7IDrw2vPDxAsfRb4l6ptFXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727459154; c=relaxed/simple;
	bh=LJrHZfTiVZq95SJbg9powkQ244lK3PwBQYOqTB2TUmQ=;
	h=To:Subject:From:Message-Id:Date; b=E+QkMNncHLNQykWQDWfDGy/sf94FptHD8i3bTfQALJSls/NygifR6iDl8Z77125DW3JJn4KSGosomGruXjVjW9JnxtXTCS1POWrSNTThq335SWnlLG2qGQQfwv3OFIqjoGaHCiRQLff2q8meXvQ2FROOQh9rnqaSA5cCJChkk+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+zl5OCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+zl5OCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC27FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727459153;
	bh=LJrHZfTiVZq95SJbg9powkQ244lK3PwBQYOqTB2TUmQ=;
	h=To:Subject:From:Date:From;
	b=Y+zl5OCCJB4s8KycbcoVLo8Xjm3UWKR10uMPYminWNYbSEj8ApZm85zsemL0UeM/B
	 HmMJtqIvy1+atJYkCKxnhZPRR/ztE+ro13OWTIAGOnAefP/eFWEQBthadUmmUyEOWg
	 7wOwFnasZw4flTrPe1gw5Oz2lC4+1YPB22ZWlKogToxCxoYyGW3Dze1cOF/B0+nHDo
	 usKqPyt4AG2iiWTq3fNNIwjrQDt+U9P+qmn/KBE1e/T/sY4Si39q7fwtq6aHpMv25W
	 wINV16NZoVn3oYysYKnNnQkN2TwBpR6x0wjqY55I1+Tod/2mkoRHmYRbWeqgnze5cy
	 9lXec5rY9KPww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D572CDD1D0
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745915363.15652.14002017543876149252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf4ee76fa8b51afc5c42faafe26334f234fe328bdb4410b7d772d22f68f7b05
Date: Fri, 27 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727459153
