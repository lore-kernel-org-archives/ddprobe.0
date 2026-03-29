Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D65035B63B
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774817694; cv=none; b=Lzt9gJWnt0QmlYseZNgSTJHHHVsjGvnR6juZjhn1NBQc+yimktk7IBw9Walm4362K/2Kwd2IR2uuo+Kv0061c1UI+WsBZL0WBFpxM5YM0OznVEU+tsePjZbKKfBiVYBo/RnytfkWC5zTAJqivZFp+7w4ho23qbfVT1T5B0jLtG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774817694; c=relaxed/simple;
	bh=fx96/9S4kbLKCty34fObKqv64IbxxrvfKf6v0yeSrNM=;
	h=To:Subject:From:Message-Id:Date; b=qcOG6w6rlppo9OP1sDlWSM9HJ5Ww6dyJ19rLIFg1urMy9M+enovq70QZPe0laKQNi+25rPNSli23QTlE6fBj0ipJssjtBMvZ1Vnl1hxST+mH7e5v99rK24rhttPjaymzUu9v8om/2GrWOvGbKzOXiltMnQbV3C6EM8wZkZZ1Yag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY9i8RjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY9i8RjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510AC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774817693;
	bh=fx96/9S4kbLKCty34fObKqv64IbxxrvfKf6v0yeSrNM=;
	h=To:Subject:From:Date:From;
	b=DY9i8RjFW1J9Kizx0kUtWt38bZEqhCehb698JbYMlK4P/CiulsQ3tjZCYBNFKLm8L
	 pZHHJW8dEAQzgjso/pY5oo8tgt7y4e/hIXnNROnEvv7oISQGBfIyORjZZYZlXiP1va
	 Y6P/rv6KW7hZZlsy4DT38mUJiVkPcj0eKcf71t7/qhzXXtQe+BNVRFy+UYXQq/1dcS
	 OPZ/hOf2b+YbXtMBt+eDqdvbkSSL6UdONaMdoYMcQQcRhqCkfJ2qVMXjF08cJ4s/Fa
	 78LI6D+MWhB2oGTHuVxCUEkxW+FZvgb/yzgm5qRaN+i84TdhY8Spqs2Uzp9Vd6/PRj
	 qeLrKUBb2XJXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2EFC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481769358.30318.8787415315909124232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85c9a50f5d4cb1b3d9263b7e9bb122d9c209ca8695c1e8b1a2966aee6196bc3
Date: Sun, 29 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774817693
