Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011301859
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711379897; cv=none; b=ggS+O2BlPy7CGO0fG3/JI9T4iTwqCWvo3OCnQMZduXdrp6cvcZGz2uzQV4myFEGZNlPDYad6SfQvU1updqYIg5P3HniUJa++4xNZNlHuHgRBojJszj2R/nee3B40zfx7357ZOJL7J1isEi8ZS2p6Z/BfW6wpDBPJeNR8Yhko560=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711379897; c=relaxed/simple;
	bh=KpDiubq08nis5urhX8I3XuOWWNersmeITWl5Pg9PsTk=;
	h=To:Subject:From:Message-Id:Date; b=oBzwBrYTIvUefsF3XW1o8YgsSJ6QZxka5Q43NY1diHfIyfVUhIqEZV+CQjIJgaQJXN/rp1mJ2BmumhBxplQAHIZesWML9cOoGEfmzCkeMLfKK4zSoYldgfynbsuB/4LHZkJroxTuoaytqVjRYGXuFb1JF6nKS1xnyOzv6FkYF7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ+Qqt+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ+Qqt+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B5DC43390
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711379896;
	bh=KpDiubq08nis5urhX8I3XuOWWNersmeITWl5Pg9PsTk=;
	h=To:Subject:From:Date:From;
	b=dJ+Qqt+faS2rse7LTo+Al2ngz9YdD9hFaexdu/Yt7WoYf1wTuTMusAXIvojxks8Wc
	 zYF6Y8O1QobYHlZpOEFpR/xQpE3iJ5knGwax6m9TDjeNflu5BIpGlK1qLuMkVhX0pX
	 TxCADM2kdFxtC91aWp7ASiB3CoFlX0W7MxIyc2P0O2ncaQUnWN7VSsjiU25d3WRQRc
	 fEVar4+rTD4k6QJgB+vMimll6Dml9K44B1DLgwZADtQHSgUml+2l3HzcdhKSnjjXCN
	 ItngIq4aeOiAiSmm0+wNroBxt1luuykByuKEIJMhlDA+SP/qzLXHDEbt96I9YCjykT
	 amcKHt7ox0UPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60726C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171137989638.29937.5267967511254741408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512386d7bee7ce398e89991dbb119f26eee94630f377cf157415b3901cf6699d
Date: Mon, 25 Mar 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711379896
