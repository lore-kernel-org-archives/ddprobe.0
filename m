Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30648220F4F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756249794; cv=none; b=jcMMWINpBiwXKLWqWgF0DbMkZqnsIwHwChaPootKi6SZwP5qGfS/6Vte850IfMtCKTLWY+D8UeV1Nnxau4xNK0Z1uALLXgu3ISkzo3R1HeErQwvoc4a1EUgh3IYSGJXq3xgWcGdVsdHANdBUZVs5549r6+zT6ue3glFLoY/N1c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756249794; c=relaxed/simple;
	bh=BIk7M/Ao7AxWDBhmk46IUWfb/0mKX3gR3eoRu3N74UA=;
	h=To:Subject:From:Message-Id:Date; b=son/ZrnwXOLok2uPIvVo8m6TJdj3NhNvDt/GjEQmBYDOPi9qXZttr/YDippXsn+GmhYicgKwNtXDFBipVf9UJXKq4ffExYi0KC6rj9tWdxcjfAEU6MV37kNXIbQ/Z4JG9P7So9rZmhpx/YN5ABgkmLgJQ8W4yRaULGzViy3pSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1h+b43d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1h+b43d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C31BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756249793;
	bh=BIk7M/Ao7AxWDBhmk46IUWfb/0mKX3gR3eoRu3N74UA=;
	h=To:Subject:From:Date:From;
	b=k1h+b43dQgxFSSG421LLYIYlQE8qRq/aTolNqxS25a5mG1v0dwmhcU9kBb+yVloOU
	 YtM4zdmGgRors6/aaAkhlRvcOFhTLwaOHOrJUuUMzxwm+qzGcmYA/us4ASpj46daDU
	 P1l5yeVd7Fg9sxzCNegaJv2teCZ04NzKKYP9c/2QB38ERLs0hrm0YAE2bW9Wl9D49L
	 QWOcLJo35JiQgWLpLtI7HoSMLx8uiDhIo1YkpAhHq/EZCmfY+0/K+A1PsTrH+jUbNz
	 Uqban2YWawACHPbG0dcIK2sT6zI5NBvwJYMYydyMF4gOgTHtb6YDIwN3+tDdyq6m/r
	 GaDRcpQOBy8BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CFCA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624979357.1752.4268353771951898066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e5d44297299e6a1c3ed8d037db0506926e21d9ed7185b4a4d951929c7ed7ce
Date: Tue, 26 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756249793
