Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5484D02
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753054794; cv=none; b=Umk6+TmeHDV4tlNKPLjAlLRSqweKTQOZn8JOdwWG6yXBYUhTob+8dmbOEp7oYRPA+SYd03YJvJTC7Y56omXfN3vS+UVAC7G5pLNkWNeQTYQxB57LHenUQjPvrGCxgVPEDt/cyZq+uo1T1GJYcbYUIIZy9QmCb9Bkjd+sID3Cxzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753054794; c=relaxed/simple;
	bh=gc7KXXFG8Zsu/zhBZLFBwbN/RfOl8GDUfYbCkiuTMeE=;
	h=To:Subject:From:Message-Id:Date; b=X4D1A+CRSCEudAV1jUXOa46DDscx/q/s2bEfeUXucyWfXAt7B1IQE9QOjzQtPoPDXh8pV9xlNiT1c0JH4jWl39NGDWnG6pmYzxmgFMg7f48Rg86MFk9pR94SohyDSbg3FWt8gjjefEFD9w4y3QSSMzrGi6QGAOEaQjgCy5rIbno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UngqlhMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UngqlhMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB0EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753054793;
	bh=gc7KXXFG8Zsu/zhBZLFBwbN/RfOl8GDUfYbCkiuTMeE=;
	h=To:Subject:From:Date:From;
	b=UngqlhMSTsZ4wpxDDdaND1OQyPjnvhWmP9WI8APMd63ADcT8BmBmFKXUdvrnvVw8G
	 U0iui23AyBhdHcdeyAsg4b/9bRDebjCFjOBcxZ4HeEhT5n7VnpnC0GtSsNYhm+cpkK
	 RQyD2Py39j2CmY6NMYam8b/aqCKnF7CpWHHRQAXJIbAjGAAZkPbQBzPlefm25gEXrz
	 tdh8t5U+YoaUweZqgu3axj859xVS/UcpU86sOxVFI+zVz8+E2U2C6nJbUBrv2v4LPF
	 aCKfJLRWBJKnEcuHe6aa3UCS272Lh2R+aMnoLmBOv4Mpu4q/fcUMLACQf92VsPmj6N
	 RV+4MBXsKx95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C4C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305479358.16551.17246209028470331929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62872db8ccc9047eeba85a63c41a7589b5ea71bafaf984c54b1b86a26232a506
Date: Sun, 20 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753054793
