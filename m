Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1000023BD0E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750672794; cv=none; b=jtg2KcrODdWTHD8jYhfF9xrgKMVIE5naReku6Xlx8oXvOJshoHdhbMghwjl9hw8zPfaMOdi3HSlN5EjdSSjkn5CFpchMSvbCqPSEpT0oKlN4Qz+El/daJJdkuWx5LFFm9rX+IuLlg7g/Df1h5w2T2EawnDBXOaGxuD9XwM1bNaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750672794; c=relaxed/simple;
	bh=FzKU5LAtvgs5QEz2qnTaWbgf/wDBxFVSccu6N4qm+FE=;
	h=To:Subject:From:Message-Id:Date; b=YU3K8KIPuZhegMu4PVDV7rWz7wFWIOx6vmBTfVRdT1P7zen77P7zhxwd3VkefF5Tu/3uAA+wJkD7d7dyGm2tkkxmtXq2uyXnZ0r0G06cu8jMTuw9BeDWi+IOYoAjNK2uLD9LQOxCX2Yjmy7DSACsVE1kiosYG5ADcCHgKGqoG1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no7eYYrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no7eYYrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2418C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750672793;
	bh=FzKU5LAtvgs5QEz2qnTaWbgf/wDBxFVSccu6N4qm+FE=;
	h=To:Subject:From:Date:From;
	b=no7eYYrOGXXYoOdFTd86siSrAsv/3TEFHRtZtBm8t/u6TSqzGsGcVSpk9+PZSQ5qX
	 A8ymstFkHw/D72W6onhPanW0QSDvMNh/g+X41GPxLWmFK7HMiOyJr8j+nRakQQqjZh
	 Evyu4ACHmVWbGm3AEzV2sckf5dYrDrTAGVYAPcaP47Wa74xu3QWs8HoaMh5zKhqlU/
	 YWmsYt8NLqJ54xAoQEpiCCbInXrQRhe6olae6KGZjhR6bKgvN/dFyduogPrl31hNrE
	 RSeHNmBYiacgTlvGdvuwBxdnP/WTEa9m/Rb2+BybaaoAl7DfY13tjJiHWihAAdGXrb
	 9kCLZt/Ef6cHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAABC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067279357.13247.5152376975207432024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84e429500a2fb0b9ec056b80d20e2f3d06706d09e6ccf765a3e06b10f60ddb7
Date: Mon, 23 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750672793
