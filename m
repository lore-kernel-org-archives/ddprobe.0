Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181FF78F5E
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753765194; cv=none; b=UWHymzFPZ9abQz1WjTGWPUXdlIkyrMsC/IJ4MNRAoJSUXspQ2sjHSumjsWU4JK8ubE+ujNkXqLH993iSgIpLJ7bAeqbTY9t2bMaJU6GSd3ntuzKb3C74i5rZ7bgetrzmgxDmYsOhzGI4OljQGiqzYZb56uvsidy2blVsmG5upic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753765194; c=relaxed/simple;
	bh=Umw+4WQMmiPep3zl6NqTOWfLFP0M4MfJgKQDW05T37I=;
	h=To:Subject:From:Message-Id:Date; b=NsdzGKU5MajIfvTvZSWWx65hGNuEFDw3GnxJgYggHXavzen1UNK3m+dh3UWrHOyybXF1mMIAx6Kr2vEc4MvEd1+49/iZbLTx6JtDA566EcautP0uisopy+8L1/hWk3QoxLajx5MM6Rke++YmJ+wYjUl2XN4BX4ZyOcdLQb0JLUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy36Nc3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy36Nc3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E988C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753765193;
	bh=Umw+4WQMmiPep3zl6NqTOWfLFP0M4MfJgKQDW05T37I=;
	h=To:Subject:From:Date:From;
	b=Jy36Nc3dZxIKEkMsekg9NhSoMKG8S5GMIImuN6bXYMYq3w/usgONDWO7Kj0oYs4Lb
	 xmoT5a42VQm5c9UCuxt6xoV+gQO68hgRXTyvWxCwvD//U3NARGkphozBvnL2sVmXLA
	 5bTZw/1BFRVzXTvqRRuAvkVigxlWj0vBcJglO/C+gGvNaLciThsVH0TlgwncSPD7Sr
	 EGjw7b5yuKwcyiEYgzGtpxciT7/h0XfkKyvoskMW02uKOFJt6O/yWvdPopWyQ2dqWI
	 /o2rAoMsbelv/lbLIbKRTZyIJHs2/TEnoqX6m6WQQG3bY6qdi7HpCpXZ+Bkd1F67Y5
	 U6+CzS2Ce3kvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFCC87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376519357.12523.17759785604992008225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159b45c98a64b12fcfe79f63a610a119de7dd21e3ba4116bb97b9dac91509f0e
Date: Tue, 29 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753765193
