Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E1129422
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714536743; cv=none; b=A2rC5aEMf0sZl0L4cv825rqk0s25F6RPBh82c4GaorA0cFJFP1yLJ+FFVhHdusUi2r3bIMsa2WgsYO7iIqLNFl/BCE/spsLBA3xR1l1dLGhlXNJqllaVgK7zK86rwAkpWbkHnuIKPg/Xc1RC8zkoih32XgpkwA0fsQlHFpCmvhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714536743; c=relaxed/simple;
	bh=dcm6frEFpHt/ygroFsdOYzDL0t1J+56ZzspawxNrMbk=;
	h=To:Subject:From:Message-Id:Date; b=VrZpBz4VxdT7XyJA+tB5WIIVLZ3dMRZh7+tcS3inE677zNvp3gJM4wlUs53mvi5BYNjJDbp0+9ZjHWSA2uCcpJg0ePDgl7dpzs9HTFxM5PeouBA8sEeQUgfQsW7P7SL/08+VHBWednqXbbHZeiNhpFqW5ZCGQHWe27yLfxS1ruE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U88Df0O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U88Df0O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A7CC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714536742;
	bh=dcm6frEFpHt/ygroFsdOYzDL0t1J+56ZzspawxNrMbk=;
	h=To:Subject:From:Date:From;
	b=U88Df0O2stHG1a4TWPLXfwrwl/v5E+RxMDo3IWPPenFLFdTiskKNC0ZwtGH6xfKCO
	 0gkb+ZeOv7OBcYMrOiiGY5luLGVpZXcIk56cQa9VyK9/LzdJbWL/2IjpvJsuxURN/h
	 8XGHyryxfLiENstkAH1RQ58tvMZ+/1kEDgVZiOIVdk/+e+GEaLt28AcbU6eaLHPqdH
	 3DaHnK8Uj8gYkg3ziv9B9FY1gCrHmWXlrBYyrTSC0G++tpMtPg/yTBoRpX9FjWB6Xj
	 E88Tb8+JNiekS/cQt44GVAq1OyfDc7qTQKGqLvlwxgzJqj0D6Z5IkkcAo5yKa78g0i
	 0eQ6NdAMbTRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAE5C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453674276.30623.13514344099474102899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cc704533cd4bcbd157a2c798e554627602addbc5ce194bc100c1371198d3e6
Date: Wed, 01 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714536742
