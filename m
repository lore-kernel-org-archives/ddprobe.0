Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1B312A177
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732979754; cv=none; b=Aku7zV6yrnG6eoip4A27ve/l1EF6VmwbpreVRRgdxhQ4tHDqg8eZ22HSXVrCkAUtPBLxV6aEXqlhlhqYkMWygMGOkV7XPIta88R7iX4opgvXu0eeKbmkwQyRNvk1Z6uGoeCb2/smyp3swztP23kiOahiMyIVI2357UgN3LJBmoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732979754; c=relaxed/simple;
	bh=JDv8/yNi51j4ek/uycLpGdQQc84qMawitChapECd64M=;
	h=To:Subject:From:Message-Id:Date; b=krdnafjP6ou79wfBMHCQ/RBVZD7dSflD+fsMRCgg+D0OkX0gZO+qFRm47GRToBrOX5kvF+UkRzNfekVTgT3Clw/NF8Cr0Hbk4KzT1Blqc+aqhBm1KKNTAaeLXH690ndlR1QLghwBWgjOLbeR4kN0sABdiRYk0w270vmdwKyrZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQI7ThHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQI7ThHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D5EC4CED4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732979753;
	bh=JDv8/yNi51j4ek/uycLpGdQQc84qMawitChapECd64M=;
	h=To:Subject:From:Date:From;
	b=fQI7ThHwH77DQ6j4UQxHtNXjB8lIEJTGLXCMXr1ncEwW96xo8V9wagtk9XxMNEpMn
	 DobjAqs4073Zlc0BsoJp1lwTDW1fJhhKVZUlHHYP4X9t/DNtoHIOqwLTeg7oJlUhT8
	 knTHFo5GwohpHxjvnkQ2ryob042FHI9SLBB+ILt5oUzBklGQx/ZjDf0iDWWdxu1E0u
	 p3bNe7bCUsb0zOpFinzZFjdakDvcOy5SJ3LXBaGN6I0xF4ji1tQlxKFSNAhyDEkfKO
	 +pB3IuoqWpQwEJCc7V3TufrdenRWqoio0bUuZLIF1zshtBBgccPgMKnrc9P8hA/aQN
	 ZlsNXEMQEGAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B5D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297975360.9942.3908842232980323078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed1b65bcd2cf0bf9af12d1b5c7a3fd989d9ef61eb9b70a2f66f4ed417c12f4e
Date: Sat, 30 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732979753
