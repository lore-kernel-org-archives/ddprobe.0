Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BD73B1A4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736516154; cv=none; b=rEm02Ylp8tYjT46K8VCbe86K0Z3F26kcmpt01PJLxn8x4Dl9jrj3Wsa/0cOaQpnGqHpHgIMIKa9y0Z2ytpebXxWiRaILFrOfxvp88ve2Z4qH23fod5Uzti9zDfoPdAknmpCdrgV0R/7fvOEFeUn8aciibHAx9lrgKDuXeOFcXvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736516154; c=relaxed/simple;
	bh=jP8r3TsLPdC2GHapBUd06hVMUXFsRqoQWCkwud7cqTY=;
	h=To:Subject:From:Message-Id:Date; b=jraF+/037QxzWVwXiP1ssTNcIVwYq713KDWEDWoKmktuGcNp5jSzeeVXvQY0SyZqU9jC18AO4ZqyFAmHOtjwW6NZx0p5fFmwfEScRc4rrtK6UsIuq9ZsehLAK/f9KYImIInT3m7x6s4Dt2AsFRa+nl21mJIULnqywTIZvIQM4Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCmspDri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCmspDri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A09C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736516153;
	bh=jP8r3TsLPdC2GHapBUd06hVMUXFsRqoQWCkwud7cqTY=;
	h=To:Subject:From:Date:From;
	b=VCmspDriFHuISaHOm83+Lt6chCY2WZavieDrcLvDIdNbbTYV5EfDqb241mvSSQr69
	 z+eBdgOqKwQy1+H1/3oNGCiUP8mDUqeSD2lfYUAM7u1qnJV+AC/F+XXVl43XECLyoQ
	 eAGCLHIwY7tOTsRrcB7QqqvXt0p+Iea3NlWtCwY5vkEzJlQ9xioJ9b4NZ1tmpmIQCJ
	 7qIzuM0LbXcBfAQOXxeqRPJeaC3I9LC9dNEByqHObuPISzUMeeRVjOZnvP7rb0CSCI
	 ooim7nda5QIhrnL4f0qtW1ZV4/YKB5vQuD9E58JUk+tR9LiaWBIKHtYCCHYsyF/KI8
	 iUsO9R13+b8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3B2E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651615364.25420.13809117232436938588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359c46028f9085159d406ef549b24b87d8aade8af7bee582fb8cd6c5ab801dae
Date: Fri, 10 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736516153
