Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D6828505D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750189794; cv=none; b=rZr48WFrjaUoaXA+wCRi+MZtxKiUjzwiLze/acgF3jHX4D0rHO2/xAATxFRkVwmyP9ACy2o/xaTVp2xos0/L3SBBM8T1JLr1AQ2ERn9F4hNNQovyoBSNvwrQhkOgn4BNHsUD7inL3UD2fHieeQYcQnymUFJHWK6XwmnhjdgOH1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750189794; c=relaxed/simple;
	bh=+fh4KWSdlnDUx13v4aM+5hxALAFIudb6zXL+VuWP7sE=;
	h=To:Subject:From:Message-Id:Date; b=h1yN6g0LljeTHfbtDCMjw2YkY44d+/mWQxvSCi7JSg/lMi/zTL24drprXT1TOA4MWTbtV0Oc/qoPZrRc/5n3eMeEGfSD98GocKXoOlCANNHJO0UNcyVn6wwC08EQsROe/Z2o0eAPeCaZFikn1UpME+6ctXMf205ZMy5LTnW2hVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR4+vmOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR4+vmOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750189793;
	bh=+fh4KWSdlnDUx13v4aM+5hxALAFIudb6zXL+VuWP7sE=;
	h=To:Subject:From:Date:From;
	b=KR4+vmOceua4MTl6vwR+SMIeiT3voriKJk/ptku0MRkBjs3GmXDo6I9ve5buXULk1
	 /fM3VOYTtdppqxAeH0sha58B2UkrGBDXyC+p67yIzPNKAoVkl1JX4XVpHvLvHBAZ6W
	 Q5FsIcbBlHjl4oCPiKFZk6wjrqZ4eWJXY9lIZY0OtTB3VJJalUp+FIgONW3rn6UNHS
	 4FPPr5zjdRwoVU0xH8gSd8wq+UWicpkEX5dUQkiILHNhSLSrDzuIBjZZC0gDyviWWb
	 OLlHmLnian7I8Pnt+wANHVmmOtxDsSCAwxH/G3dmUzEqKBlBVPOTL8nYPggV3J1Imn
	 8ZZ7Hk2T0hd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2FC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018979357.9516.1153668492702250629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f462279e98c27e0adbf2a42789aba3a4b9290b288103e02c638d4a5be8a14b
Date: Tue, 17 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750189793
