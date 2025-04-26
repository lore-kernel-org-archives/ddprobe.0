Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4169125D1EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745680194; cv=none; b=ODugM5ZdKx5FgWvBg8FD02X90m9/yr8C7cZC6hDnOMEP2z9dDrSzDi5YZuKw1z94v1IC8jKsX1zWV/B1i3eWuwCSDab2D7meOKt2ufbCarhNT+uv7E1OVvGwMMR/u6t5xti1Y1ijG8Y6ViZpCrwEhZ37O/A7zeL58gcT5t12rSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745680194; c=relaxed/simple;
	bh=69Fd5SOPEHJyUklbgWHJPTPPfopk12neat1VRQ5kZUI=;
	h=To:Subject:From:Message-Id:Date; b=FIcMlA6Wc6O3sCIg03JnIITVv9zVsfrSoXYuxOCxscIB0xxPol5lyKm3t1QV7fAIDEBNvCxyQ/yEitRmolYpLMFLtMAwQie8Qv8IHoVZZ0Nz8fSuIaytauRK6gXKZhmQ5q4Hugg5vwCASi5YzaZ0wvv1jh7NjP/sCoKvyj3Csck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBG6rGVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBG6rGVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2893C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745680193;
	bh=69Fd5SOPEHJyUklbgWHJPTPPfopk12neat1VRQ5kZUI=;
	h=To:Subject:From:Date:From;
	b=vBG6rGVJKnzC410yVjUQ7ZWfQ4URlqSiHFc0NBUApkpnWhiWcsKxxH7nZriI87ev3
	 P/A61dGdMohjit5hHHAiCTgqurY6jk8GiePLviLxDQKrfUQBFzo4FDzArPi/TQKdfr
	 YEKaPv+8IduYIiraEdAXA8iIPe5HAdD8l6MpQhXJFM+zYRWfwxuGh3KMKR2B6HwDo3
	 4JUDjKPVKoFJTDBqS29Ph7i/OjbaphYvGpkCWbheABjvqDnD4HxhFF3KsOlGz4zr/u
	 AJDpiDEBjvznHVDYn0MMQC5wsvllmSyIfDpS0vefYtsElRjKXb1w5a56EwST362hob
	 LTJNucON6JRyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D1C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568019357.31481.7092870637813597670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902ac48b3e4a3d40d7bee4d11e71a6c683c1ebe837a693b1760716dfe9c1d780
Date: Sat, 26 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745680193
