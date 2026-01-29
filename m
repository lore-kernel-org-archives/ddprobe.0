Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D33331234
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769702634; cv=none; b=NtUz5uzbTk5MGR6y7eTm5UxBzta7ifffLq2bY4rBp6agjYZhNXUty5hf3vZ1XuT6e+vgmy4TrsRujuyPVVh1NqHQaqPjY4c8bt4U5W60hbfa4Fj9jncJUFecNllDSzC8YiJotXgdiZWM9QfmwgdYQMHxOHD2nfRwOBVQ81hAMgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769702634; c=relaxed/simple;
	bh=x/c2B+vCwtPqVwi+TxfKrNp+evGx1RxVIiHPhVrPf3A=;
	h=To:Subject:From:Message-Id:Date; b=guPjEajuzOgIDTTqqkt4WEr9cPa69yHuaUUAI8+LGu6A3FHEZu3JKR16tii2CwQqX5+UZproLhbwH88u6Bw9VN9X5VMLkshTKWdvucyNeM8ihVq+LD8nq0yuHVWnubCfXed5zCTK1Zfb6ixiy2tCSg7qc9IgBsbIPIFjCUkWPdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5FpwVB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5FpwVB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB3C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769702633;
	bh=x/c2B+vCwtPqVwi+TxfKrNp+evGx1RxVIiHPhVrPf3A=;
	h=To:Subject:From:Date:From;
	b=E5FpwVB2Ax8ZqCkB7nNLBVBSSUQXPdOy4uamK9tM+2ryeUxGNDkBYBU9EsPE96jTV
	 qRpmGHWjIH5B+PBi5p77d5Sa4hjHctx5IqWf5HXhd7QdaXRt9Fotqj8ChYB3p0UDSD
	 uj+PUQB7EGDBGDi8NvtzSAJkT0wuctQpaEw6dVCIyum12Q5RzFK5qctFxMV/OlrdQK
	 GpRoglCzirPw/uJPUZGpWykHD1N/8bpgn8hzO5Izvp00Wy2btWyZtL8rzQztO6EyTW
	 frCBlewyBq9LAkACaEV0DJ+tqJhnJiw1yyOGsaagr7Q78nUR6ZbnHqSMykpxgckkJu
	 Jb5rW+FiOlQtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90761D6B084
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970263358.11702.17904057544898373075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0c7e10a33f2027d661c82515ef37d48be2f605ebb94f223674d9401c364d45
Date: Thu, 29 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769702633
