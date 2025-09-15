Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A22DC790
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757902794; cv=none; b=R1qnCSOPh5Px0VmbYeQ9bnXFrCc2yvKOdp1pFU4UPT8UU3dQH4AzfePTvbB3wnr/uskQzCIkBP1bajFY19GsNi6m8dsGS670aGh7GeLeSJt1u7VBro1+1ku2BrLVm7WjjdsOaHWDCfIDuP3L9bkU3H1+J4817KN0D/OsxKJbDdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757902794; c=relaxed/simple;
	bh=Vc704Xxbe+FNhDRqVjqmo+CuRykYQ+o5sbr0LztDSE4=;
	h=To:Subject:From:Message-Id:Date; b=NbF7uM9TUMwUONihFEfwr+GE75TVWz3oM1YaPE1Cz4xZFQeW+qixNLU33KllXQD8a9fmzCwQXCjXxVmvFwgy3tTZJLIy4Z7rmnZc0+F7llccEGJ8NqBswMeuilaHpwur9QKhWdaLdKNOiiCVxshmUfKv0tAdhGpU77JpyAZnZzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aII3fqxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aII3fqxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA677C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757902793;
	bh=Vc704Xxbe+FNhDRqVjqmo+CuRykYQ+o5sbr0LztDSE4=;
	h=To:Subject:From:Date:From;
	b=aII3fqxsMuzaBu+dQr0qTWmSfnCZpMKnAsrA32NY9oV0CPP/AZoPYltMGWivOPMlF
	 xM932wQZNU6yp43qO5fGhZh/JST7KNLWQV+rVj269tA16PXUGTn1rfuK1XrvAKk+YB
	 E06kdoead5KXlDFEqXovFIOQHtrQ5/TvANtt/tvSFuQkz5bB837BsvwEYYhoM9YcqO
	 eh9DGKnWByGTd2uQHZVzt5KXAbtc7ZiPRTUz/u9KlEZxN5DC9Bqx1sJ7mviKAokC/v
	 4L4ndqAfAmdbzjSZOUJKqcFt4Y/cndv7e7FMQ/rJ/q+mvfbkPnkuaGyiocxoHBg28l
	 CXOG1mXdtgOcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95387CAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790279358.6018.15889906755966915970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448b4398390a140d03e0f8d876cbf694d6f643d609dac3aa6651b54afb31a1be
Date: Mon, 15 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757902793
