Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEB4386567
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775489134; cv=none; b=VRV9ClbPBoVjp9V9rv4+Kn5RlgPrkMvQWMjB5dULxBv/ntsuovlTKSLZO15tavCd/TSlwE/UCdMhDbOIccsjJd+u/ZHDCfUUBXvvm6ugyy21XedRCF3gDbsq2nU1UBUNRBotd/ypXyP1FqOW03VOx0/KlwkllQDaHfmV4QoVCIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775489134; c=relaxed/simple;
	bh=YeSIr+pljBCYrKfyan6tqGJ3yyN8cMDTLbPQsohMW8s=;
	h=To:Subject:From:Message-Id:Date; b=D4tKK0LeUzTZHG/FH1qdK6wdsb8l0IXqsp88HYt4RTGXKWGtwKFIqd2WBLHC5UHtD9dTbwUp4b1wtZ7WGNmVAJLa3Zh1r5MKNw71kVvylj1caG97wPLkgjCb7JH0I1JFoiAbKnOVKGLrKeYgIowI4iEicfWmsqIzfsP/cxzrXiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9dqzjnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9dqzjnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA37C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775489133;
	bh=YeSIr+pljBCYrKfyan6tqGJ3yyN8cMDTLbPQsohMW8s=;
	h=To:Subject:From:Date:From;
	b=l9dqzjnVxGtZHtn3hqE5P1au3Lb2It8J7LA5rI2NUBKtjDx0h4X9pVDaJDnBj2mCl
	 TOkBlFsoNaY1805ibyWCut8E6XNqmi5YBrqPM7H95Ca4XOymLG9qn7tzW4i/7gBNwR
	 HTdelXsXgWF2LNm6JR5x/qzhOq/vGSKFyYk1PrZCA/9dXPO/OA8jC9y9o4bQJMKcrA
	 azUmSt8O/kHSPEKUjmjy7Gr22bPfFJCYsqurfTlePAgovdx8OpOBQdzQjCU2mcOb+H
	 1Tt+gmjDQRHPfHK2ucSHoB31nMM05Bil8DUr3ngdQbggYyqSh2Fgzna5uzVeMjiViS
	 RRrth3WYVlaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF0F46C51
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548913369.11482.14117002296833432841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6a47c60fc79c8815e197fd4c703bec8c309332d1220ef6cc5f76fa3c751c2b
Date: Mon, 06 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775489133
