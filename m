Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF60C1A285
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766942033; cv=none; b=PgGm3LVgSo4oLoF8/ebt8MQqnyP+RBhoukDfbjWVF9X8T7YodnileDMTA0OTDZm9T4lwlnx+erKX9wjpC28gTpcgBqSd3A45TmS5tkkjY55b8W99LgABflE+PDJW8joSpiJOyToum0Jmaqr5Rcf2OmnwxheTRby2eDjrOmonlS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766942033; c=relaxed/simple;
	bh=BE3ObyDa5Ja+ZAki5ixeKj7kiHuhhMlPNMpDJ5W8wvY=;
	h=To:Subject:From:Message-Id:Date; b=RQUhSZMeUnc24561y0y5FjZ1adok1Dtkd+bQBNRFSPHFlW/lUnT07yhZXFl+F5m0aEzWSxmAg2oCpQDJYAYUqs91gn/HPFdCn0lJ7oS6K+YCQqIoqR+zjSRFaGLl6t/aZSaASNgI9ws7razM3Lk7CBzPFrMwYIti++4qeLivLP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYwbyeNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYwbyeNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB701C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766942033;
	bh=BE3ObyDa5Ja+ZAki5ixeKj7kiHuhhMlPNMpDJ5W8wvY=;
	h=To:Subject:From:Date:From;
	b=GYwbyeNfoO013cLP/2MF/VE9mksyM1Ju8HyRScOCxCoQf2oVfPMwDOjD1kf5Ke4dD
	 tAzXcnYcX0JGrT6Nhx7qNEZciJVX0lf0kTPUMNSog+fittvLa8CI2ZuiaO0C9RVTYk
	 31SIpLm/tqIvdiEaKcJ9K1RPyaO6M21ezAzGzC73i/MZtlHf0chrpyWFTCZ35o6JuG
	 nrhNp7JUr1MXLqWL6kH9AEXGy4csnIQcaEbIc+xViK3us07BDUKK8uKdv7LvCE+FwE
	 6pXgJMI+k4SBWNBnzFtfLAPIi8BdMb3EKPE91quVDgitJp6jZIZINfbqPwv73dcttQ
	 5o9pU+ARvaLNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984CCE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694203358.14583.5805026148711773563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848b13508a9c51b205f4963856e7d89afbd627b951cb8834033e1354edc56a24
Date: Sun, 28 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766942033
