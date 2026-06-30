Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF3D388E51
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782817114; cv=none; b=Yi9PqfU9jEapm2pxDyJXwzqwern8aqcj2h0VloHrVZj0yVTWvdIWSlAoKTTZTINvOaDKmew+A5XtPkzXrMQgRHYnlxxMnpz5RKRkH5RQfQjMzOl9zCqfIoxj4f/MT0/7jMO1FumQKTSgpC93oCvn3P5RUwHfqD+wd0oLaFgMJIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782817114; c=relaxed/simple;
	bh=/fdiHACUSSEaNBAORCMe2Ey00m5AoncFtrs2iCNxbd8=;
	h=To:Subject:From:Message-Id:Date; b=liY2mxaqSkMXZRcGeqhJCb/B4G5RzlAGa6lrmdxG0/1x3gUJng3045ef+DwnUsfHGGKmMyqVzaAAypo8ldO8hViSyyEXErG3Cnq4klXWIXW6JecVxMhcJ4LF+xRh7xs3AG62GuHqBX/rfI3waVNyNypTWhIaft0wqnrmPbIAmes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJCdbCRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJCdbCRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08CCC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782817113;
	bh=/fdiHACUSSEaNBAORCMe2Ey00m5AoncFtrs2iCNxbd8=;
	h=To:Subject:From:Date:From;
	b=uJCdbCRKd7xJTwQpyZUXwBDqROeoKjiYJG976dDWitFRMatqM9WBm9jqrvHWPLFCx
	 T0OgXAVh0BuaE1JT5bSAZQe37JRAG21GGPlkfHoQTljIFQTbk8J7biAwiObpsETUGn
	 uBUBB36s3HUtf+3dqKHUUoDiDhDohtvoJv+VHYcXLd1zJkqdW8RpmkxkJ9wTIkPRaG
	 AfuiKkHlUCDDQEqcCIvfKb/jzmZOgrv1gt+6A6ie+gat9SkdMaHb1OKhgJa/Tt7Gdl
	 IkpTmI+wxP6gv4L1iJ7XCZTn2GxABpwp+kCMHP/81qek65AIHeQ+rPC0/64eQFGjPw
	 ala5jrXW7rz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A50C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281711368.26505.1548445183667449503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc554325a01ca80d925b585855acdc5b706ae1abf5e6c45e8406b0ca0d5a72a
Date: Tue, 30 Jun 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782817113
