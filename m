Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F077A10A09
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711192097; cv=none; b=KvQ92cE5PuUg6zk1AYxjpal7vxnmMV2ftLE43960vODsgkbBcfKdFHzoAGE9BmfWf/svUKzrz34z5cddwKKZ4oOSjbL27REsTDGqVqphwrXfde+jXhTpoDs/QHPRrCx43Ob32FivCzGNM48lSAJL7pHcMdmpa047uPv1JF+SesQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711192097; c=relaxed/simple;
	bh=U2TMfKPOEI8m0xd9ORqUdN7RdLhEm7jbvCpVg8PWmFU=;
	h=To:Subject:From:Message-Id:Date; b=uX48J+Pcz5fH2ekxaPAaakednqiSO96DhzzrGIK1qEU3WNFugoxJ1BL2AwdcQYvM1gj/HvpYTFVmZlqGoMweABU0e3wwzU/jm4saL3AeseE0ptGFyPdvnxYSMpwYYE8Wkkj3yGOh7VWyO1zpFjxX7y3LN+kH6ZMCY4bMbWT8AYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpIDyy+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpIDyy+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82EA5C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711192096;
	bh=U2TMfKPOEI8m0xd9ORqUdN7RdLhEm7jbvCpVg8PWmFU=;
	h=To:Subject:From:Date:From;
	b=QpIDyy+it1vq1x9sjFw46IwhE9+t6NWZeMJxsEJTvoaKWM1/xfFiiYTM/NCUN/+vT
	 ObTeHujyMZGJxa9rvliXdTS3ZLhTUxcHZE/+7XiYge0QwPyli0wMD6U3l+Jc1z1GDs
	 D4y/IYk4ePm44r2FSYg4NhJQ6iv/lL9lPtFJQOW3DDo+gRJBcTuwZvLZnRuGQjbEF6
	 0AoSe2oFd9sIKBnLpw3rxmssj07gsSfDSwDxECgMVIm1WOB4pkPD8AMREGqrml5qM0
	 DEJ3TBJeleSC21F41d5LqsCpMfNY7YKYkBde5gzez0dzEOZAifrnnzMQjHcdITWiwv
	 XnE83TQP/NdPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E08C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171119209639.15067.6004931046215607434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1d7ef9cc52bf3c3b401744324f0a3f71b6d5dcc6baa5c65730b39603ec4f19
Date: Sat, 23 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711192096
