Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0FB2561AE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760981994; cv=none; b=OH7LFGg9N0Y6EtvnRMltau+Wjr3Nxialcz09F0NsI4fm4/LFm7WpiAI4KQGK70KbLJ1ysQafBRX9OtRT2jZd2MAyWdBn5zydcMOeMeSj0bh5sDjqf22tJ1GbqkuqugSZgAbgEaZH4RhEDNtwoP+yt3nYtusCi7ZASyaZApgXgWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760981994; c=relaxed/simple;
	bh=HN0ExNViA48sjPNBVIPKhuKY46cfQKWQb7cpFHFxUdE=;
	h=To:Subject:From:Message-Id:Date; b=ABUJRHsVzG3gDz/jTOAd4UKwNCmonC4dVHjDC8WofiMEDxW2PZ1tBMvIc43yWNu+9ULxxhHlNWgq++sYlv0MlHU+5XjhBp+aWLqrZJKOPqD11PUCXrAByIqsLFK55NNjkHqM+KheuceCDi+GNfb/l7dBYHrBADn3TMxftQgEJwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9QXWAAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9QXWAAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A85C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760981993;
	bh=HN0ExNViA48sjPNBVIPKhuKY46cfQKWQb7cpFHFxUdE=;
	h=To:Subject:From:Date:From;
	b=p9QXWAAzInXXPm/+0CRXEC6R4dwaxFRV1uZ7PL4PYog0J1eDJacslOgREkSfQDNKg
	 6mfabajJJadpTgkZMqDiLU0FHH1SSj4by61K11DsN2xj5pfdiQPf5U2DMlOyYZleIc
	 EnbZYYbsnw3lrP/s6TG5Qp1MGjnwy6sFSuavyFyVcxIWYaJP+CMhCT2bvcmZa3pYF1
	 UCzb4nklMiTQ2GRCw13vCZ6m7QWfLcvze5juZTnSDh3MKg/H/gB2+0nbgrEnQ+pGrL
	 x6/IAFJXRM9nc9tb0jgRqs5UEuU9cXXBLJqKu5jGp8u2Q/UGC9fqXQxx29/vmYpj3Y
	 OhyVG+8/T0dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90766CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098199358.15712.8769628002870233820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177bb50f1e755119ae039bc2000292fd703839f0d3835cfa97e3b28a60c4ff28
Date: Mon, 20 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760981993
