Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43184208DA
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726296954; cv=none; b=BeOUxNK0VdHFsRX+mTQTcM2/GvrJ3ydhvNt5vIffNN6R4K95X1PxmMiGnSa+Gy4AbsRKTe23DvAxkg+AMkpFjvzIXDDLGvIlzhS+WozSrQo4PiwP36ETgpxyy4bYjHip20XUBqzJNDMY6unO1/dF6SSDeW8+x18zEDclpH3D9oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726296954; c=relaxed/simple;
	bh=i+/x9gr7TBuSJ1///B8c0TRa8lFIpwvmOjYKJaDYiEU=;
	h=To:Subject:From:Message-Id:Date; b=DkT50J6UQ6O4/by0tzk6dnrUJQkDHOKUPMLjtGPoijFXc6XSBogTJpYi8cgb7Lu2YIWmmrymiqNbA+SS4ojaOHinrNrU7qJH0uWqM0WrbzNHBFuek6Fh0rLd45iP3o1LYzV+8bschAsiTJdtf9FUrBB3r9g8trkroQhkdrc4mDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtlaYNUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtlaYNUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7154C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726296953;
	bh=i+/x9gr7TBuSJ1///B8c0TRa8lFIpwvmOjYKJaDYiEU=;
	h=To:Subject:From:Date:From;
	b=WtlaYNUSv18Zr2K5Xe+HO8aaMHyaQX+sOITs/7G8TahxFegaPe99yxii++3J35+0u
	 OMlj1AOq4elL8s1bdQUzkfUreGzumMKi/P7fKjlmhcUW9Jyeq4HiurX6Zfs0eQ7b9H
	 3y5ULHIjN8gTxCqwixtOeyYmT22mcwv9e1MX6D5mvYNXZ4yiUpdUVm9Edr/emIcthh
	 gca1PPIo2X9CpDPrkLqUm4MEzjRdcbvBr0gVx6OJmhXSLUw/jqwoAFLGTIzv2XjQAK
	 a6uLxUigVbh9bhrk05Ld2PTDmiDEg6vDt6lt326YGJoTwPqwYP1nFPBUxsE2qTBfTz
	 0T7xkR7m3G+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9826AC02181
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629695361.11957.3980420187378206169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e8d5d9d6e7dc05b01e0d617d0051ca4bfbc028a63281876f7f1037139a61ba
Date: Sat, 14 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726296953
