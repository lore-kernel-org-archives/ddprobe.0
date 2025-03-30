Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F49A3C3C
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743347994; cv=none; b=YHetnpkzewJ3+yXdmnj4eoGtT2sl5dPV8UAN7x87F9L1wNuLy0S3aWIMBkRrRJL3QlYSPt7s+20+CyFpQhF9gK+e+tSsjTkIM+Zr2igoyE1cTP4TzorFZDeJ/Wsd4GuNd/guH/g5BwBwCs2HVALIDdowsBfWNMUW/51rtfmR2uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743347994; c=relaxed/simple;
	bh=D4NX3jyfJ74OlQP7mT+89qJsSncaBOTqYrK4JpwZoFw=;
	h=To:Subject:From:Message-Id:Date; b=tQ6G3lKkF3iL1y/LXWcrZdcs5DVtcDA0HWk3/myNcTuil3ewgIJBU9xMThIli8Id5/zUQmZz/FYIBg446Tfb4dvUMg7V93Hmn61822MmzBr5i4m+nMarRypQJ/CupXwf7UoCquneYmSAWzVo3s+sqvDgVBCY8VfkMGYFHjDmnGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzBctEl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzBctEl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C37C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743347993;
	bh=D4NX3jyfJ74OlQP7mT+89qJsSncaBOTqYrK4JpwZoFw=;
	h=To:Subject:From:Date:From;
	b=RzBctEl83XN9n9l76zoi0r/s6VNDRziRiH6g2djTcS16+zUx0xjOiqKPOHm+CAsGa
	 H3xV6dDg1q0IaVXVQ+lE6Rmp5QywyJ2ogP+cAVOL2QnlPKNzorzhtmAWLbA+nr9G1Y
	 z3j93A+RtY3JhrcVPT9vRRbFCD4QCirqDtMzM+kroPis37v4UvyITCne5nRiTv0Sps
	 /R0be5fM67RuvLYw9kg45efF8tlYbURQpAOvOGZLaaMVSeGQRVJMaKW+ndN/iBgVGM
	 oB4c3a6gju9EGlCugWLIJASwELFfnWxOlIRQ4NTP//J5yQ9rP0Q6vJDn2IBeNhRUyH
	 CzzL3qJ98vdKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A48C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334799361.13351.1631486606815075454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971485d0c753eb03f5f33ed692e32d7648a8e26f386d8f501c19c828e15a111e
Date: Sun, 30 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743347993
