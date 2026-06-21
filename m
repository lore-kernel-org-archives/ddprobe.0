Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0C02749DF
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782036994; cv=none; b=jmB5GQ4gk+b1b9U7bhSSIIHLOtwNjWfvZjrODbEK2Un7WxtN0J7jL9BO/8EZ5nZfqM/uH/dd6deDi0XiekZO5vLcQrlmNR5QnisHdcnbQOzMFpOLbiqI37tWcHcmyBRIP4aVjTv31oyBDt5VceA5duUllf4q27g2ZxCsvQKaZH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782036994; c=relaxed/simple;
	bh=iYPIsZj6O37gCKNNiEDwgs+D4/zkTDuVn6Qg5zsYYMU=;
	h=To:Subject:From:Message-Id:Date; b=PTS/lnXkIGyt+47R3gYFqq71471k6gxsxK/DYpWKYJQk2ljPa3f55CwNa0H3bnj6blRiqHmto61QkYO8ea/7O2ab2uHri2/1mDnj4oekFxoZULpsgxNXA5PiqENNbbq4mrwoa+cZB+0kTAOHPlNOlzaFlZVF+e6R+67a4y/f99c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rze2KyJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rze2KyJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAC9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782036993;
	bh=iYPIsZj6O37gCKNNiEDwgs+D4/zkTDuVn6Qg5zsYYMU=;
	h=To:Subject:From:Date:From;
	b=rze2KyJXih32JhzihD50pmS1gKKycA+ppltBz5wPtMrUBwcuxh/YLQl7d8RUZ1TSQ
	 AGhTZfjdqtXx7gu9QJPvDA7kThy7E5tneHTi7bJMO2WTyKmL8X+7yk3RwcFMbagzXh
	 hyQi2YTLixOePAUihrmcTf1Sj/DyhPGUC3V1O/eCyK82ESmNcNnt7+W5Xd50oqid5f
	 VmxCe4GY+T2aRxG34Fr9VbGW34trnAA7YqYbgH1pfScXYoRzXUExS47v0Xts/lK4ru
	 OOl+tHxu1Ru8e3Og+HnCW1uVaJGuHKNSHkhCwyWI3Aghz6bwjsuJ8uGqtqtVZaEFo1
	 S+JtYQKjTGPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B294CCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203699370.12761.2893441815794837365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b73f5ac1f4d539e9e12367e7a846b488e2e54e19578b2dd4ddd6080e2270697
Date: Sun, 21 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782036993
