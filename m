Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FB51DFF7
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732991154; cv=none; b=WAeHefGx5CnRA30/4EMSnHYC6lGE5Tf1wp/MqHeDu1Unj1Q0DHCSN68OdxUIY+arSIagf5wxeW7yO5sO8zJHKNl2bM3m+iT7lTf18ARCD6OCeFHQILGwzd3WMt8hty5fGqH6rGsfQPilRr0wR4gnvZ5WhcbeYj/F1BiOgM3ZKt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732991154; c=relaxed/simple;
	bh=N0tGFqN80q35KCbqLUemqFgKsqRLBnunfcBgAO+Q9Es=;
	h=To:Subject:From:Message-Id:Date; b=GWgQ+CUkzHDc+l+oWltM6yFMi1S7aSh5wV00CDABPkJzq56P8qgMMkfW0/CrlzmS0UxdCPL/jgMz5JvEIaT70YnpGePDWDPnwXda2vcMWY6vOr78/UV+yIzH0J9JXulFIMHLlZmbzQYCPXUOordrjnSgT9pZCKfAkPA3uFBdjRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYBp9+F8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYBp9+F8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF5CC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732991153;
	bh=N0tGFqN80q35KCbqLUemqFgKsqRLBnunfcBgAO+Q9Es=;
	h=To:Subject:From:Date:From;
	b=oYBp9+F8KJBXQtEZSHehvA3qJsmXkMaNSS3jUweTdLVPVQwpr/jb+9/YvD5zd2aOf
	 k81y/MCwjlUBJDU253I6L3vvytKtZCanQ7StBF3bjgMy9ey+IMbsAGgTg2PRWGUBlo
	 s+etCyT9pi7M98G0yknMIf+9afSmyjb5jz2kRf2t3hIEtqj0R+SF++d5GClQ43dFTh
	 m9+Z8MXqCu30oY6DlZNtTQmj49FdmTM8dYTK0wXesRFvywl+jDE4escOuPldQzbfR5
	 v3Pqjkp4TwXQ5QnVgJCheWe8sVe59PKb435iNtVoe+57NlbL4weEhkvqO0bsecDfy6
	 LPi34A/EYlpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD3D735F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299115359.14348.14261378560333995089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a394a9b1efd4aca333545c8b2db8655735810a984106e80564167ea0b97487b
Date: Sat, 30 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732991153
