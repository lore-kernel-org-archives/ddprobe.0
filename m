Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374CA223706
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744031994; cv=none; b=u25sWP8JRgad2tX4zfRpt8pPAau6k7c5lQr/+848zstnD9QLyXpDOmoFbT8mwjzdrToALizY2nXb6CNeDkY3+hMgMApS2TjEpteTI86kB6K0ovNQX40klfUMd09uiIqZuJMb8IBZkgkdgiv8M2xPib/AqO46m2XlCtx8RbYpmLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744031994; c=relaxed/simple;
	bh=uEgpBsj7MdosKbF8lOwTVAr2P9/VOhTayniLtsi2qCU=;
	h=To:Subject:From:Message-Id:Date; b=kUrTI0LMtDNs3zCma7IQR6lYTgvbgTu8M6JjiM27/DGgq7E6FC8mfRh9ldSEWBXb+/PClMKtKpA6aQGzZOJFi6phTBSnqzRMR8A0WTufXZvu7ei40+49q8npyW48W9eoMTFdGW8MpkpwUPBSdNcMzIAVAOlv1Q0J9Map3V8UlMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkcPr8Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkcPr8Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA8BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744031993;
	bh=uEgpBsj7MdosKbF8lOwTVAr2P9/VOhTayniLtsi2qCU=;
	h=To:Subject:From:Date:From;
	b=gkcPr8XjU8zuWrpXnme5zQS7hXS6Cbp2hIqZlYuw7Faym37m0VmFJ0msdV7cQmNM1
	 fzS18k6Kk5U+Mb/gQMJl8AwP6z1tkIXuDa1hoAt1t3zq/d1G3mneLZRmEfIKWDcEei
	 g0vDQVSkZvhxppdD5uvHBjWj4jgfA4txPovwjpAXOK72bFyijNG7zoclyJHQBVnKqU
	 wkkvcVGcLVGa9ZpZp6jvfoQd25biQEz1OiIttTQlXOTd17nJJqd5/dHuSlZ8B8wV3J
	 Wb7Cxe3QPUHLGdeBcKoYCqewSiuWS3zZEQ6V+HV2uGGODm0Nb+zP7Ug2FIMvsPtysb
	 WxLRba7UfeBng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF25C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403199362.3365.985839898009418692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14a0fd50d1aa564b8cbc1c3a1987bc65cd31028f4d88846001b54efcc67942d
Date: Mon, 07 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744031993
