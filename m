Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125DD202C5C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765914234; cv=none; b=UdGqE6N30hz3Ren/6NnCEa/J0BE2CKzZcH3eqWlq9s7dHLUxfESv3fn5CxPV9wx7tflcJ9DiAwN1i/A5Sir4OCBdI6+BkYrn36XhcaStLj37WiUpU5zJVwtQ+l76JfVtPL3g+5fhxY2NdBld8vhhTFpR/UTHjChENaekcnNsdMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765914234; c=relaxed/simple;
	bh=axUjtgDaQNq6iBLQbNdc95/dLj2vYfSyiSx5qwjGJUQ=;
	h=To:Subject:From:Message-Id:Date; b=q+3kLvdk9e1oo4Ave5AxuyKipJ1XPWjeeFsOxxlv9zGlfkhwykMesJxV5IRBchGGGgkeGfZw/k9nBYJ2qlLKdY7sWYQ+fnf1KdnPtKfj1+Ew/2+WGxPgxpm/KTkirAw3dCt4n2T4fOskPEHPqyZMJ16yeSc+rHZE1hXy/0wdZ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXVB+Tv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXVB+Tv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E9C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765914233;
	bh=axUjtgDaQNq6iBLQbNdc95/dLj2vYfSyiSx5qwjGJUQ=;
	h=To:Subject:From:Date:From;
	b=LXVB+Tv1PeFIf3W6CHihlE0qdSogZkE/DN1ebA/MMcaimItLBvWhdX1oQm/F8Z7xQ
	 b/9MBsYWNwUlIVKnXWFFYCHomEZyGA/Lc+U3Po3+sC6oYSW3dXp1FFAEZ6p6xPk6zv
	 6eCZgp712hDf/cGfYIP5WclVV9XfzJeSDMcs74H5eidEy7BsPvPYwd434gsVYpr3Rj
	 xBvkKnUGADLs6O/TPxeczLK1SLJGMpAHz3cRxhle1zBipVGsHvy/R8fhmNBUWsCFiE
	 iSD7VndItoEQT8qeBkv5wPs/KyPM/oeiJDwhkz1JZSIbjr7n3Vh2ijm5wQm0Xm/Mef
	 TSKBzzE4jkxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F53D637A4
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591423358.449.9358306776098108801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1483a748b720e637d6c2bd35e08d3e461bd3e63cc440d9686b1e2f46d23e79
Date: Tue, 16 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765914233
