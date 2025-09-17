Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F1D2F4A07
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758119994; cv=none; b=c27LytvthMcQe5MJ2k6DxwNhmVOCGkZIVS3jl/DkY5MMV0g6TX6aRalp/J9DVTmbIognGGdb1tmm5+aa3PFk6tXNz4R4gs1jb5E5LhMR/sCqkcSMJhYdJONbKbrJeb7ev6/m4QW6nhcA0vqZlDG7SGrfUX+Wf7jk9bUcMMIv0iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758119994; c=relaxed/simple;
	bh=eUKlowWBbXunVIFhnaHEQj6LWsgpHNXuSrgqlh/UzEU=;
	h=To:Subject:From:Message-Id:Date; b=hB8Z1/XYrdGX0AAnuPfVCUrPLLfPFp40ZEyVOG6Qtk2Y8/6BEGKfNYgx7deNoohi0tDjtFfT1oeiVgAqsQ/qLpcxJj3/DXVjNpIuCXw8bbVU2r5G2UuF+qQWYD64XjzM7P2QSRLaITQbkZCiNIuhckJcS/X9G+bRi9z0C7mNm9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvkbGLEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvkbGLEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0952C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758119993;
	bh=eUKlowWBbXunVIFhnaHEQj6LWsgpHNXuSrgqlh/UzEU=;
	h=To:Subject:From:Date:From;
	b=YvkbGLEhZPuJLH4sD417gXAMHL3dC21p2QoWT5bc/OC42nTxY1xs0LZ/z+KfObpF1
	 IcY1HmnBMt3FCg5qNp5nycv2Ma8BcgGZ993fKPa/5Alu2IlUVm9F/2lU49hcHZcFgD
	 XdVPYsUoZOLKui19sJXPxIkFYqnqU5fmrGeiCNR51QivfLifOTT60EF9+XGVdFeHXR
	 LeqK7hnqWarJJdSyXMgFRrrfbLYWiyqTguj9zrJaV+hq0G10EQ3t+9MtEHQ+X54Mwv
	 WMdmVT5AwCmKpYpmgkvW0abKxEbD2QyaFZt6H8DcrEdjZ+IdXJxnjW4yRy0AdsFBI8
	 VDnTAckpLifMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFAECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811999358.5446.8685050740182111526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05e2d067526317e3ed5a8f5a443f4641ff96431aeae1036965e852adbd245b3
Date: Wed, 17 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758119993
