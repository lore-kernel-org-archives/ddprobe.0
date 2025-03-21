Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DA6B664
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742582994; cv=none; b=oHE8kRJqor2MK2n25ANDN70qvck+wAnR5Z5R5CmAJCes0Q/RuvkEaipTHd1CAct/IlqXDmLJKFSEw0b5Js26B6GKH1umQpd6w+4Z2DlWhQ33U5KJyyv2RwdBPVpJquQ5m/I9LrjoB6esBeKDDbxd4a3VnsbCSGouGWCKBPsupns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742582994; c=relaxed/simple;
	bh=chKZbz2fE3rFu8uiwUYCB0T44Eqa/+CJbnqFJvYXp1s=;
	h=To:Subject:From:Message-Id:Date; b=hyO8KbMFlg3MPv0jFpfRP6Y22xaZUm2MuGfnOUTSc4PSMODuDlqui8PxGJHLDs56FVtHVQRC0yy2odnMNxQ+d+GoRkCQghtphTbl/8aQIuB2kUgauac6Kk5yxqYkxE31CqVKVWAv0HBxkUF+2r+sYtuNSpFaxceE4upFOlQsr10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNk18gTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNk18gTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF97C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742582993;
	bh=chKZbz2fE3rFu8uiwUYCB0T44Eqa/+CJbnqFJvYXp1s=;
	h=To:Subject:From:Date:From;
	b=fNk18gTIybj95+OOshLHMJEoNcqPZyaXH3VUThpU0HFkHmt8z/yQDWHRCTBlqVdyI
	 NAUV9MQiQ5X+LS0PDBPeWB1D1UnlIq+uNd/dCx9rzOzYZp9RkqxMjJQro2zOumgCQU
	 uXoSzRSVKqtXzTxVdfav439RD6+YZpGaXgWL0hd6PsZ71qfVPZiXZJ/V7sux0eaUx+
	 +Ut7iTvrhZD2IxYoX4onc30objebZpm4PXyRd5zfaWqO9JM0/N3gxbeHOb7wul3c62
	 JBAcN47j1l1/WwQ0ll98hOtDqwYEVBbrv4gbE/Mvo5hBGqGpRhlqJoD+lBdn5x+F/F
	 fe1etnLf4pDvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFBCC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258299364.4162.12696399600633097666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aa3e65420e097a82e4ff82c0f23bfeae6d6eccee3abbed154845dfa305d85e
Date: Fri, 21 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742582993
