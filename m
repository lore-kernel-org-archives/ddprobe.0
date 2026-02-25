Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831719A2A3
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771992894; cv=none; b=t6HCWaRNNd8eGTruDcP9jpDN2dD+tzXhOeNyLNmgNUVpbLpWp+0DjwD+XnPZyMNrnDt9y51pJMXSATMdS+SvtDJ1N+M6mKREniJ69Bg6bqARVmCevIvJPFv5AOVkRw7t38ubezqAv+wzWKgNOLQi0fr19DBYOZboaqrv3fXOgZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771992894; c=relaxed/simple;
	bh=cFbqKqX0oHDdZKJ9PbvB0SDJON+zRqAAky8LfyXO49M=;
	h=To:Subject:From:Message-Id:Date; b=rwOQJabqWJEo4mMblW9anuoQbCrclztwGZCS3G7OP0bj0RHnh/pEP9yMQX1tGPV+jVJ+oJ6I/JuqEGuguuhLUiBlz6HbjFv66k1KpuTPZjBtsSbtiedmedLDx0PH84my5/NBVvUOa7eVNOtbJ3e5p2blafR/CszF3fnGAmnQbm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DltP1Nun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DltP1Nun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771992893;
	bh=cFbqKqX0oHDdZKJ9PbvB0SDJON+zRqAAky8LfyXO49M=;
	h=To:Subject:From:Date:From;
	b=DltP1NunH4v4x+9+Q7FXFLhH5PzMe4RaSkfHbYIokugtPQiqcQgDtrAq4QefzKIHN
	 1y8NWL65M9co8PB/rceTARRtw9h7nt9NUTaXeRDNZJDyHoAxGotf4RrHzE/eht2PE5
	 APfcQ1+fO/ak4qiii6+u//4/QkKkEbbSeihYMsj4b8kSvOEUcmxKQpxXu8BtUJeGBE
	 1U+TuoCC60l5ZI3LQQnfH2fZof3VuPcbX2ruR/WUs4eHyTmLPWMIz0MVlaJlIdcjyb
	 qqdr/1OKI6/VEhXWLCdoyBSWYAnHl+aUI0bDE4JzAUK6z7nLl4ARErBEkBLQ48ESGk
	 hu2t9m6RVH6/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FEF55452
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199289358.10758.7257896291839089537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455af6040850249cca5daf277429919f9fc96a17e2ab6674d403ea3c0bdcc8be
Date: Wed, 25 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771992893
