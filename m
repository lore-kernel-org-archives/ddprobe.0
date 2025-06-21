Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A340347C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750546794; cv=none; b=lRDXw07dlH0UAmDFJl0EoaYUh629beuuJKcxnyGkCLMrATODuPSTIGEqe9ExHZBfWvkjCwvSDvDWZzvJkFnv+0vhMqfjuXesStel1SZstpQmDJFAAb3QLM/+v6sf3UXuFFuT1hmhSvQ/K4pSr4orjxDMTWv2cxPB/ZQSxykMBPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750546794; c=relaxed/simple;
	bh=9K4KVWRDxh9Un9iE5GPN16c94EAw80oGyvppYteGMLU=;
	h=To:Subject:From:Message-Id:Date; b=Szb0TimffX1Q0IAm3UmNlk3cM5Qg3kgapTzL7ayCdlZqhzEvor7QqWWayVbpJRZcm9n57rBQcIRxgX4hL9R06V5LWr3TTaXVsQoX+Ny5/ZKaGoAWcnXiBdcibXs8lnu8ahoWK/CWR4LyeR9JzjXuVHuZM4hyfnpznho2t3x7UqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubNQbZ2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubNQbZ2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750546793;
	bh=9K4KVWRDxh9Un9iE5GPN16c94EAw80oGyvppYteGMLU=;
	h=To:Subject:From:Date:From;
	b=ubNQbZ2f5EoQzhF5wbrNyIZxZDqiG1d6xOEkizsIQ667NTrr6gDvrcWXnS9HLGN5V
	 w7g4lOmKOWu1gyY75IAEUH8pyVS/WrV0LbWPlLJ4+43s8btrgVD7UHYkQB0TUlj+5t
	 LNtIgG6FeCTSTT1bZ/y5HWqJWuddQyxSLVosDqgI/zW9QnME3h+tMUOqzP4dZH1GGH
	 L+b9VzplEkysP5k1NUsmiOL3nolAK4h8r2DCw/dZq7H5dHuinInY4ynELOXyub6uvU
	 1D6k7NhIwY2diY+6ccSRcvsoqVEK9vWrp8kViI7w9d2za0lbkDQuQ65O9GblS9BG+H
	 3ux1edbHxSPuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCCC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054679357.18227.2425065935676784804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07ea900a64ce51ef64eb3f9be3d3680c755e6c1eb40af3d26bb152616fc01c1
Date: Sat, 21 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750546793
