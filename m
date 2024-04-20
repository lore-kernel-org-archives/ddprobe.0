Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B714623
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713572423; cv=none; b=h0yg93Gl11/uVNbkIf4wr5WKYWeFrmMrYHNrmeX0eAPmnDsTxwMV+2p62+OsX+o/Yg1fZXJVmzMEn5DNkQg9Pd6Z0a+AXb8sCs9jFOj8I8RQyAGAVkvfpN4eCFfABpdebtUtSmrmQlVnW2yfbZL75/wU7Hfur/SDA8uEC/3D044=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713572423; c=relaxed/simple;
	bh=FHLjDIfcU4YSeWgC5xnFjG5LfgoVgQh8n0mBg7CKZeo=;
	h=To:Subject:From:Message-Id:Date; b=cVseJsLb+srPW9mFSJ/5SKyQz67G3ggaILuQGlYz0oMq12zZOyJKCdSDnOf3usX88MIys5ICbcsO2GdjPX3tCMJh/6tucxPOTgejDbyiDLaxJpweKmPEodsDk1eyDlQI0eJvVi5snWHIj2CbvT/4O8x8NqkLgKkg9WjwbBuri1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0wpVamu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0wpVamu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4617C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713572422;
	bh=FHLjDIfcU4YSeWgC5xnFjG5LfgoVgQh8n0mBg7CKZeo=;
	h=To:Subject:From:Date:From;
	b=W0wpVamuEPy+ufUmt0XMTZCc2+kME2hQpKwHgoLmCHFZeaGWSrjpfXTS9rp7sqTKP
	 6vf/eKSj+ejT0nz9jLK14vdPt8HlZouXQkJgZBVvhEFnrmEkyJN3l07Qx2Lwt6mc0g
	 mEOkgrAr+qrf/zCxs1w4o873gdZyZrM0xe2nnXa6ZMneysnHWvjPj5to6lTnwMxSMe
	 0Y/K/i4+o1J7TvJpwVeSfZvoIJDBAODIR+AXw0BmTrln9eYyWiDDiG38ETzZPHsSDC
	 YewMqsGvTzjXV2Jzgv/6ehKAkm0FH6mMNgw9QmrFxg21gSxoyIdp0o8JpLkdGqPkiK
	 TTv0q8xXkEoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74D8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357242280.20232.14535603770290647704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7fc1cd6b35de312dc09ad4cd0b6c2ca5faed3b72ceb56ca39bdfe1ca54c11b
Date: Sat, 20 Apr 2024 00:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713572422
