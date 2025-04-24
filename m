Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3901827CB2C
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745499594; cv=none; b=oOaiWyUZSh4bHD1PNguZn3p9TRzU+FlTMYAS8wvD8yyY3avTdjvm215eutRfEir+dguhD+wTpb6mLpEdXqzaUSBvVhPPOkgEx6ifdkrkTDuBfVtZVxEvpQDY91Mu/t5fG9LM3ofuUqQmibmiznF2Osa5YQQHc2foLtlsw97K888=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745499594; c=relaxed/simple;
	bh=Nz0JIarbPyC7pPiMXa7ig7tl4dgkbp1CnIThQZCtI7Y=;
	h=To:Subject:From:Message-Id:Date; b=hCKxPLQYBeFg5Cq07tSGdDXV0rcdJUga5MwKG7CHF6YAAsWYyFvz0l+HWtw1WPe6QYTdFC5ZhZszItEq9XGJ0bh1vZn7qmrQxa1UpuwhoyTQI98t7QcD8NzpMbhVpAj4rFun/ewgiBRcGmR4ag1E8ghNh40V6NGeInEuvaz/wPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFYCgvxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFYCgvxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ACC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745499593;
	bh=Nz0JIarbPyC7pPiMXa7ig7tl4dgkbp1CnIThQZCtI7Y=;
	h=To:Subject:From:Date:From;
	b=VFYCgvxdB7/C47A+ZQdE28Ci2Dxp3SAwlEmH+Jyuug0p31L0ZPEMIk28+1nVgT9U1
	 RP8nt+8yy15g5IXo2VABQrZLZ3xsUyV+U3FtDPnA7W9cwMoUWafJuBEtr4n9H7KEG/
	 BZBbAQeB1Q4ySqjyTV+sjiK9v5JDW9eIPFJlJXq9sib8ErzWFr5UGEi+DxxPKTKYf3
	 cXIgAqHuG0o5Dd7c+t2zv3uZzBFI0NDg8x83mHBPTDKzD84w9m6FchdpGhn8RxJD7p
	 3+QSFjn+WStuVHPTUNJpCoZf41xARyR2Ppqf0Iz//AldoAKkjrNLo+8BydkMrTjSAM
	 hzAfGfiePZw1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E350C369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549959357.15908.11378464103314896637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4371a8a97cb4e9414405884b711470af2b6dae3eaba18c23d7e8b37035242a36
Date: Thu, 24 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745499593
