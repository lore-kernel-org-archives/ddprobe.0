Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE2B11711
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728286554; cv=none; b=WjHyEUiSdYpGTYZjgN+Wo8sXlDkg6S1znIHrxWWk8HAZGkRzDEE9y7RnpsiSZd/zRRTH2ncfhUCimgYuVeh3xp3rHCQGZztx3j7vvyU4lu89FThevTahVUtYspkv6rhasPx6mmgjqtG5oqRq70TLxnfKhONp1Nn2OuBE0N/fMic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728286554; c=relaxed/simple;
	bh=kU3lV+NrFdTk+aoviFCK9FhzM5XmyU1mHuQvTMlVGk4=;
	h=To:Subject:From:Message-Id:Date; b=Zgjg+iSprQPqTUN0ynhRwGVlUr+4Cg//Fbqt5fh4uMkdEwO6FrKtJabAxDMZWIgt8w+oHIiExbKYnqeXaPHf4ZZcQsiIPT6zRliZFG5HZxSz7eVFN+cqdTFYJouBDkSOJ4UQPiWToB1dEDP/CV+D4GU91hXnoXIyOqOiN5V0kPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSexHPT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSexHPT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7939C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728286553;
	bh=kU3lV+NrFdTk+aoviFCK9FhzM5XmyU1mHuQvTMlVGk4=;
	h=To:Subject:From:Date:From;
	b=XSexHPT5A8n3b5omIgtloUMgKyRheXPgOp9hpCvz8rKTvMPiUEymADqFayk6+uSHB
	 NUtWLnKoZ3SpeenJTdU/nsjbLRo5tMr4Dm1GXG2SO4Nt9E648RuZqTngglJ4nHRCOQ
	 OqD1oLkR53iXj6yax0eOJUTpBN0eoaQVnJauvzII4zWrQYwQwWsie4Unf0oXT8R6U8
	 S8K9v/2iOHz0mMwwRV4I35TVR98h3/YFPT/8zLL65eKv1QMVxBdzr348AuU6b95oOR
	 pdGfZgDAuPv3CryFHcxtEUbZ/BZ0F2FLIQyZvmNXcZ94ZdPhKYgd+1eeBoWctYN1hj
	 vK5V2Q1LZcZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F23CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828655360.29629.6544616266637238742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120c3efe7b5adf5c2ccb032034e5b264e3451f511d4d0c266731fcbdb1cb7e02
Date: Mon, 07 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728286553
