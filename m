Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3E72F745C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774532694; cv=none; b=mhE+2bPaNKw3qDoZQ3h6NJQe5YT8551zGiQryjg5DT4ayjhM3UZtZHvUYGeKTi0fbi/lR1Lok2I6Sqi9ky+5C1ayLiMBTImbxO8zZY5AXxInW37svjUzXKpFkQiy3np4xbgQWrsx98Iwhbk1TeQSknLZz8id/AqU+ENsV9mW82I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774532694; c=relaxed/simple;
	bh=zimEzjE/iIeLXxxQ2qgASXSMR+OGP2jq4Q6G2Vt2jfA=;
	h=To:Subject:From:Message-Id:Date; b=Bwdwl327/S7+uXGgVxuV6q6QhofzSgcF+olwHaHq2apGz0giZ065hoc9QFYZKoIM4vfiiAEgOQuuNrts3uSDroFw26aV5IOvWYqcgvNtEnWSioATnfWJw/Bg06ctrvhy+wWQ82pZCaqotOTr/TMUgb2f0jq0IImZGdTwcBS+PcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZv4WZ0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZv4WZ0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774532693;
	bh=zimEzjE/iIeLXxxQ2qgASXSMR+OGP2jq4Q6G2Vt2jfA=;
	h=To:Subject:From:Date:From;
	b=SZv4WZ0z7OiQ+XUJZpaFOdV7fU237FX6fB2VRDbqeK/NXPXxqplUJ6JzXzSVp8+qV
	 m+PKQqtNanwiFuY8qBv/kntfSD073yzUj5OFZymTJZP60rMUUPQvuaCdbHvR4Ro3BQ
	 4a5IKMTEAWZbOtTwI5o8+QbQ4oIARpfgseiS7I6d7pHAPvmdFFzGw39XUupe/SqR0B
	 V8novUt4Zcy+1KGBLviA6lU0EwsiDSPZ5a7O36q7xXniOCEnQKQlcE5ZP/zz03kD7a
	 y2p2MtKnTrIx1WuDlXxagYLK1luJ4ge7zRChCT7y87YN5maEM4J8jRhfeFNhgVjanj
	 Y4zN7OyQTUndQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9631310A62CF
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453269360.6565.17629975164005777463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d43bbdd5a97bc64082e95b24ec617b6390a84a2820f579f3ebc6ea8b181f83c
Date: Thu, 26 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774532693
