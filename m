Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066F22D4D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737050754; cv=none; b=VF7wlolGPHqU4vHR/xUvMbCRyByBZQCH/WxR9jfjNp0FswLwApobjWzstWeGKu+8CkiHQ3bqcF0ducYGVUHXmlXDy90HRvJxn42A9jDx5xPnqcIUE5lwB+2ihLlBCZaAKZS08KSEDNv+9mmOIRL3Jn7sEggkYT+GDNOdFH7tWeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737050754; c=relaxed/simple;
	bh=ro6zcWeFwb31icdOgnlvDnVNGlw6RHGdaR8CyAdj4p8=;
	h=To:Subject:From:Message-Id:Date; b=KNXvMUb7g4o62hejUaeCUfM0CmqoLHZntNyqeNSHmBuiQAZE4d0qhyQnPlzN8c8f0fWjCFmdgR+GxpHlpYXXvhGmoMu3mtbh+j34EjWwVnkd9xzkRRDBbYpexEBbFjxmd1jDgC6vHJTFo0Qskaf1u0fMdIxeIDptRCVhMZrqi+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/DY4BQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/DY4BQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F13C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737050753;
	bh=ro6zcWeFwb31icdOgnlvDnVNGlw6RHGdaR8CyAdj4p8=;
	h=To:Subject:From:Date:From;
	b=r/DY4BQA7r57YUyY+czeXOmC//AE/It7BDuwSLQy2+earDT3auMS5cK090tU8G0KW
	 gfrDqIoKkswf3JpXWq+VvG4BKUif2McLLesV+dgu6I6DisBSFuNrVUOYLAgxtzeqMt
	 b7O2PcyPHcY6jMXnvp71UV1AvZXl8PsjYfLuGf2/wDTlahOomAc25HV3mCKpebNO8s
	 LH79rnPREoxrk1lHjnmN8GN3+0Rf0w2xNwGhOxym9/rJpxjqFWQao56EY2cSJG7vhw
	 K9AlYluLoSs7l/Io5sYTSyanC9/ZYHRXt66NW0DxWgvcDp7rzuK/4RBYAq59HZHwdD
	 PN71C/AHq5hYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F7C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705075360.645.13351910406540941049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fec82a04ac2592b1a6336bb7b31447498e4deec82d9331a59f86fb707ce6a0
Date: Thu, 16 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737050753
