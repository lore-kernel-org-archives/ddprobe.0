Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9E4134BD
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728927954; cv=none; b=mKNkBn9oRXL/XVqmz4jIw4ttw4cxZ3RxpX7JGsaDCULP/YqsfVNNfc/NHH2qhL0At2un4khtrikjc5sU26o9bPKD/4DgooKpDuYhBXsbzX+FxAe+/leWy2jfdwu98kfkq93N/RYsy5LaJiiAB9SIv72yjtpcEq/zfU3AvNVd+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728927954; c=relaxed/simple;
	bh=K28+gzntJpwioSnKQPK3uCs7oC60yo8lwNBYO1E6bck=;
	h=To:Subject:From:Message-Id:Date; b=pi/4q3OAxVer91QL57XeaKeYecWR5w4rWqJOnZfOnuwW6tVcApowwqiuDOmbYflKHSgadTn7FDIxoD2cMAJbASmN+ZECz4a2y1cY0TorGVhXzOR79H6ShqFBNIp9zUl2nua/L30Tm4dEfjhrAr5+ea2iPoQXaMcMvmaJtX4g+C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpdXFvbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpdXFvbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17C2C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728927953;
	bh=K28+gzntJpwioSnKQPK3uCs7oC60yo8lwNBYO1E6bck=;
	h=To:Subject:From:Date:From;
	b=bpdXFvbL53WN2xNP+jhm+tW0f9ucfWwCopyByrQiRF8fgmCRcVyuPUSV1f3HR5T1A
	 xBA58BNcCcKWESuJy3fvXXh24E+SMXdxrNXOriuBJDSeuv3C5O10GtxFunOpMdo+bk
	 aZ7xQvEsKBxorUIam1xRoHwYfIWYR6lxLiB30prP2I75iVLf4nyivZd146pBCUiNU2
	 Q48G7AIfGEOBP4Y6b3c7lKWTDmrTNffGSRni6c59OY8nIAmcGgig5fa9hKLl0LOhZb
	 ITUBIt//IVfBjiX+HQgV7nJfc7fFq5zdlePBBxl+tX5aKY1zf5if8aoXkrPr5rPY+X
	 vh9Nh9xkxDRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E87D18138
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892795365.15637.16240063301425201923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2bdaeef319b53608454d77d9a3c3f0d370a5b8561891a66756b9ac8b0a6d892
Date: Mon, 14 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728927953
