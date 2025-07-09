Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C10C2749D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752049794; cv=none; b=itukIw0CXcalI9y6e2tTxfwRo2YConwUiDDZ0CajwVkcxaS7Sg4g+Q40Zh6W43oDo4XjPqgidtVPfUAjyaJH3B2ksI10MqUCRyfRnGvg4C1ZT+3WDe8UfR+/PEDQ3lulGzIYxN6jfeCQi2UJibWwBjzlRzW4vgGM+qEvH3uJ0dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752049794; c=relaxed/simple;
	bh=gQf59AxTjP9W7/LrwIoNVuBOp3vczHpq9PnPiSAd3ik=;
	h=To:Subject:From:Message-Id:Date; b=Vc4x7KanbRSDiktMz6nv4vYS58OakU7duFfZLVAn8OD4mNsBCIw9lJcucjC6PwQf5EQFhKdVz4kkhuDPHMZ7zILqm6EYID129yzD9eLtnkTDZpuN3bCbPqWoeho9q3vSl2vShI6Czk+Br6We9eaCHxvAC05iro2kJWLNH5Bsag8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psdbI/B4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psdbI/B4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F830C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752049793;
	bh=gQf59AxTjP9W7/LrwIoNVuBOp3vczHpq9PnPiSAd3ik=;
	h=To:Subject:From:Date:From;
	b=psdbI/B4iFdj3htHaj8O39+FVJRMiSr2dr9R2PNIe6CeyVh2Rn7znawP+KG09wXA7
	 On4g/JxLgJ6+SWRN/dJe9xN43gxC6cc0az2eESj7OqUUr4I1equFlyndbv3CxUZ3Tr
	 gqfC65wfSopb8oU4zcP7yFXD6vVPR2BmaSDLpOjE6k7cmoBqeSFH7rDTc5pBtiN+pG
	 nLsSa2a3o7kl3O89F1W/FtjVJnri2u0wRCLMDQ//3VLmVgvD0fsflLzx1pRzvnjWz/
	 9b/MGl7R+4wwkIn5lxNy1nnvPiH7Kiyr6yLbZeg6wKVuT5aQKaW0NQmJfx+gSdQU82
	 YGI27mpWD/OAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204979358.5789.13484147900629904613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7ed467c805b118220e4b709df0515081eabe03514fd00fd18675b12a78ff28
Date: Wed, 09 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752049793
