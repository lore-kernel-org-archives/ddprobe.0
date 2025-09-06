Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489C285CB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757150994; cv=none; b=o45dQjAMWwxEUShKShAf5h4PQiwVBF0ETOqHYdt4ykiQKWDcCQkwiGysaYRbnduzkaq9sBAGUh97sUTRqhdohr8eZO7C4w1q/cGzV4M9ajN3exYJEFc7jj/YzPi1aPUbeMk4ckWqa1p2RkB550QWlJS9x4TzW0DtKQ1xG9qBASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757150994; c=relaxed/simple;
	bh=6HDmAGnWLeA3uW27OPMwklZ69JDpyM4lc3CKW82ckJ0=;
	h=To:Subject:From:Message-Id:Date; b=cw1ecwt0V6VbMSsMn6iektCPW23JJapLobScgzKIBfmHiWU2UAbpWa6wMeII2R8mjOhknvbKrFrqyGE9ZIkb3usbflJQKO6vQVZyuxnENUspKvgD2fD2FBmZFfzY8kP9ifrR77dAY4K3Rt2FbAaGshq2oiTWxPr+P52MZzLixqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR+5cuec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aR+5cuec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C04C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757150993;
	bh=6HDmAGnWLeA3uW27OPMwklZ69JDpyM4lc3CKW82ckJ0=;
	h=To:Subject:From:Date:From;
	b=aR+5cuecGX9ElQZhDIyhlfvHFgi3hKr1WdA5CBvAThVwWs75R7vHZNykjQ2/tcY5o
	 rFw9NldjIYyxUvH7OUAFwVT7p1Z0BYT8Ce/9DrirEdp7lZ1q5R+YpK0vVobkfGZLyQ
	 kmo2ZMNRYftV6IEsZbMAgHjegMjIrvAviKQ2+nW/XKPAmKHoNuuvJlBei3/61fBYVN
	 kOamJFB8mAa3wTFYUWxYyb2DBD7AdL89wK5wuttG8Z+un6glBCm9PHFrtMvd0ste55
	 iB/X5MakxYYwDnAvt4dKveh51X7IwZXUk788zaqUicL0VgGTim6nbCpb8Vp75gyKHF
	 LR2yuN88qM3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F542CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715099357.27946.17879300462167097846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad18e2b0e6b01be834c61e2fe7c8e9bc7738a07be196444e6db98e8bf95799db
Date: Sat, 06 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757150993
