Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4532F28FC
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767427434; cv=none; b=PUcxse/qUhU8nvp9xi+HPE6c2FYJxslKIESW5Oy19ZZ2eiCZphek92U2zrv5RJCjQmoWvR++uUevSjn28PthJ6tRNjNwsHL+wQHVDQ3r7fDnZkUEsvt+894YMVrbGZFFdkjUH3siR130kiQGfeSxxe3akNBOL6B5vrTZ3CwsYa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767427434; c=relaxed/simple;
	bh=LTNH+F45gkzH+IumoEDHW5JEJ9eSb0GSn5F9G9ixMr0=;
	h=To:Subject:From:Message-Id:Date; b=DOyDY7pzTADkqDaod1/EfCMTlA+mMDR3JVkbCkhmKKzV7Txp7T5rIr5jIH5bFd0okc2hzI7CDBGQREp8c++RtGzKNv9q3apTSTEfWX1nA3ZjVd+ya9p/XYHU/SDFxaifRq4Toj1ZNQbxI+p8HbUedjKmSC8JWSJnODeLfBiBV5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe4f9w+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe4f9w+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3DC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767427433;
	bh=LTNH+F45gkzH+IumoEDHW5JEJ9eSb0GSn5F9G9ixMr0=;
	h=To:Subject:From:Date:From;
	b=fe4f9w+snnYk5BS+2O/Xq816o/Y8aiORsA0vkX7h+hR162isoI6yOA/XJA0HgZo55
	 ZxujrZWgbYzm3axxkmOlI04mldtZCf8RjBQr5BPPkoW7Kq7wlauCpZRl56SX7cQAVz
	 qkzu+tt1CCfh6EVJDlJ8ty1Oa126KyY53SjIBG5qQFK6brTR7uXix9DFMWoYOH55K5
	 2FYrCaDrchvEmzikRvFfcQuOpt/GakbscZindtLTkLhSfW/XdJmAACE7KSmGPfvgta
	 ckLcKrbMfdlPs7dX56TCCihJDvZwKEBhKoOamgExXFtYtpA5SOy7gD4FUF32xokYGt
	 NQXaQn5AInmTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226BFC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742743357.11556.17446716212033159464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd0912be7df344e5f8875bf7caf9df8f86cea9c98eb3d889b01ec7a4ba52a21
Date: Sat, 03 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767427433
