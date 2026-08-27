Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8BD309F08
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787809834; cv=none; b=q8Y0+NcbJMdL4LIRLV9BZmquZUE/WWZG5unekz5z6mr609Y9CoIlWr1ak4JalTUag1Fe3V+OIxVniETPwj8wSLFEURyywpGLGgoVmMgUF0ixWXg+mYtQDD8R60Vor1C+aeFgz5UIdK391PuaNG5KA6+ogzbnn1PzjfU3qAGi82Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787809834; c=relaxed/simple;
	bh=JgQ5v0vwoGa4jeyTE3iOX/TlVfSKOejnpxxFvWmLHOk=;
	h=To:Subject:From:Message-Id:Date; b=t2gcqf3CiNkugRsqyxVhIFO0ve5qRHNGe4gUjdDD+KXYnVJyHG0wvkhd/pX9cqZ/s9X2RA3G7rGowtF0vXtHKJFLMmCe05BSfaW6QAyeev6H0YWL4CX+lP21gIJX+6t8cgtspbf9We4s3xU4n5nJkMylg0NyfvYu42AoWYQUG8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2rboHlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2rboHlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF7FC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787809833;
	bh=JgQ5v0vwoGa4jeyTE3iOX/TlVfSKOejnpxxFvWmLHOk=;
	h=To:Subject:From:Date:From;
	b=U2rboHlwdPqrcr11uOdBGAJshjp1m2KPiFgMKe4d0gDLaDm6wwWbZIBhBKbOve0ky
	 NfbnU3ctkBF8NYB1MSKwsUfQrTGZyfduleShPipoQ3yYisRM3Z9SH+XGJa7gd9/na7
	 Om4bJlTvisRpLNyp2O397s+ecFCZXqVzyK+zjkaScJYxTzQITe6nhnNIppMK4xSARC
	 aE6k6qKVkA1ztQsxTfj01Aq1P5mQgu2iZqgfze/ZH9jXBjHmIehud+ItLZED8pxAwE
	 9g41sls1xJbknYRfFDtYt2hdI2SAosO7Mpu4TdCfFnQkT/nPmV1mwmVrK+M0Gcec6P
	 gRwAZFl4Ag/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA711C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780983368.29154.13777659336058064131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12051c50f72018dc5b441333f6656cd9bb18b332984328ed426340f01d4a53e6
Date: Thu, 27 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787809833
