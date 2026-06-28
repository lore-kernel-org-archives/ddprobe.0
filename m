Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CED329B77C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782688714; cv=none; b=E+DlEsagYJ57plFTdwSeP9VImU9leFIzX5Ll5EPWbxJvh8wzXEI+tuLWa/mde4NLv8oY7yQn+R7hBfM3bYAL/7DOjyq6E+6nam8vNsfUSS0KyK+C/WeYfrcl+d4xOQNdy7xfcyvpp87V0rY2yEArj0qGqDCMKi82PJgKldthhQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782688714; c=relaxed/simple;
	bh=KPX8kF8EXyK+IUX7xfmZ344Y9G9XvrDwpUlW6otyPSY=;
	h=To:Subject:From:Message-Id:Date; b=ou5MgmWP60H0NuwZNhldkapPLV8nj0iPrwiARJ+ELtDV/wKtWP29pyKBG2RgNoY9UHB7iJ9iwsKUhse3+6tJKwVUku1BnFXxW2F0hqfVJhl96DsuVuHi3rTSfMK7s4p3DfQMbFMG/2LksN+qEOUfuj/SKSiwOLOcZUaPWeImSfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/VWOzz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/VWOzz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CA5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782688713;
	bh=KPX8kF8EXyK+IUX7xfmZ344Y9G9XvrDwpUlW6otyPSY=;
	h=To:Subject:From:Date:From;
	b=T/VWOzz2+ISeYeC0HAqDsUX99mwPVD5SeaqnN5LbUNpCZx13/RFgxH5HrnR/oScOs
	 ACk8M3EpKW5J1cim0Onddxe+FU9JIK7fhuYCYQdVCsZdJAKPjFHCaKME5Obp0TeDUx
	 m05EqTe6X+KPCjRM1Q77qjCOVAdeWrUT23/1zLGbAxsXpcf/IAMLROJaZ8f0r1Ru3m
	 Llb87rvyw+JSgZjgLQx7kcKf+mSZGtSD78bZUyYpS72UGVJUi0xf2X4y7jeeMfq+jA
	 lmkzgzZmPIZ1QlfRkgUEYa8FNw2H4r+8frrGVfDyLNHUbqFhvZSHRF9o11bRLPzwUF
	 vop0xjF7rjLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09E2C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268871368.29266.1313842534847444486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95d9600fcd141bd86fc4a784b2a164e303afa542eeabc006904a3a4401b9d2d
Date: Sun, 28 Jun 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782688713
