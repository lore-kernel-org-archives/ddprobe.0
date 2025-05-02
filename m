Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D98E158DA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746164394; cv=none; b=KdZwyxCLVVxr2X0KYaIU0h+MkOUGgVcBN6XPa+xDrnu3uqlwI2sNJ9H8o3h0TejhASBmnxlrBLJTzNTW8dB/AA+5SsfKXK2Izzp7/GanTKjs55cySt3zHkUGPtkGz6bEqr9TJSkW1JkT7ZXdKTLz+COqhCqgZnuxVHqTe4gOunI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746164394; c=relaxed/simple;
	bh=QkuUmEdQX22V7wHWlT6ft1o27hxJeyh1+NqlU4167eY=;
	h=To:Subject:From:Message-Id:Date; b=bxjzeLm8HfLg+mBYs5oKMNBth+6C/ukx97tivKlY/3ErH6nBwr7FiWkZqcrog2RA95UBE8dHF2u49EACTkjUiIHrmLIh+rQVP3J81W11k/2feEqo8qy6KNfG5BU6eqvwXs8OLCXtAnpdubL82K+OmZMXlOopAzqNcuj4W2IsKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgM54AmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgM54AmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6428C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746164393;
	bh=QkuUmEdQX22V7wHWlT6ft1o27hxJeyh1+NqlU4167eY=;
	h=To:Subject:From:Date:From;
	b=dgM54AmKwyN5yR55ntc3SF4KIBe7/XCpvX0JRohP0BI14A+GhxSAUY8tttWUIu5x4
	 dGHj912ahi3XU4WKfUZHhL2XYPL5Y2nezmfqkTrKx68mcsiW55kTIBM8srE1Tlx3EP
	 tiZnQmQtoHlhl10FgeIyJy2VrLpgokvJJhHcsHZxEPQzOKtPug/CZZX02WJKPJlVb8
	 0zt4yqkahukdlYioHeUHiMGxG53Gjw3TqsHkM7aKvFwJcaxPzgsy2DxfrA3pjhp7/C
	 iIDWUhBBwqL4/kaxc7kNtD/i8+bt4pRAZX0xEAjSqmfj2ak3Z5D8FO3Wq3vBBtAl76
	 xAVPuIZpZhMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155EC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616439357.22582.6920670826264512024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e786c50ab12171276b794608a0973e60cb4ff86e34badf5cc443147d2a02dfd6
Date: Fri, 02 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746164393
