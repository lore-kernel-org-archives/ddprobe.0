Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587072E62CA
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743813594; cv=none; b=kfxVRbS4zlZf8JlUFVgRiOo8DoX4TEep8ihTFbva6Ax+8E4gVJPGXANvC0GIwMcvctTuwPJgWYvQue0C9p5oybGcS/BZtKOwKq8/3zq47RdQPIzO1Vm54JgATTVJItxuG0CQUmYWayMQfMKaeDqSELNv5SzR0q8kAw9hpXdUTBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743813594; c=relaxed/simple;
	bh=Dupw38fCylfQK3UKmZI9ERp0Rh3zIT6x2sN5Hmdb7qU=;
	h=To:Subject:From:Message-Id:Date; b=cJ+5wdqtlnOhQI5yy+trJfVO/ULV4icnqvJiHmzigSVjD2aiEIEgusxzGy0txxgKfcZHVqDd3ZFPt/9t11jz9SmLLZQOGsnkPWcmCHPqW21gir0lJpqi0rJBeYS60P2xjgjZ9riUn1PB/NagICt5Q+3mfBHZfjSBdI7cyfzMVq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZIsRV2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZIsRV2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA17EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743813593;
	bh=Dupw38fCylfQK3UKmZI9ERp0Rh3zIT6x2sN5Hmdb7qU=;
	h=To:Subject:From:Date:From;
	b=ZZIsRV2RtyPLs12EUQ8ug5X2t8bXrPAjTQLUaVi1wofS/4mf7IBeTu1p9kwH3ju7T
	 /SMtK5FcvxeeWZvzH3eJ9gb5yp6jH0SJfIxB9Xr32dJ3WE7wybmuopXEfQ8Kg7Pn++
	 KUk6rRMTM4w2E9BDd0VltGwkIZ16mcsyINo3pbWa07dd+macl/tdtcSbwn9T+lKK1s
	 AyoO821ad40mQNSYg+XeH8+MFiiZP56E6FEAbN+JbfIeQQAf7FcH6BLvPS6WkHcrYc
	 RwNbdGEwTos/4EkX6Z1H1rfYnzq5jvznmyjVVIW3CYyQyugu5/1efHdL4LzOdkPG2Y
	 1r+82bFrhtOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AEFC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381359360.7619.15033690881492059388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d48d42de0995bb0e61df9deffcc5d150683367842d66fe410bb34c7fa975b8
Date: Sat, 05 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743813593
