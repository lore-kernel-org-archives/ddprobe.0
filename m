Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C3D1F583D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768954434; cv=none; b=XNKpxhNEKH7Tnv8fgN+NCadrigtPAik8DRYgiA5RpCUzzfEbcID6dkl/ThGdyDyLvdVBnELRXozroET3XIoBt9/zdzoXmZUXw0U0YSW5YYT8Ulwb1Vxg58zUxmJEg1VmnZ7ceMRPzlbUI3ppnzVGNcAWM6DYPIJy07DbtqKT67E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768954434; c=relaxed/simple;
	bh=+62j18xV9YLtRZBgY7dvlHpmdy7u4JiY2GPOYc+Eaq8=;
	h=To:Subject:From:Message-Id:Date; b=EnazEjzjXp1bbZJvQaYxn2QcdaPBku5NTRqdELwS2CDS0113WR9PYoYB2eNzsnJ7rEbKdQDlwXjtRfCaySBlMpJKHXkvlXjSRCupLdKissdFf1cTuhPSw1Wu1IMAFzW3TA75GuUCRsaOqwFR3/fUEbvM8rvw+17oXIPub8k9R70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnYbx92z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnYbx92z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B9C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768954433;
	bh=+62j18xV9YLtRZBgY7dvlHpmdy7u4JiY2GPOYc+Eaq8=;
	h=To:Subject:From:Date:From;
	b=QnYbx92zRi5Z+Lz5kajM5C/BRtaA0aSVZipse9fuoU1okBp7ODBP2QDcwTIGkeVHt
	 K5v468Qan6yW4msU1S9CkHlMGw/ooGNQiT+mm9hFI1yu/VNwUdJbPhTzr9/EnFl+cY
	 1s/mj3qllPiu4RXaiBTPSmRNjNVjY9SrCt7Ws4tNKbsTZr9/6QSs0KTQ7sr2lDgtky
	 cn12KpCU09Xo5k9NrT+ie1GnsHVMAUhe/Z5a+cRrG2mYqzk8Cfxqgp0QuwN75ZTZyU
	 y7JNuFhaW/EH+C21uao23ZA9g3LEHb34U/RORA3dpueo+EuUasJgKMU466DPzLlexC
	 5AV5k5i9IA/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90600D262AB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895443358.19449.18339728906156664402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48dfcd76c5d005c8d253615b0f91da1b349ea464cfa2511e19613947ee8b5341
Date: Wed, 21 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768954433
