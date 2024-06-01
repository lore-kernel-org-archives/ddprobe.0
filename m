Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7500A33CA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717277123; cv=none; b=tJMYREUmxticTVp8elE9fug0r9yY3MjTrVzy6sG52s8IRjuDDQGHTbs5UggJAlqHXScxuAlCCKmhEG+acJxtQ8bizwu3adWYMXbVwUTtCmNeQrdNmBch86+c1NzhZVwKrwO79wthfVbKMxPxvvmWAa3SacjLTHnEhilL/hlPQNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717277123; c=relaxed/simple;
	bh=FZ0Espg7MxRj8rkxGyCVTJG7vh7dtcX5g3RkgL3TH7o=;
	h=To:Subject:From:Message-Id:Date; b=X6pfv3q2+U4ujqV/nfbwLBepmTn0Fp5/kyDTO7VNe9mqxeT6sYIqQu734KSb2K6//lW+vfg0Y9zlN3pdRQH1KkYXrwaMgRpa+4CP6Dm9QscGUCaSYiQqhKB5UL6lmffj4Ot6aWkFjAtC33/wMFOfJsAKhe0qr/2EDZ2ARl9NVWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFcbko+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFcbko+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB10C32789
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717277123;
	bh=FZ0Espg7MxRj8rkxGyCVTJG7vh7dtcX5g3RkgL3TH7o=;
	h=To:Subject:From:Date:From;
	b=GFcbko+khJwe3GY1B9JsEpo0e99uMK2IdtbHzAvsO1xSDlGu04lKnmdIA13KQ1Lgs
	 jYknidLzsuNc8D24FHNlic9WwWmjBQ38M4INekLKgEvad3L/YS3TUzyV+a9h4tRmf9
	 +8aMHtDg7D7ig9JSQogX03EYKq+72otEK3oIZpMMIYJ7ZFYp1FoMnkMtl6R50/H8Ha
	 CfEl/a5UoU3PP4Uf4lVMkZB7WB9AUQJpKvqOf8rkHEESyD4XQr3tIBvbH+sVkRPgaZ
	 QAvW0fAwN/Rcb1E9zPKloYeTIdpeeSXr4lB5I7NNoyBOSbPsAw6K1xgVa2wd5lUXa8
	 uZ9K6zl5YEPaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5303C27C44
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727712286.17386.2119769258383815426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f70c77a10bc19e08ffa48e27d4dc27eefd617bc5d9953d28d58e3aba129d2bf
Date: Sat, 01 Jun 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717277122
