Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043DA3382CF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773634494; cv=none; b=pNm6LXQ0hDxQ3QLw/3x0Ba7ZkS5DTSh5uZml7QrQXMIfCImigKkIOqzEy06mgh2Lmr+ClpHaAISaW39C9XV4tLKN1seYRynq8d/bN3WwgL1dS++67+9AwqZbPB8n2eZh+4a26yqabITRUVMZ+ew+t0MUEGULiV4GS/t/Oqgjyec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773634494; c=relaxed/simple;
	bh=E+fgAUq2BOsIf6KTcK/FY4XzFs5GgO0n7k/BEFsmQAg=;
	h=To:Subject:From:Message-Id:Date; b=SIfnl59iFCC1uIzSZdnh4jDpVJtvmuj/YjTopfVGtUTg/rjOnpgrSd2w7y/CQ4mSjeBqqyw1nh2WOUVl0jrjk/rpbiIRb+y8sD+NhJS6kNPHyDCZpNe9IHaFnm6FiwcZ9aF+BPOmGkLnQ1FjCc+0NLKH6tgz9WfeCqBpNx3Jpjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHY97SoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHY97SoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A605DC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773634493;
	bh=E+fgAUq2BOsIf6KTcK/FY4XzFs5GgO0n7k/BEFsmQAg=;
	h=To:Subject:From:Date:From;
	b=pHY97SoCXvDKv9YUu/oEONm8ZSqz+cEG7cn4WKIh3pyFZQkTF0ZNYaFa6T3/OzRzj
	 +EO2Cs4uT8OVlntukxr3JBx1Xur4Bk+qkJMlLkyZsWEkJ6ClRBQTvXRmB8fkzOJ7yt
	 V/0l3uNTPx3jBKSvx2OIrvyd2UoML+WlaGl7jllG9K4JEKkWURdhnQWxgXAufBIalC
	 lO7iGlDdx+5QUJuQPbOPIWGLuIBHB3eLqKkvL2cQi5J9uIv+zvo57TjeJPgRgCiSa1
	 s+2SedeMt9Uh3qCTBW+zFkJl8RvkexdoVcZ56OpJj5IlyV+75x5izZTjZeZ9Oh2m4R
	 6ObvVR9t61V7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B06D58B0D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363449357.660.5521363076544059498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ae619d39ee5cc99ef14ec7ed1564274cbd7df7f5ae0976cc7f4cf8a1e72dac
Date: Mon, 16 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773634493
