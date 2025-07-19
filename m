Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1981C147C9B
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752898794; cv=none; b=Lb0UvaBk0Jr7zz2WfOUB9qzMeAYU5CtEQpSQT4Qjo1574cvq2dVRIaACAk1Pfr1Ln602Wd84HWRdK7OYxofpgmIr4n3SgeYmyDpTrhtMsnJZ+fFcjPFPkfrouc1ggHfUMTjJXvPw1HPMvvYuGCytoyNq5gYwNVTlJYZX07cC2ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752898794; c=relaxed/simple;
	bh=zgrUYAfUBzGPVSBpmMYNf2e9+VdVaNCLJhFApzwheJA=;
	h=To:Subject:From:Message-Id:Date; b=isi0V5of4iHKlkKlxbD8pBrdrvK2q8431l0LB4ResGK6kVOUI0butDSKbFlIEdgx0Bhi6b6Q0Dn9N5fYfkkPrlz2jndcITlvwx4qRfvB4b5DSdTDd4XjNgsLOYbh7Gkz5Wh4S6qZb/+xNFKzysOosKCAj8xmjDhuoJpUCTaYcsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWz34viH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWz34viH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752898793;
	bh=zgrUYAfUBzGPVSBpmMYNf2e9+VdVaNCLJhFApzwheJA=;
	h=To:Subject:From:Date:From;
	b=TWz34viHC/VX8QOat49AvyK+0ZpNknaONwctZLQH9DLDRAh/4KpWgKynCKFW6kjuw
	 wuaGWAaFlZiVBt2c0JyjZ85eTgFmMFq7KVOhG+u9txjLjfJZx9wLWHWZhn8GExnrX2
	 QnnmVAnaZhSEQR5IG0D/SRcEIoNtSUKdc/QL7fks4rKlJubG+TSK9aSZLBtNSVMwnX
	 fgDflfmdUkYquWYI9uLSfUUdJuJs/6FuusXoIJVAPNuSZhUN6EtI2hnVDH66M6O+Qs
	 EAaNGvq0M54WGgyLMGiVaKtcVu0OqP3TlAWLwttNSSghBNBOO/CzAFbK8XS6zAweoH
	 A5vyqIaNNBmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91435C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289879358.6609.4251254491276874808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3dd89b78bf3e39ecd8b80950afc3d7f05565d5dff5e98712853438a0c6d823d
Date: Sat, 19 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752898793
