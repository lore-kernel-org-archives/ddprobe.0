Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E563F40DFDA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777944454; cv=none; b=nbysY3hNsc1lUHin2MfVQd7s7xu/vpOBpH1sIdVbWAnCXHo0eY/7s8woc6B3TjzFtnr9+eATdXiZ6VNTNKgIyiilf8PsJpSeHDMkSdKEiV9JNRarzuLiag8inmg2mJJ8eSGaa/OMc9nFUm36KNpjErquHcoawGpOLbeBGzDo5jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777944454; c=relaxed/simple;
	bh=JEQ8uQkiJZDZnggLnc/Yg5/PZApQ0odFGFp0scrUKng=;
	h=To:Subject:From:Message-Id:Date; b=VQdvKbgWfYxImAgLmIVA6N0jSjZ7y1LFM0mdBcWvfHcfs7xqAOy1qkoZUi0uRC1/3kcxOyFguJaWZ3yyaj5rMTCUGStvOkTMkfknanYH1NI8Y/Fs9MK0u+WX0+MujGYOPryVSokWPaeoyfOh9O7hN5d86dqLJg91juaemYdyxK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTfCEk0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTfCEk0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8596C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777944453;
	bh=JEQ8uQkiJZDZnggLnc/Yg5/PZApQ0odFGFp0scrUKng=;
	h=To:Subject:From:Date:From;
	b=BTfCEk0oAljzOA7jNtShEDCv75NR1Y5mEjoYmt+itpp9NNqzrl5ptpsvM7HKahntq
	 DJXio1xGHOvKCrJDuI9XcEhF6hrcSRa7OuxS0e1JZ3wDzWz/CAt8+oVuO4hclqgxjw
	 4L4Zpn2us1bWo0THC16q5xpJ7By1cs6oANpu1aAjU4mHG5MxutPtAFYqnnzhOmFYSN
	 OSa4TExqgAssIUzD2rhvUcWS99Z/HTckQff/Uj2S7M/EzpCuslpQyyHzSSulso07rk
	 rx5k9tBxh0SM6fJyK+S2mweOcguXXvmgRrMy1QhFQki4qWQXsTv6tSCc9bvexbqTso
	 QbrNUXvssS3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7FECD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794445368.7638.16610996526915551972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce257a7275856bd11430be35cf05843621b452479068f86ec61cdbbfe019b5f
Date: Tue, 05 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777944453
