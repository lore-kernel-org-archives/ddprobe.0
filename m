Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E71B242D79
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766175834; cv=none; b=CB1hyEkWrzx6dWN20PXenOL+XCyhJQWiQ40EGr7h0HWnQrmU/7Lg5p7AvHZd41+Pl372oS5j0hax0GXz4dIJjwSAIorRVvnni13ewf9kqpFiqL94XAd1R32hy/hJQ5tl4HrLeanxW7Xh6fEj/oYbWVmsJ8uW5TY/snwVyCtrloE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766175834; c=relaxed/simple;
	bh=xxIzonw8wrAgOvNKvwi0y+qdIgA+ykkB+hHFHCngvq4=;
	h=To:Subject:From:Message-Id:Date; b=ryNR7Ilh/shEFeJGl6XUL7Skk6W00SDdGGnZ9B0xdetp6hB1ykYlFwlXFCVMnbOocP8Q4dhzPyCN3YQ7YfRVvbJU5f37zoXqs0DPoHpM+e4RDEJNLfjcShVria9aHotcca7vRGcFQF/vrk0Ty8ev3R8totalLu2bHHOQmatG9Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YleuARE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YleuARE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A254DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766175833;
	bh=xxIzonw8wrAgOvNKvwi0y+qdIgA+ykkB+hHFHCngvq4=;
	h=To:Subject:From:Date:From;
	b=YleuARE3duv61G6Zppxdrr1HUaCGvqB9i6LrbfM/AJkRWvzdW2VjKijzHV11cMhzP
	 S1DyWc9Cs8LTphIddjg2h5Gdak9uN/zEAdkTXuYLTXjQ+5XsEBe71LuhDOGliPijsh
	 d4ha8GSX6mMxwSwxVdmMwR86tszVBvtJvOSJbQleHfnAbt1xjRrkoc4x7ErePSWtYM
	 6951XsczGiRLBqurwJPczsC3Ms7O7PxMPtWawnsRNfw2e63DwtmSKsG7xXLO2XrioJ
	 Ui1k4L3Q7VMS0r/t6pTI9uzPUxGD4kRdmK3+TPBJGjp9kcxAIEqX/94jbZtwjWRfL8
	 lMATJngDgW/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5EE6688A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617583358.8773.14469452282425403510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38063caa02e5a14ac90e6dd2be1318845a0a42d055efd1a634b14e12b77bf51
Date: Fri, 19 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766175833
