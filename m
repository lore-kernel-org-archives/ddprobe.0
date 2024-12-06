Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB5762171
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733498154; cv=none; b=h8GbiLpgzoasReX3/g9xLa2K2QqV0f2ByFsjTquiMV4H1QZC1RHc302Rr+Oo1psp39HADabN8CKMpRfhYIUZpJmtU9kfhLxHoLPSlwgYtGT1ml/Mx3SiycjbnZYr92KWm0Y11h07xeW++KblSWUvex4AHzAlu5Q+8F3osJq3FF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733498154; c=relaxed/simple;
	bh=99jXAearkkPd0rRy/rGaFJEizt0ZE/bU8HBRdBSFnh4=;
	h=To:Subject:From:Message-Id:Date; b=gFdEaB8YBxzyZ9Po+0W7toMr7Nf5jlPp5gBHF06vnyzT48omAdujal4k53QcvsJK4/FvvS9QR0YJ7O/jFYPPOsfvy/HIIXKO//Y8RaWLFE2H5hB8qmseARkFEkccG9yV9yPpDlGFV5utYteYLW+i38CZyuTMVj+MaCVzki8dfiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOGTmbTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOGTmbTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7073C4CEDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733498153;
	bh=99jXAearkkPd0rRy/rGaFJEizt0ZE/bU8HBRdBSFnh4=;
	h=To:Subject:From:Date:From;
	b=uOGTmbTRnV/jXYKhkuIzBW6Hcv5jsOkFd9qyhLe5Y0p1WR+8Xq1KfQqq3JdVI9VR0
	 1fmsy2Tx4jXljm08HRQ+uZsPgr+VMdrhJehyyorXKv+VSjg3gQ5V1oFdoFTWomDqsc
	 0dBTtaF0kgESF01CcwpO6zOwZ7bk2GU3QIXC1hy1RhtXfr/IkFh93l39Fr7uRxfHMz
	 868AIups3Dpg8lMOpcefp7+4t4ax4CnEezHBrf7xrnp4pnBxmMplNrWZx4zHHTT57w
	 xF2sy4TRzl3eIQ4pYCY4zgR1EzxmL6Zj1yOxmRi0PCnkwWm9RjWDuJ/qntGg297u5I
	 RmSRDjqD+vqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC0E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173349815360.27717.9913913743667884554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fa1dd5e838dad3f4fa9608f1abfadbbd9b578643216d6db8475585b5cf816d
Date: Fri, 06 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733498153
