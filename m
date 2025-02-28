Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335571AB52D
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740770934; cv=none; b=QxTTDUx8BiRTw4XtgCw7zi1oaq0PxWBO34DEzHf8W3PFJloqMDM/MNoIQjjaT8rGg/FE9q5HCAKWvF/FPlbO7NaJZkiP0gCmWNjcvWhOcPw5gYYB/2IsRTuKIWYfXAnc/WAlSp9urYQjs1UCGMJ5w/odYx5Jd5Jj5B5b6L1f+7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740770934; c=relaxed/simple;
	bh=SrWA61PBV/2B8bIszreufReR6+1VX6e16hhVY9pmBeQ=;
	h=To:Subject:From:Message-Id:Date; b=JiyHTojBwDa4lDmh86sG2CpYZzTl2ySU5xsNr68xhkHhQF2wuX0aZnEPUFWYjCLUC3IeVdmEizXMKyBjhhjDVPylNIW+1Q0GtqR7l3GHOKL+pXDPcAQooSg+NUBfGeeaAZDHrz0E0VRZ38m+XuIh/XYJRNR/HyHMFf9CL3yQyIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dddX8oOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dddX8oOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC655C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740770933;
	bh=SrWA61PBV/2B8bIszreufReR6+1VX6e16hhVY9pmBeQ=;
	h=To:Subject:From:Date:From;
	b=dddX8oOBQvEuP/jSFrpswjnLO0jB+Gct4CUZJ5n/9cp5AhcSM+nUb/A+OnSpRmC35
	 KbMXDz9bE1+7+Bufl5x6g7lU5DMNmVANWwlYhic/xUmK+ZLLNxTf12n0XZnCBIP4W+
	 ZxVc+3chHTeF6v6oC5xki14S/OY6RzcaT8Hw6AhoUW4AggwHKYTgtj8Pi2Eh/KT1vO
	 51dTGxdhBecqlgiFBl4iJJCJw2zsNKBaofGu6oGInd3TdspalVdoRvHUEDVtPT4jZk
	 VgyjC5THf5bo2vcA5GdrwKgvFWhGXlRpF7jM+OzjlPn4x0UxW0g6CXCFsDlX3ix0Es
	 xIVtVmBi7iBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9905EC282C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077093361.18891.11431911701119934241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0814e923546aec9576ea9e2d7f5058378eb1c1dd47c8117329511d2c0ec5e2a8
Date: Fri, 28 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740770933
