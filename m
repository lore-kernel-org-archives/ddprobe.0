Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7F91870
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718474903; cv=none; b=Tm2w6YF5hyGNxW05pWFWai6nsHCrmvkeG5G7eYW7fW4kTPIYNylIluFER4lxX3ltxM4U1m+d8UXMTIwBg57gFnNN7KJpPWqyP7OWob9X6M5CbTwIxNm+hKKsn1PeG3GzkRMxfKwlYY69i03CeUFHecfzfuPpw7uaBv1blBarsWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718474903; c=relaxed/simple;
	bh=9ko9gH9Uq04MbbZqbKBFVqqMrKf63yzKIMv/RIuZecU=;
	h=To:Subject:From:Message-Id:Date; b=cIWDYs/qqR+S9HrCBVqrOu1WXfLMwYGl5tncqOS6ibpTac7eJ9RHpKXVSrlJyHpNGMvDF4KcwyDYYlyEYn1CKvon9E0qgqDS7rLqS9u58Jlp4pmalo+WP9BXJJdmkrYpmFOHp8ZqmfKhsyi4KN2vSg1f2b0nHEFTxSEh/p8Tk8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/qamwHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/qamwHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E87D1C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718474902;
	bh=9ko9gH9Uq04MbbZqbKBFVqqMrKf63yzKIMv/RIuZecU=;
	h=To:Subject:From:Date:From;
	b=O/qamwHljxGkEL5B5LU5aRD9eapcNnW9zVuM2wugHjh4wEH9pT+A7yEowN4VzNjGk
	 LX4QaTfwaIzQPqG0lthRF2PmAG+4bvvb90S+R6fF4r845i4trb1mYASdSkT7Nv1pkl
	 cr6IixcqUt8/EdeFBmeDEPyYMyC7SXq8gfG03eKuG60HAddz8Ccwzokr+fIMVi75Eh
	 2fFl9DP7aBWaugtpTPSs0Ww+b08zaaa325/UKZ31vOwyDa2/Jj5r3uSHgCv0vyuiF2
	 k4a+m4orHjCJz9+YbtKWB3l7O4QofnOBLPJhnLKPFvDWxwgIm+f8U7B6qRdF/F21x+
	 eOwXBiV76b/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97ADC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847490280.2525.7357920219096481298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4065270568bdb04ea2d594b00270c8875d08b40ef6397351c2c2abab6a8ca6
Date: Sat, 15 Jun 2024 18:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718474902
