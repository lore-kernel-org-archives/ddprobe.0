Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2592576026
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766118234; cv=none; b=YVSA+AS8CqXAz6Ojzep8f7SLt43sqlE0AvMnFT3y13/pyNyt9b4cCcX9cV+NOIDz0ZyYucpLncB58dKiP82/21Fsiq0GZnOnWA/7Ryd0LmPhndP6n8u5QvvhdbX6lQQ+6wpDI5coZ2wktq7zua68YzaYsoS0LVDx2bd8/3qkino=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766118234; c=relaxed/simple;
	bh=7NQO1JLUURvztk4VAhkla62FoMLDKl4r3gAl5TC+nvI=;
	h=To:Subject:From:Message-Id:Date; b=fRJ1E2JoC3fJlRY4h06zrhcmpwVH9EGf0PzrlKRNfkM5VAZqlhzsoDnX/+5wDDceWrz1zr88KxmZ3Y2kKfOO2zG5yFAg0DPmSJEcjeJUhl9HW/W9L3EdC//P6BdBh4bDmA5Fhus09r5Mn9gBXAyUN4TokmNP6KaLCAo4ZSnolDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii9oNkdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii9oNkdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD697C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766118233;
	bh=7NQO1JLUURvztk4VAhkla62FoMLDKl4r3gAl5TC+nvI=;
	h=To:Subject:From:Date:From;
	b=ii9oNkdk3aM9vHQVKIAZ4XNRQoqikCo0ivrJUS4KSh2U6MIo7HiqgqocrKwaY1sSS
	 zbvtcM1w+lQLsppcG67f25g3gazPAK2B3WRlptdmMYQgWJpgP+RGkgpOb7wl+0OX8E
	 3igQLp3hFl6+gqfCSOPobfdxjsTtWMs6jZYZJbvhXX/rzXAQIF041XY4HeLstnEoBu
	 iaUx62CrgbBXrt2s1RIsoFPTdOyF6mZ3A7QuyIH7m0D73e5MO8lpQ7hDvrph4zDCOK
	 dvLMxnv1+5txm+FYmID2QrBAtS4ojMtEHU8pn1mPRdprRj3S7JvFf61IsrS0gWXHS+
	 I3uCVr1GaK5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F2D711CA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611823359.1671.13520057649360522835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d0702d9c20b5cbc6ff320a385c5f1130980ae068ed7095817624b4cd7e28eb
Date: Fri, 19 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766118233
