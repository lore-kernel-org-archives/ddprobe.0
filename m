Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E5314F125
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743855594; cv=none; b=nfhDjZyx6QrUlUPanCylIL0J7rxelL/73E/UNDU/4nFi9WTaQzyZx8x7Ea3KL5HJiQ52f+4Y38MzMf7fW0IuQQEyyCcmOGcKnCvB+t0YF0+c92vgzJeb/4dBKeQ3x/yOK/j40yN2hh4JUzDg4CVYEUkqYbj346yPzj+vPdrZYxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743855594; c=relaxed/simple;
	bh=3Lv7F8rJmvdZYiAzPKpHj3uxFn/aBaUzhHsq1r+dqUQ=;
	h=To:Subject:From:Message-Id:Date; b=IAWwc4G2H98ch/2XhXCtDC3SBYxDnIiey2jRbC09SkmXDfGOnQDocTvQ3zPPb606YfC/fAtWfKr9wUKXbKjqwKk3t445JfBAbOf1aZPWcbMS6BHNfroW0QNxqe7YqaWycbTkP6hvNYd79Nonl/xN1muo/Puk/HZSOZBIXtLW9Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIHBptny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIHBptny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFE9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743855593;
	bh=3Lv7F8rJmvdZYiAzPKpHj3uxFn/aBaUzhHsq1r+dqUQ=;
	h=To:Subject:From:Date:From;
	b=fIHBptnyymnEEVCwvZrx091WjOyBl5/FBWXoq2RZoHmMbjNVmg+wtGtouC+Ech62V
	 ygWjwa1jf7uBiCjGWaOBlGXVX5s+8gB0IGRrLnlxOJUUC7iD1Bqa3G0YfRS4eoV9+x
	 hxC+R7hzo6YcN3s9q96sckf5nyaLgrVx3SH9S8MW7O9kR6Jd7EO1CzKiHzrhFiQIiG
	 LYGqrostA0Zbz8Er/wmH49n3wex14I/MdJVOpB+mwehPIS/D+iy8s1TXfUxzyUi8I0
	 A9p7nyXVFPA/uG2swdvI9E9KU2QmpAqFvWybF2jRmNrrlaEgPb/Oj03+bD5/UFlMqj
	 KsRGfmZ/HHP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6477C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385559364.24321.17286351135370510945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077aaa762daf01105a61db9a4df1843a600cf58e9fc47d27e1909615ed6eee74
Date: Sat, 05 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743855593
