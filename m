Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECA12F28FC
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767428034; cv=none; b=l+JAN6suGb5uoiB8wS3jAvl83bAp+svUAvVotLjDgQ1eMuV684pM9udNbG6BdKZiPkCqZ2d6Tw0e1ReW9bvY9QHVcJRO9Bz13oFAn/f20VHNZPSoAuD+503B5dQDhgJqs0vSwWu00XueTM3Lc5rvcjgjriNM7CWps5NvfxcVc+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767428034; c=relaxed/simple;
	bh=06inpf2l1KGJbFLMSTA4XSUoevSV4TGrnpp6tFcWKK4=;
	h=To:Subject:From:Message-Id:Date; b=sBO1HUcrNl/cwgSuCZD89Mc4hDQQtD4xl+ws5iQC6ruyHdDiV3/u7bk1LRdTh0Ae7ktmklSMTdgnZU460UeMeZwTu6dXTLIUt1DrcWpd+eTfLJ8TeHx5m9CLdm2SU4jGP9hIiVPERAYQvfL6RZvs4dSZjjFpqQK4IGdyLP9uXlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfRNMSKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfRNMSKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D585C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767428033;
	bh=06inpf2l1KGJbFLMSTA4XSUoevSV4TGrnpp6tFcWKK4=;
	h=To:Subject:From:Date:From;
	b=QfRNMSKimjUDojkmKif2u02xOfnbhCeyQ3agJ+QrZ8aUE8gdbYsRCAEQQwP0HMQt5
	 frjf2EJRlTdP9BztdiEf3Dklh6xEECD91X3vgWkmHaGFX4Jb5djnDzEquYajNEAgoz
	 wgmfsMapF7ahw+w6hfV5QOxXnpGc6PiZsyeBLwGOI1xugU4g0sJMc9jxy0HKUHcU7I
	 hYtk9gojmASy/VT+Gpvd+gf0m7X0OXo1sMaMVu5DAPOxMXvPWlf++gIcsbIijBalYA
	 gDRohvc45lTB94vVgIk/LUi8Y94Bx1YtcrDCcqpFNFtmqowsvcGwUcPH1lmGdhylgd
	 RcSwtX59Qh7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDEFFC6171
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742803358.1635.817402157992034281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44cbe26620374ade0dbf7f558e3b48ca54a86b75d46cfc838d5085b67a97739
Date: Sat, 03 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767428033
