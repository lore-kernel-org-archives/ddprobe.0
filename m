Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1918222F77B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761569394; cv=none; b=dd08kZOG8VgzlrL6IuCHmBnQVIpO1nLgjsJENcCvzx4NpNAXGjXM8PDdcNgBecoqs1/mZGvSQQyM9wSjxtno6TVfTvZLVusvTi8OB5qVuyy71LVoeAPYLW1uSfWsygWo+LEFnffuU02RgViCM+Wt7Jdz3f+oGh788gd8SPJE8PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761569394; c=relaxed/simple;
	bh=x76XBA2gvbtQOd5qyi5jSZR6gqT07uBHl475xYWk+y0=;
	h=To:Subject:From:Message-Id:Date; b=saT1CZv4fUsxrDYpD07DIfT67IaEin6CZXBiVsq5DCjqV/sTaPYYNaz7S0FyokTbNi1QXUZscBWCG5H8Ep5WyrU1VA/NXu56uPuan6WmKQX8MLjNBiuyLPwP9FOkOuvwUKa4tsypdWeew0c+KpX6DFIGynEKayzzztmjR1atdgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgrTu+cn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgrTu+cn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6F5C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761569393;
	bh=x76XBA2gvbtQOd5qyi5jSZR6gqT07uBHl475xYWk+y0=;
	h=To:Subject:From:Date:From;
	b=IgrTu+cnOYA4oA6GCP4dneatL+DS5haueEsdtj13PhSxyVXoTVeW3gEV3X0lanH2M
	 NAcmotbIVDJ9wm9Xmhtto4vHam3Ht6XQOoyINExVl1Zv+m8GPhdoTZKfmKxEWQKPx3
	 5nk92IYqh5U8zu7NpinWDXNkn0J7VDsmRbtwf+5eEBwJiFDaaclntbVBu1l5JHfjzF
	 PKfsSU9eBvZLau9LPJ5gX9lrqOvx9++3hG54YpMQkgiHYkj9pMO7GRYzmRH1YXqxTq
	 VC42XDdWGXQFTPl1e0o6Sdx5/mzdMybvvKqvz0v1YJ9Y28ckE2MrZznlGKb4eE73ad
	 e81dH9KcT/ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD1BCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156939363.4340.16029183912028670809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec945836c0f7a491b61eb5d0a58f756567ea995d3d5ca874f722e983490e429b
Date: Mon, 27 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761569393
