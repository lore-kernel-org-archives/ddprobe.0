Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C73C3D9DDB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774343094; cv=none; b=NSYss8q1Jfc4VP8QkJTeIywnFNCfNU7GCzWsqRYo26Z9ONzjaU1130B2RUM9fK+JisStadXqPCcC8lPw3WVpFJJRB4+A7VPqx+2nUEXFjhWN5rRzSUpswQHG5+UOiZizl0RKIbcnZfBE5mvbNAxq/ibrmLMz+gyfeJWj8tikEVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774343094; c=relaxed/simple;
	bh=K6YsalQaAxNTX/z0W3QP9mfpEXgNK0ie00UnYNRJF4w=;
	h=To:Subject:From:Message-Id:Date; b=OlaUfpZ1at4PRH+Bf7LEwWJaovodms8vUIhA0b0YHPb2qUwkVpXB9DOT5ObsUFWw5V9f/KdfMBPl9ah2/o2BzsNvAFSm9V/NFXdEbBbbrK64MzKbNYv4Ndamr93isXROsfflIj8AWAufe+4VnBwCj0GW+sT6z/6smPhmDY22Ufo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzamOpnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzamOpnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE000C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774343093;
	bh=K6YsalQaAxNTX/z0W3QP9mfpEXgNK0ie00UnYNRJF4w=;
	h=To:Subject:From:Date:From;
	b=JzamOpnQHgdrXdzdLmoj4mLTWUXplZuz1T7H43ChaEhNi0wYI+qRrPUADMGd3O4As
	 889mA4E+NwO8t/im1uxoysBOap8jB4U7Sql2zB86JaGe4WjQlolYBVkKAVIvaTSZPF
	 LbI/h7QuooNwkgFVjbwt9nV6rKfB8M1JBGK+X6BtrMpixt4aAEc2fWFPBU/OHLdetw
	 ze60bQ/gjlMx76/AAursEq6d5QpAMoZEhWwHzv0ZDyoCvvvsvEWp6e3V+iM9ASn+++
	 f6u4qLW82w8MOqpQpHWZGyp+FInWOZFwkA7oRCIwwNHebBHod8zTvX5in4QsBl59h+
	 0MbaXKZZ4CeHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B184F532FA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434309362.28946.16877940999148855457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df46591dc5232924b63d21cb0b9757b921091eb51867ca7b561e63a577e2e82
Date: Tue, 24 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774343093
