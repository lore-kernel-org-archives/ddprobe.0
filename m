Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39511369343
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756925994; cv=none; b=V179hE2M4GpYOWQLWGFTHe3csLF9xFNFFGdGCL+oDHltm0vrusbl94B52FpE64HLBo/2He9VYw8wEKlH8v8Q9i9f+joMuP77lpoOHtgihwz5N9YeuUtKSqOa5uAoNvccMSQ4sfv7a2c7NzfXgMes7rLDtGu02Sl1PPbrgh+55+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756925994; c=relaxed/simple;
	bh=GamvIz+VrkOVHT87t5mUgmiL1aii4K4iGKJoU2z7nVQ=;
	h=To:Subject:From:Message-Id:Date; b=lbsdy+Ag2JFDxANQLWiYJtZqv8axVNUAnTc1Crrj9rct0pZRQPOU5wYzuBY5vNb/8mgE1oJ9HIkP5PXsdPse0FiM49jqANRylRBRH5fVqcrtSYmolDi5+QjQCSsvg1LemvvOJGOIQYD2bjrQpNfZVD80lf4gcAd6I+zijn34p88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNMWtQN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNMWtQN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8087C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756925993;
	bh=GamvIz+VrkOVHT87t5mUgmiL1aii4K4iGKJoU2z7nVQ=;
	h=To:Subject:From:Date:From;
	b=pNMWtQN/rjkzFbMKhkgiwdBT3dbbMPxtQ61h6ROpZVbVDZg6ELb/T6ZJo4VlvVfQ6
	 unrN6CutRzz/VgFG++Lq2aAdna6WyB2IFARAXx87FjyrTRetaL06yVgEjsUMbQMML8
	 q/bsbZYiZgWhCW8vbFyJk3AqLnKUdwWk7s+Hi99kzTYBt7yW3EJS5XJLNJ40rzzDvM
	 91TNMkpVs4vOKjZ/s379avoIbKFbgtSZ7AN/nS7SbUaxqCsYO61R7Xuf5tMHzxFJlY
	 a3GK1TCZGcL7AYGFlIuzhncH5qhjy4mQyfu6Pjg5YmeG5JuBl6MEAKoit2+hrRM2U4
	 uz7QYgOfG2ZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6ACA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692599359.6484.1427035859668660196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5426528cd2d52f45eac3d6e25dd817d3d1b87af75baad4e6dcfab1b7d4588f2
Date: Wed, 03 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756925993
