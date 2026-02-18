Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D5D34846C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771445694; cv=none; b=ph0tzgpzk7l8PQoin/W1JHP3aH3chjYdF0np8EE2LGv4dF5qxmnlAFCp4QoyhDgFk1llCImYw+suX/9ROTSDvFc970hFtfvROQ5t7CjUhGbnvXqHQwT1c+J3ljEpylstpXJeEa2H1b6KxAzoOv5MVXq3OlzxN8sTd2zGqsUxOBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771445694; c=relaxed/simple;
	bh=T1U5MORkAHYC/mh05rR6fexHLElEPxnrqUJdwx7E7fw=;
	h=To:Subject:From:Message-Id:Date; b=jknIUbrTMgDfPgXV35KIhjY+4jjFqxCWuhXnKF1fcHizdZxFJOcZXKqYHi9wWY8Zlu5Fa76JWgw7qCr0yexcjqEzndzz5ovWxfT7Ukv9oQzDoBOTHMt2MGdktTyeNlVkdg61Qhs52IRJMT2b5PSmt4PAj2uF9y+LtWI7h5srmQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwm4TC/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwm4TC/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75DEC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771445693;
	bh=T1U5MORkAHYC/mh05rR6fexHLElEPxnrqUJdwx7E7fw=;
	h=To:Subject:From:Date:From;
	b=fwm4TC/jzOloVl7lXzJwDrcY24GRqrSvTffkxVftfywHSkmv3vxN6t2EelqVOI++o
	 MrCEv8MuIgSOrbjLAdHWYV5AH1T5ZLWLNiB6Iqd8Jx70mdwG0OuzKecuLMZkAZHOoP
	 VcHrmbuaZ93UIs6jX94CAS882ocnyswh9aGQotFgAme+s2ldsS1458qbXB38VftxEf
	 2tTeR7Ouc3uVRusrYNJYr76l3hp1nJ8PIdXB5JuIXASAOUXe25BNJsrOlV1D1TiEWx
	 FyVAbrQ0TaPg5z3H7/130aTZXnVtVCGG9JiL56I/b0aq0qcx1AYBVrMADW8Q0J6VhH
	 Q3Hk5Pb87X3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9595CE9A04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144569359.962.15444878073497844461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14a6edd6a805863ad5b2be8bc157d7644d0fe8b83c2f596a9cb6b0e544ac31d
Date: Wed, 18 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771445693
