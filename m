Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5781E7C03
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775085934; cv=none; b=AlUYCJvpz1iFj7yd0mNH3JlNqjEBr9/oosReJsDBKwSrNZcuCOyfTpSQtnkoBsNE8EsofUV5miJ4SVMHOjr1EBVT5hepyQ5xAXBe5Voc0GbyEr58Nh78lCYXJxBl+Vo5o3hml2UEdgIKYR/9HYDxEsp04P59AcJgYXKPwoiN6g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775085934; c=relaxed/simple;
	bh=1pB40tjgwqtQCyhtgiMfWO0RfG/InotrNYsWcjw70mo=;
	h=To:Subject:From:Message-Id:Date; b=pSbTi6v9IBPhba4db6CWZgfiBLWvUCjvpha/y/Fu6cApOAkokWLs9X0Nzeholt3LcG6Gv0AM6iRBSZG8fHJz4RvHY9lQi2Ndto36xgrSBo1BM4UY2w+c5g9aXMF6MBRDwOTAVgvPqEJ/Mb0XDz33zt7S2lJOhsNTgoL2oZBrf/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6bu6cwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6bu6cwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEDDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775085933;
	bh=1pB40tjgwqtQCyhtgiMfWO0RfG/InotrNYsWcjw70mo=;
	h=To:Subject:From:Date:From;
	b=N6bu6cwjRB7C1xqC5JwD0ZALnYCuj1zp1Z9D9g+BAUWFLy65fhd+Z05Q02SChELnW
	 V0QrZlL2n4Y1o0CzzEE6QGfrLEpRGz32bGoxcdQmXERqvKG4vgZm2mj2pZ0TeQ5spj
	 byiqQNCpYX6kmLUAf3Tka3FCgCVBP3j4m04NHdrZfFhE5Vzij9uO/IN720Oxj9L2Hg
	 4DROANylMbgSUTGFtjcrPhClWeOzGWPa6WVWclPHGpe9OI3+dQF+uCTNo8s7dJFVCu
	 zE2vP05gQ+EfpBwDBG0W/dktYKOt1MpAazNR66Zr4iMR/fTwR2OeyYAy2FM4ckxNJA
	 6usjVLZM6c7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA821112242
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508593369.15852.1231568106915922633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a70252c22c9ec2d6f950f884455f3987e23dab4867bdbb21ac4796dbba44c1
Date: Wed, 01 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775085933
