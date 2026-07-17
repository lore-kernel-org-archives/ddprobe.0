Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6481A2E8897
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784262514; cv=none; b=WKBKiWoQCO8R5NdGOXziEM3inkg4WOjv+2FHcGAotM6W9ulwJvuCXJd2Z3jIdXhw086IqEYnTyqteN8pIVD0nZWmRPRwAmDGHpe9DIcfRFVublCN3QrsOWemtbCDeTFF4incOKzd4G/j2JBiJoV4mQiS1NkY7ehgUx9xnluyEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784262514; c=relaxed/simple;
	bh=/k7s2nzpP2w33H2phdqanPK6Zz1E49G0zeNQ8Jo21a8=;
	h=To:Subject:From:Message-Id:Date; b=V6esH0UfrRFCc4d7F2rOVupNobi6FG2S5tZR8t78Tjr89GOq3DLXeXX41ocUjmfZ88WK43b8m3rM9giYOmFj/3xsEpVc3amQhLRIpAF+QjBHoSZRin5yJVWWoJKVOWOVhd9otjFMwymtYCHUjINpFIOephQwtvR00/apgnIrjQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrakorAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrakorAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EABC7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784262514;
	bh=/k7s2nzpP2w33H2phdqanPK6Zz1E49G0zeNQ8Jo21a8=;
	h=To:Subject:From:Date:From;
	b=BrakorAmUDsjYhRa/mySh20+b7N2mHQd1zQlzqVnnAoiQpKywZ5Ks3Bsp1RLt0G5s
	 wL69APfjhPyWM8Rhe85aDl5y7yuDmJ2fwEPQaSNeUNAFxk0txO4cMXqt8v1iFfh0fy
	 u4axW0BqsOrSJXXUrsxxehQINIbJilfbTinybaFSVU4WYXSNjb7fKT3VIXVr91KvSG
	 f18scyrFkQ222aDdPhrX1fOjAzhWxTB0AUscj46Sc3Pulp6/UWWFz9b5xV5wxL+a5E
	 1UfBKz1K10NavjX/2UT0tBJXbxC4SfZfqR2bhTzUfaIm0GOcfGUqYtq4EZfzjnSBJp
	 9qE6zYUGyP6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2181C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426251371.15085.5835962526021023293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89a2dd57f07f173fe784a9f676057c3d043673b99d1a3bf701a072798321aab
Date: Fri, 17 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784262513
