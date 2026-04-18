Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2091D3C1F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776475054; cv=none; b=bNGISeagRhbOOCVCSQiqUtjmDHjl5b+uLzQfy25iNiw8ZrBmFejXEa7moEBsWV+OAuOq3yayBamwQP1eGTk7HwpVSqYjS27B+yL5oXuzZHfszYKrOc3jgH9IbIHKR+Q7yj17il+OubeQ0rMA6c2jtVPhKUWIRKsSjFWLUSD/AmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776475054; c=relaxed/simple;
	bh=vHQRmCcd88Em9gWK2x6HV6sYApesmLT+xkWzHlk0v4s=;
	h=To:Subject:From:Message-Id:Date; b=BdeDCQLxJRZqodazZYkEIPWNKKkTv8rbniK4oO5MQnVwgraSr7qn6zwvYYbKy5/6toah0gsNNIn69Afs7chZxa+QFsMq+j++P/r2lfmYcbTMtpz5BXoamjh5gShHgAynw1KTWdGVMbCrHenZl5X8bNS07gtNYWmQQqnuLu8pACs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwGjnUCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwGjnUCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED6EC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776475053;
	bh=vHQRmCcd88Em9gWK2x6HV6sYApesmLT+xkWzHlk0v4s=;
	h=To:Subject:From:Date:From;
	b=kwGjnUClw2EH6Yqeri+G1eNYG9DmD02/56KMedaflDdh19Hi+eCHMo0RzxtsOMJ6S
	 3jYZ2JXzH26a4T8rEC+RGro/+PhB+1iP9P9+56pmq51LVOjHlcqd/vRKwa4mMO3GGv
	 +mDWAfk65qqE7U5RuY74khZdhSQSpW7RnbA8Cnpf82NaM+F1sba9OBjm4AZ2Ml70JI
	 XQOUMmeir7DUydl+EEZboIVDsl9Rc4PQ4CmRuUIagKcvxlOpRKvc94ksQfaqqbw4p+
	 cNKYKT8vdigA2K++6oTYoBTSg3c5DtGfLWYTfudTWk2yJOsI3ckMMAiGyjypsBl/MG
	 +FCLw73d+P6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B047AF99C63
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647505368.6738.11805786321118082872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3314f1b673bd1cab361f375375d1c923403a39df35b94ea4bd3b37e38b02748e
Date: Sat, 18 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776475053
