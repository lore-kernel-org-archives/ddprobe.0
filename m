Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9F13AAF44
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786789834; cv=none; b=tHUsfSsq0bkyXt1f6gLpDlJnvZPE/h3naDzYkju4srfegvkqDNiLJUEHTGoJiuc+0/2UrQdld+YfKNuvvXouuNlJoZHAKtfaOhAjPXpOkUqVvl5FElDSDla5l0tQaQ6n3xBKInbu9oRp0BEjigyF1rU4eTgHtXN7mKfsxIEa9Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786789834; c=relaxed/simple;
	bh=fQc9uvo4rJZZa78jgiHQcMy4/COXn4mNjcTWUx5Cwa4=;
	h=To:Subject:From:Message-Id:Date; b=n8L11fgPbRtxKibNYrAvdDTaqEhYcIY5XdXABD38j/65e9QkRqvir2ZWNzg+1Ejsq3YAfBhE2xVW/Y+nmDrcgAeNq7Ys5FgcbDyWoZMWqxBqriiQOlC+WHFf9M4sr8TNWJZUwWXow/n8AXL6OPodF96/Zzst+hQ55sBZKAZvI7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pia7KK4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pia7KK4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B4C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786789833;
	bh=fQc9uvo4rJZZa78jgiHQcMy4/COXn4mNjcTWUx5Cwa4=;
	h=To:Subject:From:Date:From;
	b=pia7KK4oSWf5NYPfyqMWIYR52rq3G4ZxQsIjwXIQU2qa8Un+7ghmHIxq2IbeKO4PL
	 OMPuQdJ+62yP3EBqfHRlpoGYcNqu4k6xt8oK612ehY1zDqwsD8ZMjE+1ljCaPK6C9h
	 1Y+RYRR8piCaYhXHIHXyN0kR0u/Qv2lOJ7MJmTFe4OMp8S5XxN3jJYPyAGbtrRiYQz
	 WZlLSFiIa0AOZH3wY8OV0kyliZoxykFBS/IPn81HPUK0Wj8zUaD0/Lebj2cKXAwzfi
	 iCl9EmXwpzifjmR9vRqA+W+huqq0jJqriKYUF9GGckgZPrHyHsiNO3nBbwiUOBqZb+
	 IUSqCuIExW9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE523C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678983370.16229.71280383732571921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669a722e657cd33d294c0d92a0d0bb10dcc5789bcdc33afee3a831533886553c
Date: Sat, 15 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786789833
