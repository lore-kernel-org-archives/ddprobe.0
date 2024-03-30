Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0717A801
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711763897; cv=none; b=ADlHg9bAWPiDk86U0CgR8Zh2FCBC0ZllZpj+7xCHLzyoDHfAGTFTW98cAwSXoJaRwSjsNtS+etctJTkdgDLLtjNS5OKoBF35iUwfrZTXi+2QiT+cNrM9PN7e4MOl7euURZy19vk5e6OqcfWosiwstJcuslML3WVWTR8qb02MbeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711763897; c=relaxed/simple;
	bh=xgk4CaV+GM1uDLARVz9hLsHFqBoCo7BOiP+RTw6OmgQ=;
	h=To:Subject:From:Message-Id:Date; b=TAKC3ZUo1pcXOBTS4IPClN5+sfqKYexk4rnjgV1vOqQ06/tXYGxS7QmoXl9IA3wKhstZNGr9Y5RhEciW/SL1CXwzy06w/f9/wyjdjhLxJQDEeVQPSfyi0vqf3jvL2Ph65DlfNy5ACYF5srdNOQkQF91EET8HUQQWxshYrtF93Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOEKnLxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOEKnLxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5F5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711763896;
	bh=xgk4CaV+GM1uDLARVz9hLsHFqBoCo7BOiP+RTw6OmgQ=;
	h=To:Subject:From:Date:From;
	b=FOEKnLxsNXWOPc97R7AYChWrdKsnOrLQQw2PQqxEpBlsh+hNhFyYx+hMTXhiBAxUi
	 +RzKYuYpt6gRQvOy4NRB+XgiRcLC1uYRb12Sn66CL30VN6PhKk8eiY9FZJenNyiMZA
	 O9WONg5Ft2qmHB60iU1xNKqbHJxE/gI6hjT2jivmHav5spTOy4DLXq2qcI+0XDxFk+
	 mcS6wJSGu8H1W/TXvNiaBeMUX/4tPXtg22lQw0POGSW0SY2U6RREO5Gz/6wYcSzXdo
	 pQF1qni9PxffA5q6LQGNEkxa3AB3ZwIFhcc6IORlgrL4Zn6eR1cUKDC41PBu2TNbRP
	 WQDGa5hzBGBtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4DECD1283
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176389641.26826.12910064022092795235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11efc21bd925b036a3b70b9655ceeec57696b170775f1cd821e83b172ff78718
Date: Sat, 30 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711763896
