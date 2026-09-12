Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A39E393DEB
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789209634; cv=none; b=sIggB1mes8oY9p5VMhQEytUEolBtqA4U6W4F4e6aI4ZeB9XaivEyL/7zy9jkXLRrECqU17WedUi7IYeKiXso1DAW7id79rOOAN/GfGxLW8RkaVHYazTeTycxQIRgNLM6+mPQAXXmOcshV1wMt8AZHf5QEt8MgbfL5LxPlhbLbW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789209634; c=relaxed/simple;
	bh=A4RQ3UOW860A2E9zvg2QRzR+tmwTdZxpe84a+/T35BY=;
	h=To:Subject:From:Message-Id:Date; b=hR1omVh1AeBWkBDV+YBCJChVe5Fp+mo90f6Ln5ppvMaeqpywgVDkoFxH3c0kKK+cj4iT9yfSY7t2/yvx7nWXawAEiUIvJGUEN/iVFyhAsHLDJnUGPbZNF4cpH0TFX47k48Nmiq87IQt6Ne5eQKwgwM1WFnzwtIsOdfItzC7jN8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaTVi8+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaTVi8+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFFFC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789209633;
	bh=A4RQ3UOW860A2E9zvg2QRzR+tmwTdZxpe84a+/T35BY=;
	h=To:Subject:From:Date:From;
	b=iaTVi8+TYN53R/ootd5uF7mJ7kCZOT9GWDMversWh4lzuwYYuxOfWSffWekXw2b4J
	 2f9iTEKLTQoPUab64TJCANtY9f9xIn7cLRW9Q7JQ2HylF0oFv0JBvNjs1wXEX9itOS
	 nuhUwKswgOriE2YuMtrLgyTXDu4O9lTVrxEWvE4rQLEZBmKUjsW1vyer2huAJ6terf
	 XXxcSPQgMGUzYHMscEnB4nrDyn/uHsEUHN0Oa4N+hLRpCrR4qUiykBgjNxn61Xe3Xr
	 QHtOvjpJULuMffN9YglzS/T9cjgliuppZLMuc/4ttpTdzVuw+dAkZA8ANXG/vMsv8q
	 DgmTJCAtOtosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B3C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920963368.20432.7559851398854708866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3239de1b82505539cab8df6d566df65f54f1a72e62871cf6112db3ba3a1b5ed3
Date: Sat, 12 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789209633
