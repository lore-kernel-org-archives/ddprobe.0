Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26491229B1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756468194; cv=none; b=usDwLDdiTphfzxNLYY1q+FCxxNEWNxsb4dtlPlwReluL19oTNHkWlZf78983QWmpkaLljP+Oc388xeChHL4UzX5ALCcA7PlfU93uaI3pbJIG8rGnh9WqY6JF76S7HwgRIoJVlikrhhBcfnNbsx2/rpRvVOAz6N6mGTgU3F4rx14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756468194; c=relaxed/simple;
	bh=ViVUNIqyyrh8mciWrEM9D7YjR1AhxJ9sfiARosIOjPk=;
	h=To:Subject:From:Message-Id:Date; b=aKx8GsPgViRXMVGYmZDCs7s/eRt66MzrgQYqiQeBNP9ZGxV8GRcrObxiP8DByRwewz3yW5NUyd8SionDDRFQt4G01ZoHeFDw6A70Izrqci91LrPGV/yRgD3EpvOhfo7NR+d0YC3AkzgOiTL1DbqDo+ZsKkyDW2eWqEU9L10h5Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGtokNWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGtokNWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0C4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756468193;
	bh=ViVUNIqyyrh8mciWrEM9D7YjR1AhxJ9sfiARosIOjPk=;
	h=To:Subject:From:Date:From;
	b=MGtokNWzt9vMyeNH1zar921zjiJlEJ2YJa28OPGUGC+L+fE/ajGp5YYkvOq3htiri
	 x8Rn73l2JCEONU6kuJyzSGJh2l9dZ5TmRfzX+ryWWrDdyn7nx7e5EUp2FEVvSApFwr
	 4e+Fdd4LJoTDN4prWncxzGCJOdUvQXLw44aClW+LDwJZC9U5huLCb0KqLMqzH9ShpP
	 xZAusbPK5/xRHu2vRgkYDO3EkeF9+NjhzEKwx8weYGPp08Ij0US0tgJgQ6HYpG/jPA
	 4HTw7e47Az7x5AkGdqg+WTAkRwvYma4PJy258aLCLhFBwrAPWT5LmZhcrKd7oIAdek
	 8pYJkRXOenUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB18CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646819362.21514.11492449369914669181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374562dc9cacfcdeeb99bf243c93df8c39d50b2d34ec949a561cdbc2c725a14e
Date: Fri, 29 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756468193
