Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D43A8F7
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760633394; cv=none; b=UA9deOcPjlb0Fg/4pPrriCLUourzg3m3HZak5c4kv3LEBFjxjBQnyqrOPGtfxU9epPx7bg47fOO7hsCdj9m6d0Qot4AGVEBnnKVD5MeOsbZ7LrqOxTLe4Y5ddFg7/UosYx5dwEBEvuytvfPf5NLtp34rqXksieh6kbR16s9NPJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760633394; c=relaxed/simple;
	bh=bRW1sdffMjOkWyXQG15F09LPGu3O04cUbEzvHqJZ1Q4=;
	h=To:Subject:From:Message-Id:Date; b=XBs23VcEJtiqOrtpZrGMe2/gQtCkgiNm+YVsMpU4PLPuUpac5qaTIT5Y+kYWkCax1yfgc7xeRU4+dpL2+UhtNxNH3t3h8aHHvZ5b6bDsxzWGjz3Brsd1iu42XCQpy6x7fOHzhkaQhhZqyrJKe4tEvI2BzbfVmafCv8qufc5VyLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjcTPWlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjcTPWlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760633393;
	bh=bRW1sdffMjOkWyXQG15F09LPGu3O04cUbEzvHqJZ1Q4=;
	h=To:Subject:From:Date:From;
	b=tjcTPWlOj49TA/I2aB4MpFF7M9E3btXeKHuPT+eW4DeAsnrqYRZ01O2ov9wsO2wqY
	 KcHRGg7QIiBwg3Htx2pUnvUrCOK9rgNzc3MRzNxBs3iIdAogNb5GTPlRbF1C8LKXUT
	 z4xuNFdfYOAs00LT1DFmBmcMI39szj25DOazZ4fiMoDw5j3HSId+m3+JVMnw4B6Gt7
	 bBlB3C0vKg6NQbgplHA1Bc1glpiSiYNI6VpV/yYLl9NYz+8uziASDtN6lxRlIeKDq8
	 0XB+YFnlGLWoYQfdsEG6jBPuupNHSfEVoVv69pc+6ALhaJdWXV1JoajMVXc/vWRDzg
	 ZtjqPvgXDSBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58CCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063339357.1540.1161462580498980175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902cb4f9bffd60617d14351b3f53e1971c01df3fec304d3d3c638c2689688d46
Date: Thu, 16 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760633393
