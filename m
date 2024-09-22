Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CDC2576F
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727045754; cv=none; b=fJzOUW6rxURpEXa/f49wewoucLgfjKWMreZWr+ZCUgqh7BZfgu/P2S/GgXwwhfCTp4qe68Xg9UBXxpoMwN45GzuQso332gnSoBqDtU2TM1fnIYKhQv17CuJ7bPJGldjlA6wc8A35h4f6kAGVV31AEf4sg6PQL216+jDA/0SRePY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727045754; c=relaxed/simple;
	bh=zCoA4odPtRxTqmKC5hgD/ZW60mth7zQszK/jw/PfMcM=;
	h=To:Subject:From:Message-Id:Date; b=hgnIi9Y6nC16q/10DKw0xcTeHdq7Ek+wpGJO31oqjmRTnhZzg3A68NB9ozw9InJhYXiKaxLKNgw5WkgGIXOMiOKpOREsrEUvy3Jz28Dyw4M7o8rpxq8WOr2zkbne3fIWdGM5ER9jM68cAgsePkbF/TN/SQdYs8adqOlPzx3/yGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6VVIONn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6VVIONn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C0CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727045753;
	bh=zCoA4odPtRxTqmKC5hgD/ZW60mth7zQszK/jw/PfMcM=;
	h=To:Subject:From:Date:From;
	b=i6VVIONn4pv9ma+fwYyYLV+VQhUVMW64ANShEVGJM4IEvZ1GNzegAzskxrwzWCp7+
	 kbBoZiJ3L+xssbVmGtv7XyGiNPjuzkf9glK3ZpxrF4MUYUPfYrXnx8TDjWcmRchwZ2
	 ogdp/eaUMsDT+MWbfe7lguW1/Ts8rGwbkeqL2A0MzYrA/MukobmbfQSG7+WJN32Ak7
	 7KZFuKGbCJ8Ql+HYPRoPkGChTuN0KcKXVQWJ9z26m8V4EUVwytNGXK7AwdYCCHCEHF
	 zoWFkaafryfsAJW2SSVa7g1abXyNiZyT8i9EoVEYIIhilSo3DuiispJ08HxFERrc2E
	 1RWSC3Cdbsqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A268BCF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704575359.32469.16754418660953465659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4bf0601bc21c1fdcdf91b7b6980d00addd14f60116367d8cdde8c0f4180aa4
Date: Sun, 22 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727045753
