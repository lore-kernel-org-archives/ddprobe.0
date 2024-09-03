Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3843C1E4AD
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725372954; cv=none; b=JWVGCkwvLyjkBMGJbXawrWGf+0Kyh8qPzZehv5UhjQbryFwKYcI+DuqS+L/eRf9cbjLgbDquaQBYJSvJc0kg2bV5/d/NYEQOgxKdrXsi/5EhqHD7GR7U4uZxeJQpSb/0b86hkYoOvQNUfHhxoAMdZQjYE99049J7R4A4WrylzwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725372954; c=relaxed/simple;
	bh=ip/KvS+s9ZL9V/AwKXED96vyFfBuNl+v4d9mx+AwmsE=;
	h=To:Subject:From:Message-Id:Date; b=sFo1s1bFaM6Zke4sgET/I6+Ml7e6AZVzTLIkEYuTKFRctj+QXQQtgybvoMApibs+24521Curo4ulYCo4n4E168ZPkQb/HZeSPAqb0FIQpMW4R+HHbzhA3SwJD8qh5hPwmozNkyO5Pmm/nztrZCevqiI2XCrqzuzP+HA3L46kYUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecbAtdUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecbAtdUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7655C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725372953;
	bh=ip/KvS+s9ZL9V/AwKXED96vyFfBuNl+v4d9mx+AwmsE=;
	h=To:Subject:From:Date:From;
	b=ecbAtdUW6RWdjBu6fKQYe58l3vWNZZxBi8dcQfDOI6E24qa7r5zNHGnQsfgpNmcvk
	 wsudEDNYCaXUr10DvZzD7KeeJOqut6Yol4Jp8nnt4cyOyKT2LnTuOxvQo2Pt1NmYu6
	 dZAmpysmWHIHIq8/ZLlMljISvnX0AcELHsKMG6eu+nP2JLfcAXty61m0D4qc5JSr7q
	 sHY6MWYWR238VyAsP7EY6ffo2NV8JJV5afPmhWeluyldxuxeJafwgNEAB5gQDlVjls
	 k/pK+KAI4kQ7b6BPijPI22oJeH1Rm1va7eDriDj6hVY6JVzKKpL/eYuiToj48zuvrl
	 CJrqXuQ5ek3Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98817CD343A
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172537295361.23226.5006914495602721726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9c8dcf2b1bf5fc4f76e7728f43cdc0afcb50a9754198eb468a6ed8e212c330
Date: Tue, 03 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725372953
