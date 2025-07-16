Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0735B28EA4B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752650394; cv=none; b=J9haPEOqyMJ9xgn0ilJA2IegPooPXoyDG7SqapChYmrXn5+RLHkOH8v/xuLnCyZB1whQj6SlCIWPmWsO+HIUIAQbBuoXUnynD3Deub38dExme/u40yfkWQK6RNqc+/75j+KvBG2mCUiOJd0dyFK9iRQkfAYuy5ZVnAGXPe4VRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752650394; c=relaxed/simple;
	bh=fMsCGZbbsmV5lquYNerZTTC/FXTLujORmtfrDzSxDLo=;
	h=To:Subject:From:Message-Id:Date; b=CpqHscKy5O6vYV9xANI4XnfICbhkbBH8UlXTLohb5vZXKibeUc74DJew0tmL86rcT25RcOiF9Uo85zNH5eY3Jdx5QuFGtWRPupPXdkoFCaUb/C2C1awOJOQ3Sg/YU0OOpYAA/6WPSbzu9Cx341FnA5rmBTNAjnqvThh1plYmT0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKn0t+ZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKn0t+ZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C729C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752650393;
	bh=fMsCGZbbsmV5lquYNerZTTC/FXTLujORmtfrDzSxDLo=;
	h=To:Subject:From:Date:From;
	b=jKn0t+ZGXvy9zuZROTVn6ebH/ZcXIpKd8LeIwwtTNci9cfwi0Im9dI5reUjLnzimR
	 QsZ/Uyn4hxk9/OXDaBM1RPDcl+lQR7y9iJDmAV6cYst2y/n2J1lwJXouoHdikBb5rp
	 Eg/SFO16J3xZf2PkrykAeNe2fgq1OaF/la+bGtwdqEnYBTy5SBfAQ45Y0MXoC5dBwL
	 8CCZfxzPYalgPQbLW0Z2AzZdiHMwbCIMJN4N2KxYQvxzwfBg0WkrL4PUTM/svsNhyB
	 eRO59tnLKdeH+/6c+NigCgwbX6vOEIy++M8uwrrGsBs3dSfQ1yPbYp0HgPkVWsuphR
	 4BESqS/Yi90LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074FC83F2D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265039358.22511.16734067914551523042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170e9b0afd90d95a4c2a0694a85316c793eac71a2aaf6c813ca16d637906c762
Date: Wed, 16 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752650393
