Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5798261B75
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756841993; cv=none; b=BP2PfOOU3O3DBY/03XtGJTk6BIEuvz5vZblmA8ATbr8+SnuDZuXyqNNwysSIuClSGT9Dlw+0osSaFEJMZvMpZhDD/YXwhqJ+QGWLg0TpHdrldPefeNlRyYBF3xLfCFhTiTaDXy3EdZ652TTEr91NdKlyvqyl45p5EfTJ6I9BPic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756841993; c=relaxed/simple;
	bh=prxzByfQvj8KUuwA1cY4wnxCXPsF9ebjo+uWsT8qMlg=;
	h=To:Subject:From:Message-Id:Date; b=GMlAwGDqRlcj8EXfju8l+/ODwGdSaO0o+8TCuxWkkE10vNuj/nVASMW7xGx8YPH6BbxPjzfpW9UzEJ8VYGkzbZRZVtxUJnQTu6dKcLW8VfqDstlXeNayrjTI5zku1Il3dYC5Eaa5auXdl3lkG+mgwsMW3/rJhrahDhSWvfPZAlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbxMi2g5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbxMi2g5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756841993;
	bh=prxzByfQvj8KUuwA1cY4wnxCXPsF9ebjo+uWsT8qMlg=;
	h=To:Subject:From:Date:From;
	b=YbxMi2g5nFXDiMWuEhIK/fU77cvcgKYficZeYxGc4E3ivv8Md6Ixxp+WMYWrOkiUC
	 FPwtbKuTJMbgoGlSwdu60xRKMjFsljuSFe4ZOLe3f0QVpU2CDTPYw/2whi2p5992n3
	 ouiawB6nLxRv61tZp9A6/pv/QEr5f1nyol1kgbvRoqrElDnT7fxPsU4veh2E16uftI
	 IpgBAU9aI1pXoKU1rYdC46o3ewnljGN9YdxQOfu/YU5Bh+RQocljlndFeIEYpr1oSg
	 yjEzhqPaNLBfFEoLwSRL+0fCuiUNP+an6jdp+7gOqSV8bcPJcA3w1K0yWYERCVaOd5
	 r9kl2sJi2ZCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92359CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684199357.15787.6289993586415276355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20da6a33eba44a8b5efb2024f57c960c8102b2599c816ce61e2fff6d3da6386e
Date: Tue, 02 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756841993
