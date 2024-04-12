Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B84C50284
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908163; cv=none; b=ZgpNxpcpHsdUUn9SUk+WL+pu3d+BrHGDu58vN8ZJ5kVeK75ZJQnATTghIaenHFWb/o61tQpjIm7lUvsCz6OI4oWCObefSyqLC4esfN//20jD4c1NSS9+Z6FKWm/NtWANdcouKubW8CBbUNpNnJ+nRCKqvg1MdziIi6zOJsBzEqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908163; c=relaxed/simple;
	bh=AM6loYk4A7fW0ahh/fZsUqrU0g1lBqRMXFhM1dUVHks=;
	h=To:Subject:From:Message-Id:Date; b=tOVAWCTFY6FxuzHtc+1oYdZfcrgBnk+BI7k/KKLM5qQNtMt8EBCv031383C09+aRcpsQyaE9PGzF2oItBbQvXa/HIPVol3R6CTVCGpAGx9mtr3kKQzjqabRRg4hYux1635tkaqrjVW4m1/p21KFzabK73HJHFcGrBYRIRXkv1ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T//R6Yfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T//R6Yfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D282DC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712908162;
	bh=AM6loYk4A7fW0ahh/fZsUqrU0g1lBqRMXFhM1dUVHks=;
	h=To:Subject:From:Date:From;
	b=T//R6Yfd/PfYrdcx3aeDp9mUA4PkjvNRj4nv5pPwcMqwxg0diXcPthncqXULGRdko
	 xVy5utubMBlaKZUt6VsZt1na6ljRedj+k+erGTmuG8xO6XLukIL2eoQaVMLgGUvRwp
	 vb/Zb+7VoErqjGoC5jC/pzS54okLEF7nyD13Z31SRRL4Yqu6f+yCiDNAscjNvWUIFv
	 vJ3Jo/1jBG5+8Xdy8557bd78mUChr6QkmgTwdjwARtTf0EOnTlMAK7ecmzJKDawpVr
	 1T9RNvafVz8Vpadgv9VHhW/ImNagaevb1YGq/4zXFyNKOH23UePKnVaCEj2h1LFWcJ
	 Dw7UDXAkpyadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F81C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290816278.29066.4479903209500300117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f073df05e2b6b4cb4d867f2dcbb4d7e3378de4a951de2eb319ec412f0468fdbb
Date: Fri, 12 Apr 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712908162
