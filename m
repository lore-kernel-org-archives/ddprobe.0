Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21373156CA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754231994; cv=none; b=j5gHw17FvGQkdA7uJVjCHYKygohZYdCjvqqtj08P2qHnIApZjBR/WB55+553LHE9CBKunoq/GLZJmTt29o/uEsDmzQ0RLoo48LN/F+y1Lde4PILx9yhmeFmdoEWyyyxM8wMUZ8lybz2uSp+aZGouKbdBPA0n3vHWLv7bM5NnGCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754231994; c=relaxed/simple;
	bh=gEFyhOZ0dJYMYCqbx6n9lQ1cN+bGA6N/HJ/uBrC0N7k=;
	h=To:Subject:From:Message-Id:Date; b=n617R+/8KfK4IIUyR6OfrbflKDfoc7AmG+VwSXO7TyTI043BmW+fk7GpQRAMYYxorL54Hj9FJV032DaWDjY36TITUFLjobOBKXP8bVwZRdrDbwnVCQv6nGaYSiXwL6vAIlPEi6HWKqJYlRbhM9qwCKdys1ytm5JyFIvz/Sn8dnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPOibONd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPOibONd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9893C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754231993;
	bh=gEFyhOZ0dJYMYCqbx6n9lQ1cN+bGA6N/HJ/uBrC0N7k=;
	h=To:Subject:From:Date:From;
	b=hPOibONd6NasFIl+4KsgMINdGv68hjfW4VmHMD9tvo0JVXDhAGAtveG1AacWRhcim
	 rPuTcg+1qoZkrWD+lbnef3Vm1WJMLXjOO6c6/RqDp9akqVCg9y02rZckR9lx8fXAR+
	 HuNX5307nojGaBGlPs2BD63tO0vIGoHALqy5n1DptNBhtex5lkQXaiSrkYivqg0bIu
	 IwMMrsbuO9LJmEHuZeCfR/kkPX64bxuI4oH+0NSkiya5HJTe2A8+MY+i7vng7SCu3y
	 n4JuK1Uzvl9KC/3AmrWAZs+Qkc1T6tC93KGcx9CRxc6uauINBDoFbu9qE+lTuYWBoS
	 b/bdSP1giFztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D81C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423199359.4952.12991086517992655419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d130fbece6086cb51a657c91bc1008562000b330929a694ad96805b961f5a8a8
Date: Sun, 03 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754231993
