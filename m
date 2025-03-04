Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A366AAD
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741049334; cv=none; b=qgRkGKYLI06S7pzHiNgBSvIVhp9KNBhM2LH6cdWE2NOqZKtJyZcTb/tflmUiEsPCGI4lC/nOjj8pUCbd8NjnWHbOqGGuwDt+XysD4qzcwPAJXp6FmX9yx7XphraN8rA19c2L0QhcikxXM4ZajHQFPw9By8ci8bpjqX9GOJuoyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741049334; c=relaxed/simple;
	bh=WvgvN6OdGScJILGf4Xv+4nHlCaPHtAfg5PM94gPdQwM=;
	h=To:Subject:From:Message-Id:Date; b=c+iXcnxtf2Dq0J7q1/Xig6gP79Y6NLm+sXnQYHqFnHRJv39z9vpgPr0u23cCtFLIFJ3/4I2QiMT8cP5Q7VBlqq2mksb7ppdJfvc8bZWm58UZhLDX6xzBHAbVDfEe29sn1jdCqaASqjh1ASMTyiLoqGXDghyKR69izqD50Co8JRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mElUey+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mElUey+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C2FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741049333;
	bh=WvgvN6OdGScJILGf4Xv+4nHlCaPHtAfg5PM94gPdQwM=;
	h=To:Subject:From:Date:From;
	b=mElUey+to5MVppPqcjPt13UD8HdaJ4orjM/9nDQJp3CelBB9CU9kK4bwVGRs3MaBg
	 vshponP6rCoTWKjNEsHKwhXu+YFIPjUPzYTdIBGqE2t6xsISToIoIgG5BZeunwY22q
	 HS67zVOL1sl2hTKGH9T3e7NTopqkeBNRI8k7jQAoSdK2XK9RUJQa5SJveEcu7Bt72Z
	 D6a9gYivgNXQGiZu7hJ6nnteTaStMksxOXlaVMjoMvDCkKR7MSfLxeNIyPoU66AHUa
	 2YzGRwA72wi4sHZDTm80zTu/I9KC6eFcUWG/xiSgtI5VQPukPTN+cZB+D8G0esKtud
	 qT8lSmm22HX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E78C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104933364.8262.8479776005011169119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d131630d60deb88cb537164c64e48924469a20aae3d5d92569b1d55734aec94f
Date: Tue, 04 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741049333
