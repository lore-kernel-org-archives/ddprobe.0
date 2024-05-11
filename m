Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8CD1CAA5
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715456543; cv=none; b=nahRkcrND3N9zUQygxNjt3UIxB/G4iLSZz+c+78RMQRpLNtlblQCl/VyHzXE9bCw4LbuUJ9wUNPHrZM5JKjF7P+u/QEY7Pg1EsPhhUJvPoGQZvSSNs7XcWHmuokOugWkp70qBNcs+yS+np/WYhx0N6afeTzgOUF0IMTajcy5+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715456543; c=relaxed/simple;
	bh=S6ZfjXAIDTfLqUkt8AW/lCCuocWca+VF78gTUn7ON0s=;
	h=To:Subject:From:Message-Id:Date; b=RKm5v/twIldNhWN5B//JkRzFO/D4QmeyMlyDDQ8fwhM/DPuXITp6eYaFHoRAxmaTrOpfoxu3CPGquIU5KbgwLTAbeYu/Wkc0d2qgp4KzKNbkYGL4DxAwv051MMoGvoKLfGAJhtCuALgZkmebn6ymif+SBg2+26R234nzgOcmcuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLc5th7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLc5th7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD2FC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715456542;
	bh=S6ZfjXAIDTfLqUkt8AW/lCCuocWca+VF78gTUn7ON0s=;
	h=To:Subject:From:Date:From;
	b=jLc5th7eJIg97aMZ0pUPwmz8mUglu/l3/HTu1nz2ZDR2aZnmZmOC83h9GPfvXSfEp
	 jejTSB2EAqjWGSmLfTVP2mmQ6lOtKW8vYfF13r5xT2nrt3Rg7KuB5vsFVSynLX+/cW
	 BzG3y3VtTntOJt83AtRheSubbZkRQRg1PQg1U0BKFr6ardnwd32yFj+cLRcq5/759r
	 a3FwtZ7Zn0QgEEOtWf01cE0a3J41+a5sShRRYM6G/UBgR3Tjdq4uBASk3AemRlzEWP
	 d4n782986o3gECyb0Rt8z4KTMbtjP4dOLMRpp2Z/83DCIA7dwDE74HChfhtu0SmLKZ
	 bDMi6hUZuLvlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7D6C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545654275.17874.1630577650004030152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1c0eab33dc5e50ad18e56d3e473b68c514867cd5925dd80330353a5f623450
Date: Sat, 11 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715456542
