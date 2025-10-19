Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295FC354AEE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760846994; cv=none; b=l8WzhGaaAPl6JSi18yDFgrquvp5fonBOGzS6zhi6xKjAxFsExNQrHFBxAh5EpDKDpBfy3iKG5Gk+dVExQXaYHvsvtQicJ/GNdbfqsUs/fuOunwcH556akzoyUKb0GIyeTWliyyk5w8u4AkVFImcFPf5pVeEJECT+1deTEqY1tEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760846994; c=relaxed/simple;
	bh=BT1cBPSVmpK9T0BJffYOK1ZcFGnKuUZ2ECcipKH7b60=;
	h=To:Subject:From:Message-Id:Date; b=GBHQGuMoww+KpqCLnjmvmo+Bi3SaKRRkZS2fILvU/q4MP8YWnjI266bRW5wTZqo5wImXGwv3lC26npSK9BHh49UBw0QnEkHf/pREikOzzjSAyHRZPmm/9rZY8sz3+yYf6An1z78BjI7KqHfpv7sEChS6qpa9fiKsXL1gw9MhDkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFLNRq2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFLNRq2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8347C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760846993;
	bh=BT1cBPSVmpK9T0BJffYOK1ZcFGnKuUZ2ECcipKH7b60=;
	h=To:Subject:From:Date:From;
	b=bFLNRq2hKOimuAG8XuqOKOgsbUn94t/ZV8B2+q6zKWITwkJfx7F1Sjat9YMY1TAdW
	 Nr2WNEl0ZTHDy5bIMhAyrO/ROK9exs2IrxYxZiAaDehz7HiLuEckzKyhzOfxdSCFDH
	 s4RpcbZ0JjXggUe+Zoo53cnB3SS1SMxXb8pYLM0U/jWraVsDqz1qkh62HZIWHmdYnE
	 d9PIu9ZJY4hW+UylOYz9lg46pR8bUa7+4rrGhqEQQ00GIQy3ZUFkTlDMO5wWU0Rc+D
	 fAJs8YzXK+s9a+RVdrIK1u6A6uZlFJaG93mRAVLwxT4/nXvRKlTkMJbAoV1oEVTAGb
	 0A8t9MqKCKVnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92927CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084699357.26572.2743751098534256130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742e593dab7a27c6d47c273b7ee8b35cc3cf8f244e5fa9018860441fd1084e63
Date: Sun, 19 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760846993
