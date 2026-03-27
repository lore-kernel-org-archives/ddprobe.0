Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075D11C8634
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774578894; cv=none; b=ZBGaEKjLGKgJqnoLq69tYX7qnX1RQlXq1wMJplvlAn+lYYQDYhuvu3VV2sFZR9OrZRSTGjqdmoLJ/JIXDE0MvnfJLVl2ZR4Kr79HHCgnGMVEziBTC/PRgpV4z3hrJ4L+evptP/BUHf60wN4ORV5uwxDobogoTg6hpRAwsogJTrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774578894; c=relaxed/simple;
	bh=KzRbgWjOMY29uU5V8CJMLeNTWEBuCGdllQ+H863TYFM=;
	h=To:Subject:From:Message-Id:Date; b=RqacmtaOKKh+Ld6/9SKsL4X0qlCN5hyyhmA4CcxYEMObEn0+qMvMBLcsQwYl4k9urqS/xQXhwURLPXw4oNxrZYhv7mdAceaWwhfpJ5ndNALyRBQh/muEnO9p1PPwlpo5sQfH8OIukc2Ne5HqF4TMFxNDfkrj7kv48O5ozFuVuok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbLXV+Tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbLXV+Tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F93EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774578893;
	bh=KzRbgWjOMY29uU5V8CJMLeNTWEBuCGdllQ+H863TYFM=;
	h=To:Subject:From:Date:From;
	b=QbLXV+Tvcn++Uw0cbRkUTUsFkipmbywdqBUXLsNgbn79UwuELMT2s4zVaJwBNxG9Y
	 Z9AbKps8QXD4alQRSSPriTtkkZQOfE8qJV21KSB7Pd0pUHmNwn9fL1jfuWkBuETdwh
	 8CwP8jUTThsUNCgqO8m8fon816JOoowKN4WBrsOu0TIY7s3xmjC7/kG0jEuaWfeyZV
	 Zag36bOKF4PHHVIM2ZVo976TZ7364SpqfuAZXNnhjTkiAZgJnyxejI7oBrhhvF3TbY
	 iVYUoc+8tBF8h69OZOXfeprbzQyW1D3HZ9jqjB23ehKWUlqIztVAViZUCvPtD7HmQ+
	 6R0EkvuLeo3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6610A3D9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457889359.19403.16173798171873714681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7965287996bccde588a52711ee6305672bc7936ad402510a79233aa8fca863c8
Date: Fri, 27 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774578893
