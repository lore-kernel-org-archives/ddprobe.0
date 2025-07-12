Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3713C3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752351595; cv=none; b=uHBV4YnqqIWRMHoeVUCowbZj86qCYkZOS4gp1CMFJ8GSA6jgmFZ+fsGzprI+BSYYOXI6AxeyWwLs1Msa0mArivBVFkUbi7QKVvtU5GmfycWsONbUpliY9Nqy/P1M7TdwhUuI96AS0ilwpVGYbJF9zgx5VEz6pxybAOx+XeizJmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752351595; c=relaxed/simple;
	bh=6O5RzHVTZOPjBDI6bmemt6q3cVFSB6aTE6G1jamT6V8=;
	h=To:Subject:From:Message-Id:Date; b=t0qXjdo5txNPXRBl8sQHRCD601KNK1MuEmSXY8v5vxdBD+cm1yYN/AT/mwbAai77qf13asizxJwp7qUimWdnXR5FWOeSJ33GCXqdbmHen7fiUUSK4wQ6344p3gOse2FC1Oq2M2awtv2YL1G+8PZGpsUrkxW9eEWINFoBDyHyzgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIT5dmSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIT5dmSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3943C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752351593;
	bh=6O5RzHVTZOPjBDI6bmemt6q3cVFSB6aTE6G1jamT6V8=;
	h=To:Subject:From:Date:From;
	b=GIT5dmSY0j7zdWIMkqAahgleNa+4ZaALqHbsZv0CEPyGKb1yy/dY5ehoNmAlD8SdQ
	 5oC9WHCfZQBeeZyzNmX/tkxrAsdlrtSqN6Hu/3uF0IkTIvtXf1ec3MCGkEimOBdUNB
	 HsQRzBMLDrSUvcXTqp4fsVT5C4rNhj7lDXakHEXMRG3J6LFXCNZTfspJ7pU/O/fflb
	 9eKQrlLpP1/ldNVuDPAGuLP+ijE8SXoguncuqMF1yrwvztcYRox52GItzHYMBRCgcB
	 xQvDcVJH7m21RQWhOFde0lRjOFYdZnqVFUdO42X/7fTCnaQlF0GCdkdGw3qWeF4+kB
	 kDfdgtnBC4FGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91367C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235159357.5157.5385690359117921817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d00b13dfbb2611333420d133e807249f4b008e274e64f81a423b2c4e3f5b90
Date: Sat, 12 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752351593
