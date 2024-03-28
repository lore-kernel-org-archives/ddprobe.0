Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE7754279
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618697; cv=none; b=NfwiqiAz3gJ3dXqwbF/p8LG5IDwsegPmjZ0aTgEFDdwaMy34xgIn9Qi8oPpReQEhVnWxTzmSgAN2q3OWAMF1/3aCsz0Qn5c1JHBpTdKZeTM1UGuEs6JZ2oZldhYK6HgfuYmXOTlwL5fg3NM5zqM5VhUGxX/rY9dS4Ow7q3UIiHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618697; c=relaxed/simple;
	bh=Bmfi8ZZx5ZL42F+d3imXdLCZKBwCvIk7XK1XtIoYqdY=;
	h=To:Subject:From:Message-Id:Date; b=ExqzYctpqFeENexDq11lpTDLo/II1ukBopu9EYqOnjCPOE2Gnjkv4lIqa+yXOehPYhA9ZkniNyvJzfJK8dDrWkd7v9BIaHUYv2GrH3bLSvHPOfNaKq3YDgo4KgXReyV1gwoUh0d3eiTCxaMZjhyrw3R9SPtw+VLLltViBQUh/rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4F+T4CK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4F+T4CK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784B7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711618696;
	bh=Bmfi8ZZx5ZL42F+d3imXdLCZKBwCvIk7XK1XtIoYqdY=;
	h=To:Subject:From:Date:From;
	b=i4F+T4CKHvPpE4McdWjlNzQ7DAPQpgHQvjo7XHdxesFVoidJ+9TCFVADmtqvzgX3S
	 //eQgwBrr5x7r+ThbJC+PjrLtQPHYlfQXVquryLlER2EmaNB35qS433KsnzCOcmo+m
	 9Op+5kvnXvDa6+14hVqiAQhsaV2AVS0mPsM0pQxt+fbW1KpTgTbC7bOokBFwJVsjzK
	 nHFOnpqqDkYBmb776NcgIjkV+SoX2vZw8jYE1jivHNegIXmqG0Sx8aQqd3T5bnnSap
	 TBZtGOvJwFoOS+Q8cd1usplpDQd92N158GpkQHHodhyqUVqhbgiHBsMJIhLNbnjvq9
	 PoT93B5VpQUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657FAC54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171161869640.17658.12030324623241629900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c573e4c2cb2ac8eff0159d0eb1fe7400edd3270887fe861a9813b08782fddba7
Date: Thu, 28 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711618696
