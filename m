Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A05D1FDA61
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757957394; cv=none; b=rc3SladZhe91EDoXJyRQCQERom0EZApr/4qwKm4ZhSyRknr+d9vNEj+io9tO9/Yyrx2HTjqX8rvZHMgTBySc7TE9Clri6alsGmZWR/BkEEhH79f7QsZuC9JMStmXXz0aGXql1jk4UNNcMNHP+ZuzTfBXDqYx06ayXZgklPYi0Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757957394; c=relaxed/simple;
	bh=j93wmBe9N2l2/xMKpAwCIiJWe+SdaXybYZ0ZL7Xpcvs=;
	h=To:Subject:From:Message-Id:Date; b=PWXpTe/NTqGJoXPQkYwF23SmWQ9cfUCigDKAcwuIB1QuDgnoDYLczODq6lmt2C+Vj15H3scAe2coVY2PW+FAVgL3LjnJ6dx3yQNcZMYooLKLteKL0hSZiX3z/04w9EXLG4sZ0yAOACgddpU61ZPAhTjUDRvgoDj7ocLgALLkrQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxmCPUo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxmCPUo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A635AC4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757957393;
	bh=j93wmBe9N2l2/xMKpAwCIiJWe+SdaXybYZ0ZL7Xpcvs=;
	h=To:Subject:From:Date:From;
	b=qxmCPUo+FD/wRpcN4vJ9Ck8Pvh22gMlRrt8b+lZ/Hl6liW5rIpEkw4PcEafHhleyG
	 8XiA+cDmnxqYPuBGLtcErDAsfcwhRtk/0vuATPbHakbwbmSBHT6/5bw2VHqvQBhQlp
	 zVYXVxsj1JulbcyEB4mDaW+4G6vo7hnJMWTgv8oUlaYy7Deri5lATuiPobw6nV/8yc
	 ks1bHOc8WQjLj1iF2l1xfDMbXFio3I9qQhk3DCU2WXwVauH3Mxf+kmmZ7EpTEdz79r
	 KtTDvKj3ywGR6zLSzgPEQyzgHwSw09n1MvvxtYJqKCk3h2Mo1U45GoQGPpTs9dql6T
	 H0LMLt6ghtJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F743CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795739357.7420.16580548113189193566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2d728c412221b89a204a871faf950b61a831d759afa1fe942de1bfdf7ecfe1
Date: Mon, 15 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757957393
