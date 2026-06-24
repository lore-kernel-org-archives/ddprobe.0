Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D29820459A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782304054; cv=none; b=lR8D3/KEtQXH56G/BPinJdf5mIU4AuWD6BzneIY9JLudXN5hKJTnPBhhQG5oG0S/czQp2pwH/6+J4fevSi0MBKDhzA4CiiSqiTDoHWNJoXxhMtwxpYeRlWhU3T4+ZaKLZSSFGuf6NVsMZ+1eHpzlor1DelT6dK7w+ncrguYQpqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782304054; c=relaxed/simple;
	bh=9R56McjKykWQhuHr0SlSjiOzFfWVgCMab7eKSACdJfQ=;
	h=To:Subject:From:Message-Id:Date; b=MLmsjSZzMNTtW6w+eoc7G9DtZERq+s/jPAbDIlo7W/g1RIWFFt+rdRXfsnhNLgTpOPvK4KTuRCbiTdpaj/+RzT0DoXX7LIznT/rvSq5zyehwFofP9R9fQJa/uGssHbkX6OP+/4teJZTmAwUzfMvxLVkYEFbxc45yI+U6BDjxRtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kffESbJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kffESbJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD83DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782304053;
	bh=9R56McjKykWQhuHr0SlSjiOzFfWVgCMab7eKSACdJfQ=;
	h=To:Subject:From:Date:From;
	b=kffESbJbQRLteTAX9AWcS5/jnNqrB4vRQwBVVh1e5BIUqtZC9CIZjI+DVpQ+r6B8T
	 WiVpqdKGPan2nkok/vsHGemJ90EvH7HsaQSayRBU4tuHCnVwS0M41ut/HEy2Ov8ALU
	 JhydsB66ilYdPvaJJNyBfbmB360nHBi6iuM8ivaXfN4tB+UcxZbTTZ+qv2tZHhBUNm
	 vlvQzk0m/1QUL0BL35iAdPwrZG4rJq6/jw3h9MDsW/oGXG1WAGDvUQe7n3iH29/3e5
	 8nZHZwOR1z3RKRtGt0IFmsNmI2y3+g+FljT/ylP4bvVTBNmABbNcHnAGga7eOpsv0j
	 SfuvO9KYz8nJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8790CDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230405373.20002.4760839005178160431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e462dc8e04976e675b69709bf3df15593ad026ae1189a6bfb0fd06ff48073dc9
Date: Wed, 24 Jun 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782304053
