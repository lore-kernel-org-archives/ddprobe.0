Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D7B1F584C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764192774; cv=none; b=CPaG6DBQ89pYnvYMMZV/EzLraMBTOPp9FZGShD2nTKSqI8wW1tJqH820OBs4YgKY/SO0i64Q8X3fL4gQ5khmHGqVUG6PaHvG3EH36CV/UdRHBujwHUlQ27GzF4k/e+aSyjcx8mgDJppLveyGBgzJsSOyUGliA0vBMXiWUBeVTHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764192774; c=relaxed/simple;
	bh=SEQqptcBXBweEpnD39Z/nSrLBBnnOHtxVzP6TeMCeDQ=;
	h=To:Subject:From:Message-Id:Date; b=VzSeLNpAP3K1kUYHIRDdhYXiliKRfhJ7PA49F2iibSCcGdIWc9AU9MKXX2XXpOwCtG1vmP9jfCe9VPE+5DWwt3otKY6y8Qx6Bs9kPQvcpzHJ7eR2ZTaXIxBa6VDU5BIKl5tNGqJ7wNdqE3qEfbKeRKLJpq9I3iVDQKx6msuCbHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpUg1lFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpUg1lFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E73C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764192773;
	bh=SEQqptcBXBweEpnD39Z/nSrLBBnnOHtxVzP6TeMCeDQ=;
	h=To:Subject:From:Date:From;
	b=KpUg1lFzvLKuwr2IKXX7TxpGfWFv1gIG93NFFJrwlm2oXHeXnSeEJhkbYlItflSeJ
	 KCV1toFGeUKA43XuP+n94ZKLW2rDFUj4FjfXiMKdEjkERWtsVUshkKT5npeJ2RY1du
	 dN1Ft4c/Dau45Essre99xhJSU5IF0A0iNXuGLjU0sirRhSVEjH+R3pyYLxK/ku1X/W
	 h6eYxbPkG1wws/9JV73uzSmuPefXshQCpPz695ppXprfrTVWth7GIDkZuIgJjIC00P
	 +Rf2jCsmsBewHHqWi43qQCIpZRo/ZeeYDObrf5ARxIIeq1Cu12THl90HTItLd96+NH
	 cmJh892FzczhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E45D1119B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419277358.15239.4604754710064808897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424814b98c6ab5cd0132e60e70b6b7fa1df153516c7b25198a5683cc599294ff
Date: Wed, 26 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764192773
