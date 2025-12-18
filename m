Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A9F1624C5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766031234; cv=none; b=To72J2nmFxZtwlLz+rCp6uT/4wbLhtVdmd1hyUG/FJG0ELi0j1kmidNwzcPgrgMVp4+/NiQDyG1QPojhPKYbsN7E5SdaLLdR/ZWX58EnUSrIfjDfeeeFONK92Wr5wlu6tuEHOxCENXTpGPWVb//3CKhIwxSc30nXjlO2XH9CQMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766031234; c=relaxed/simple;
	bh=m42RWav1xwWYM7xm4JKymsaotk5RCFO7or7+Hj9Ru+0=;
	h=To:Subject:From:Message-Id:Date; b=tf6cdnW8SXlOa/KVH22fvlLqlb9NtXDGjAdrmpU3cmhM+bIjPIR35hGyQ62dAJCS6do+OdnD+nQo85Livi7bIj0cQYar2BpRTQEOPsYFvrq+zjJiXADLBLnqsLzTRqfh4xk4fAcru8efskqUx5yOFJfGls25xVf0k+xCmL/FkSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea+S2ztf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea+S2ztf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B5AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766031233;
	bh=m42RWav1xwWYM7xm4JKymsaotk5RCFO7or7+Hj9Ru+0=;
	h=To:Subject:From:Date:From;
	b=ea+S2ztf+su772GCBrre5qviPQci9SpkJn6a5VWYtV1oPi3WWFBUxbswg9b93Qa43
	 KKnWZ6AGTD6RIkrllo7ve7IwPgEundPQd8He86qoiWxGsbduiWuW+Y/zgERZ/LO+vb
	 pHBEmXGEkMaiqLUQd3+VLvWq/iuk9q7/lC2hICABYfmtOoPSc0CNWE2c6dSI0bnlgq
	 7Ol85/5428nRHVce0C0Pn2FkGfJHvwMPBJxak3LNfsiNFd1hOwp9k91vIwgva/TXZf
	 6xveE5QWWUI2XC2tx28wliTJs2AjywF/OYW9OQQ+JZbIm8FbrybNnM7CmGqfgg1yWO
	 huDfVcBbx3Jzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC6D68BD1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603123359.31964.3568133698584597858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5a6902421c138f198133889a35984682886c723b983f21a141ab829aab4e97
Date: Thu, 18 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766031233
