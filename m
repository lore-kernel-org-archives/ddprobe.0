Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5702747B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735130154; cv=none; b=fjuV3AS4dl/OSZX2IX5Np3a1WJFRz5Xadl0BO19G8PU5LhR5v8Q8i4E/pFzD79ovyLNVzWaGouU4z64CznQSdaWVGt7Z2LxhXnHmpN7ltRq0RWdjk44U5soa68djYQ8BZqIc6sf5ni4hfLGaYFr4u7GsY4Cb/iBS0cFm2eCnrNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735130154; c=relaxed/simple;
	bh=i3pB25dP4b980GFhIk45bX9KhlZNOsuW3NUhtjZEP7Y=;
	h=To:Subject:From:Message-Id:Date; b=mYEXKoViBjAVjKLtCs/zYTrM94U2Oj/YfZSulk0q8jZ3gin5oQzU0BbaZ+cdEY1tC+OmM/Ll2T1A505lr7E6Zjpx0ttR8k8wog4NJFFQixGt7SEXvShRBDy9nT7PoWuUgsABIDiicqIatPX6ZWBjNu7gBBxZc1/4kjxpYLocwmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spTHkrSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spTHkrSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61BEC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735130153;
	bh=i3pB25dP4b980GFhIk45bX9KhlZNOsuW3NUhtjZEP7Y=;
	h=To:Subject:From:Date:From;
	b=spTHkrSADN8ZDnPL6Ahg7x+qiBBkNro5LIaljvtQucmFOzNjz1m6ToS4AVNETbHb2
	 gumlbECZxjTwF6NrGd7xjxIvzPUmL0lSuNSwNChaksGDgFQb9AdhUtZ7mXP62HQWaN
	 rAmQb3o7QusDq1usWhBpIqAwvBImikhFMq4AMpDrM8dM4uRmSgVbqyeE6DbE3suctz
	 0Gz1Ky/zxBYDJEbZ7NKVetMNXXre8DeiRUDP54oiCzjMHzIohN+2v0O2TRRcj6UQ71
	 pNUp6EZ/+1Eda1BKvehILTfH6MYExh8lyOHaYJCiCIMcEG1O7P5jfWC1Tblg8ZRGye
	 LFJdkGIVrJ13A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC21E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173513015362.1987.16167009805973886894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3dbdf062cf348f6067b4c049c12c87e58ab6a76233d8cd0523cb610e2bd903
Date: Wed, 25 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735130153
