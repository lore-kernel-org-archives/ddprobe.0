Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B80B2989BA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758013794; cv=none; b=S6JBuOTYjb8NMdblo5192kvMcZVM0grzusp3xKzrgRaAPhImiEvwvrrA5ezhbTx+9CDhdyhCL96U0Tf93HLhqaTcXVSwdhUNMb5valyVooBvzEFOeNM3j1PHBcNGcc72+LIH+D7iC3mB298lvambS3CvOnjrV9gWsRjf5mZpZpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758013794; c=relaxed/simple;
	bh=q9ISdtE0ZrzShxQ1DReMkzzfC0c2RZso85L+3gQwnEY=;
	h=To:Subject:From:Message-Id:Date; b=SOIWkhOROXhKTR/yZrSgXMotyI6lOj5uDAZk4ogoVMWzVQENx+mcmTGk1znEjzdfKYMklA8uwFa8ZK7RX8hMVKVHz3Ap62GNpV0xC/SEF2CX1hbxNFJ14/Z8Jf32mcb2nq9bITm+SwU/VpeO9maeK2AjuC5Wl/vRCKbXR5XYJF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1g8tXMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1g8tXMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A20C4CEFA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758013793;
	bh=q9ISdtE0ZrzShxQ1DReMkzzfC0c2RZso85L+3gQwnEY=;
	h=To:Subject:From:Date:From;
	b=L1g8tXMUXOK0UpGKzFDZBlmr/6hF+4iSkiufoQNu1kRR/ZLY+2ZHIC4f1pxoXWvYV
	 zXRdG1BHqsIK5XgSfXdn05BLm3cleMBIEExuUiNJtN4tG5QNB9nvVGZkiDBmDjapIf
	 rXgpfrFxZFXB3AB1uOlZlaLxQsQ5SHiJ0D69wEgH9vWkQsABoqQwLSaJ9YoU5UvnJu
	 iorTAGRgPVSzRq7Nr0VBgrP6GExM8JXR+wjfmADFTorgdZVyZ0w5Qmvf/Tcgiu7gjd
	 9JwPbKxrk5iQskez8KxjFhc/A5QIdJW5qHq1d1sQehEGD1pdlRKjaLqB5Jv5S/zgRf
	 lxz28acAm/Svw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE9CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801379358.7256.1144685871001103986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec203f16c6912cb5d72bf2172cf4098531db794985c39413e96e6afde1fd4eb9
Date: Tue, 16 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758013793
