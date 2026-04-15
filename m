Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE77330D22
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776254854; cv=none; b=W8X0O0s8gO82KXrcOAeMDmVBRSBvm+e6R6yf68YYyV97x3BPPUkQa67rDwknOwk1o4WFLaMSfltPPyzbtp5LmS1uw0yjhf3lZTaQaVXICQ6bxyms98k4ems0q65nsqF7pULBEajJHu+Fs7BISVYAaKAWSJdzbH3APPuj5/Y4gF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776254854; c=relaxed/simple;
	bh=yvPDas5JHbsXxvYQMx37JQFyomyk3eeeQgj6HEitmYU=;
	h=To:Subject:From:Message-Id:Date; b=um71WtO7XJs2CGRWslrwlQ/aSWoN22vZvZAd8QsE9jMNxkWQCF4ufLTWEucx2KQT1iAkSHQO0W+S46G/pk89tXfPPGprmuqxFhJlgLEUKFUoXAk2GWUPDuA8BGsCFjEA8w1P9wCC35z/xR8RmvUuZvHLJmDB8/S9Ua2nFaM0cXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH87oGQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH87oGQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F1EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776254853;
	bh=yvPDas5JHbsXxvYQMx37JQFyomyk3eeeQgj6HEitmYU=;
	h=To:Subject:From:Date:From;
	b=AH87oGQm9XjcKkoFZoitm9VVGms17fI7zVOB2yCyARpKrDnkYTMaRV1iAC7JtLdMn
	 D3uYv7BsrHWQv5RE4IKtsl5TWeeac0ekPzSumvwhEePhZFMemfFysUWlNT1CeHYOUH
	 u3RwTBUJLYycYagh9Djhsw9/8DjJkQqeQk/fi2XDjQwEFhXKj2YBC6EAo1YPQo3CnK
	 SLuFpm5Udy92aTI7oS2XSIxeVSPAiwoB+ro4tZ6mkXHtwFYHD83tnSgL4sLzF/LvdO
	 ahHm3rPyWFygGb5uyvHe+Th0W4iv6yyjfGl0cVy6pQkS88RHtclqxWCjOh04lX6mvg
	 8q6RJJYbKRy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D23F4198B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625485368.23965.13393805473074130109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c4e0d5df07f8db3bff8feb4004d4dfdc56e028cfef8121db0cd82e72311234
Date: Wed, 15 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776254853
