Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D764207F
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740116334; cv=none; b=ksWIylaHzX9Qs+BEHTH4pmlwKfslp1ms95yMADhqSM04E0TJUVD8/XD3kkN4rNTs86A+fk6V9TX4GnQXNVqgrMvk+guBkxmUO81WUveBlF1Mru8TT/mqI9/IXDmiTivMq/8Z1+S3k8PdFWGOBzYtJ8FH8MlMWL90MeM54n887Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740116334; c=relaxed/simple;
	bh=hLtLp/m+GmZNB75A0Gs6S5DBrYtc+8bH/okeK+9k/bY=;
	h=To:Subject:From:Message-Id:Date; b=t2qDby01EwxmylVGPmfnYyLtbJgv4dUFSAdiUMjxEF3ZqgVq9XJKnvOvOdmb3lqByW/oRMw2j1JyVGJ0V34IGWE299Qm9KePcY0qP+FqSJZLLrYNX/5lqimsDXXW/9ABkloxJ7Wq6DbTPi/kuiQzSmrIcl8xYPiIyIranAtWrbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRkh7F62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRkh7F62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4A5C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740116333;
	bh=hLtLp/m+GmZNB75A0Gs6S5DBrYtc+8bH/okeK+9k/bY=;
	h=To:Subject:From:Date:From;
	b=aRkh7F62PH/h5QRDPwc6QV4fG1T5Vr62Syn7n1ugZjDG/tv40H5HZgUEv5HweO0BK
	 DL/RnLA061L+s5Yp6CIMT4GuW4pXb+3ksU//RLYMPn64q01ThrqXhtlx15rt4UKqrA
	 VEFDrr45yKNkHVXWgc3GqRj7aFmXVPpNgbZHYOpuLH9AHdHDDYoPWq+zabS2/bYm2V
	 Sb2EnfO5+vgAEB8OYtfwK5Djs5wqzHcAwcURSfFohpUJ2AK8Y6urAuuvcZnSA53vTM
	 8rmS4tEbVQML1aO25ZTIYQMw/Vz4HKc0bii4vXsb8cheGWExLZOT+CLauY/FTyBimf
	 Uipmjoqb4FFag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98094C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174011633360.13471.8321050031909374041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f386c5af9694b980a584242036a04c1af0b05d0de0bb950b95f1580e4c1b3154
Date: Fri, 21 Feb 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740116333
