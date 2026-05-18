Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1191028371
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779062434; cv=none; b=tNbP+cZ9gQkvRNH942nB2BLh2QWR2Vuc6QJVy2G0vRbDiJHHVStcIzhfX/yMoWX9vhzB+sXgue8T8HSBLa6eq8hdM1TnzwGZgTeFx2euCEQOazbDGblgJ3R+7qBbGMD8VCvRs0r+J784vnMiODAiQVrrzTm7Gm+DayQ+e7i7ong=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779062434; c=relaxed/simple;
	bh=bagtyas5pG39E+JgdZlxqQ5oXWKfxaSgE3CQP/lMnLg=;
	h=To:Subject:From:Message-Id:Date; b=nPIQBIfEGl4++pD7yr7AeG0nkwBBR1Kpxx3aCXCg0VHneMFj69o+2wV386FQaZftOWOBHYZdXGFlsK8YMX9U837/pyXT8qEK6BN7JsHxfG1phsxquRfil3//GUlQSNlWGi4Gr6dTUlj3va/aS15vzLTOXokEiai0aHkRxw10rWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=us7/ER3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="us7/ER3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B796EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779062433;
	bh=bagtyas5pG39E+JgdZlxqQ5oXWKfxaSgE3CQP/lMnLg=;
	h=To:Subject:From:Date:From;
	b=us7/ER3H6RppFUzieksuMtWOqVfvEHB2NTHbzk5SyLE11QaN6byH4Ru7K+fOZQcTI
	 DNlIEIiCp8dJbDyonRgGI+QwsSHoD8Cm2gErtXPxk8PxWuL8QKbhmbQEvhxMb6bj4p
	 3sdV/g2Ng5jMULl/1jqN8E9iRiZ5GnLWESRoyV5iM2FB5G3sp6fdAuaqHJXCKzXnge
	 6UPCpYtVL5E6p4swBqeCaU8c9ayxU8qoHHRXu5aQ2maSaL/er7OkOhRXc2qJVG9izq
	 tLtyXkJgkaxyC+aGiMzz6TimBe7AdDuYnuo4T1uoha5hSIH6bG6+PO+zOTeyG5fCaS
	 LLaV+wdBviuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB240CD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906243369.6696.5021423402237246589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8909a3baef6b2242e34cf3e395ed8a563e9a1a462a9c30ac77766a42d4548b72
Date: Mon, 18 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779062433
