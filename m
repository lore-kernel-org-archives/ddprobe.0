Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F5438F97
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730594153; cv=none; b=i24KoWtJaImMSWv0vpIXqbn82hsZ4zp5aSi0PZGmtoWZ9q4weBS9maoyNvvdkxXLjq7fHikwTp7rN62O9OKsJe1DAm+4+XoouUKASmbpxqj0TsaDLMq6cDPoBJ78vLF+/ujbx/031Rmq8O/0qL6sZIgoEbdA7xEkrVpv2h0zg0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730594153; c=relaxed/simple;
	bh=yFy0lm7/op0TCPKgPq2HsVrrFO1gTDQUpmwq6S9K6q0=;
	h=To:Subject:From:Message-Id:Date; b=jia+R2S8BkLkuhZquDSajlDdRMo9tOF2hUOFfFLPzo6Cp/xCZtsn/sixgTNRwo6vRNDIYK/8ifEPEWIaYlSDLPh0Si2tyxhYYPO9MEgPFLcXThMJcgRI8/Vq5VCU0OQUB4xlLTt7bybekQxI68qnLfH1wcJPzmEf/Z8pubsr6Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImqCTQcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImqCTQcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE11C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730594153;
	bh=yFy0lm7/op0TCPKgPq2HsVrrFO1gTDQUpmwq6S9K6q0=;
	h=To:Subject:From:Date:From;
	b=ImqCTQcP50sEglKhny5PWucTSlJspzP9GnfiRcGkfKIctPpuCY4TmPfEOTzEExb1C
	 g1RgwqnqyPfkCOPwMl3tbnkfl9qsSnezJHtg9TLgAKOmGw3+zENWTjjaegrTqVU/IF
	 2FnDur/xwHmglB4HeD1mMhQe98xF0zBV1SW7zNj0NJnUq2FHG/YGO5J1e/3pipLWkQ
	 LeJcPKv8BxTc159FDU9ocJPuq6lBPcYPcd+PrmuR9dYUxDuDIlj09EiC7c+D1T8m5F
	 hWsgULE25ii8hM6EV5KUO9gtr+LIKrruuhvwCDG9xodpO7nNLBzE0eOe9C+MASailQ
	 lQONpOMIQr9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425EE67819
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173059415359.18200.10174507865226932488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19ce3d89406eee411cd80187b35338b08c7a04ac464fb38788a0c4cf8bfeb79
Date: Sun, 03 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730594153
