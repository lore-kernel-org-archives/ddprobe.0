Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A2928EA
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745677194; cv=none; b=THs+O/DHd5Sf3CfRCvaBEHFVu+0I5VN43BZuyo5AnQcvZOsccu8ygsuCshiMNcnfJz6F/wsRK8DpAJeoamogQQbqM5u7xZt94Ap2kSWYH0elBlyaXeSm3TjadsreR5XIvIWwMyceNc54rWFq2AsiYmqgHEcf6k45wcdo2W1HZHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745677194; c=relaxed/simple;
	bh=g031Ws45ByoD8GHYaCCKy2v2xgTAdrIvNclc+YdHdS0=;
	h=To:Subject:From:Message-Id:Date; b=YyeMdI7yc1PCIJeYjv6HXg5A6ISf7ZKQB7crNEMWXx7/Oppm2AIv3esbJU/zmWyJKuV1bQLudiBqUJGfuJIRHzhVwJX4qP3oan0QOIEfm8RE7+v9ROacJ1kTnpcZOhi1XwWAXa7IphzUUxic6rLthhScEByuBFhv/scXlhwJ3Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sV8oap34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV8oap34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27AEC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745677193;
	bh=g031Ws45ByoD8GHYaCCKy2v2xgTAdrIvNclc+YdHdS0=;
	h=To:Subject:From:Date:From;
	b=sV8oap34RhJf4f+Nq4GllRnchsDwhSVjJ5YhaJg4fmYEMVvR7J2C2KOk0sOlG5xKo
	 QuIxRxzVo71hDI/dn3r8dFlzXQz2R/3eUm9x/cdxlGEMBb3kU9k8miYEYshCn1wKiA
	 6b7dZ10/e9D0QmzdpT23w7OpQsMVeu4o9WUW5CHP+gxZ2Xc1muzFhVrZeE4/UxCPko
	 AZJ3VXFppK1lLzxMJejyjHDgDPfChDFvr6TKHpHSP8Wc+J2GMUjK/JEIqV1gLsmwuF
	 r9XWf6ijDou3ZDnDXsGthJ8fvOqbX32yyeIH3Nf8At9yiYjj2IK2utQ9YvYY5uQuan
	 uTvE4LL89Hkpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91440C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567719357.15935.151107805579608594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e96606168c7d26da430ba1e0a601af6491f9945463e6a82948f6ce21ccfd0d
Date: Sat, 26 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745677193
