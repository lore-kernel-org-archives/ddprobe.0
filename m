Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C40288CC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749615595; cv=none; b=kRJIL5B5KaC4C432mk2tw1NWXvlAZPiiK7nkZyQAORjIT46Rev2alCCvHMxdSD49XumxReeRHgtv9v6lDyEbFw4ji4IedhdqUC267HTp3OUDqh0OIF6R/0q+8wFx6zNnGSWkQXb3uzh5IC1xo+If/+ejuxjvgvXc8coLbqFaSRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749615595; c=relaxed/simple;
	bh=9P7nSIdZ7Hr2FVqPcE3sT9vJ75js2n+jvX6TRMFH8VQ=;
	h=To:Subject:From:Message-Id:Date; b=WK/80ZTBG6d4uyPkkS4zlv7nbMQa4+2MWpOhtr2VtVgsgpWvIepR2JddPin7+uBYfg8yqwIG5f7L5zsHfoiG+BRlXZTPQhV3brkjyoAR6CoLdapeR8FtEaVcMUd78S2TKGfXZ4WwpbSxOz4iMvH23tzvUA+iSAmltLR/0EPADKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jexUrKEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jexUrKEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAABBC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749615593;
	bh=9P7nSIdZ7Hr2FVqPcE3sT9vJ75js2n+jvX6TRMFH8VQ=;
	h=To:Subject:From:Date:From;
	b=jexUrKEWlwapSuYVziHdYGOvUEpne9NuG9jjlsMyL2bCfMFZdAbmPPXEX9rAswOZg
	 Y+ZFixpyhkxI8x5UzP/1ZEH3jJek+lkuAY65pXQyOyN16KFfZg7yhj6ADPUOc0lw0P
	 fOmQndBU9XV4N5sybnctEWMbkedz9zIPtd+31tg8sU38pQefW6z88Js7xe01SxfFBj
	 LKk/zZwdVu/uj9uqrmf2lcwJkpNi/pG1Vzqlb0zXLfdKTHNXRg3CgorJ6QqWgL/Iel
	 kFf+vFbhbD9ue0cCw5sqC1W0HWcnA6JuLfIVmYed2jzxtrDXHX8ltJxeb5r9Fyd953
	 A7loc/d4D3gTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A291BC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961559362.15768.9249544341704680180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a239f8839fe4c2c47cef59b6880c5481003ca1df6535f16064bfa4070b14760b
Date: Wed, 11 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749615593
