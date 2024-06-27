Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907F018E06
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719462203; cv=none; b=bWqUgngp/vUqClm/0QUcOvqJmK0CymcXs2bjSQeBSWx2N4Hj/nzYoibblKi3iyJ6wm5CwFmDt/3neKyHHZNsXEhp6gSk1sugu0KHmque9Ym/5yfWbltdNNFxpZeODcLBx9hMWpPDaNcFOrGLHGfQFTDKG0iU03cQ5rA6lMkkoWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719462203; c=relaxed/simple;
	bh=amY9xEkIodrCCe4SZQYg2C4Gp8x46aOD3ijquhVA3jU=;
	h=To:Subject:From:Message-Id:Date; b=fzb1FXvq80N5psASPG4Mj8UnAYRsG4IBgLad6ReqjlCI98NmXE0nP3XFv4iDkTrNmg7slPNWnNidRKyT1Z2YbsNO0ZXBmR11l020wp7hun9E/qF6MRubBH8mPFUOESVA+ICxyeACEGxY/vxjWNI++raiuoTLQwvZpX1gW6DrAUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyxxm/5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyxxm/5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1650C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719462202;
	bh=amY9xEkIodrCCe4SZQYg2C4Gp8x46aOD3ijquhVA3jU=;
	h=To:Subject:From:Date:From;
	b=uyxxm/5YJ0MqGjZ9lbipW9L4N46ZKMlRtqdiJyN614RMxQkXJ1URzLtBMSdUNd5LU
	 hG7V7oYSvQ8H+NMkrwu+BeH8BEpTs5DDcQOJk6JjdDVLQzjZyT/iWm74xQHrkQZVkA
	 p/k0fuBqdEgla+wv3XclX0sQzMuRIf3J/yA+YA402eWGv1oOUvHBZcxgrbUHghxbgd
	 4h6IG2/iA1NthX9fVgStCyaGFTggpGnG0aU1NcqbbPObbSD1n9ojGvbGsOHmdSx7aI
	 BzFCTnPcEPw5t2cRJ9ZuRjJeVMnIOw5uM/COSOvHrX+Ywww3/QjLgQedTKtpZqSTkY
	 R8bu5vh6xw4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB35EC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946220277.21610.16658860038950650558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a77a11e0a1715bdfa90b03d9896435325e58d2d2bf57f922e4a6588290aaf8
Date: Thu, 27 Jun 2024 04:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719462202
