Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817C17A2E5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743095994; cv=none; b=WihX0dch9egTyYkglrmdgAD7l4Vlyv7BdaN6uetiRPInfhUEaR27x+Rwetk4NL2LfjAbfEcP1zsFOMKTy4KbAdT9tkucu8jUN8bK7Zasiphh/v8RwT4Ns4M3aA6HNriI1aXEGPFSeDtOZyPZwUC1ZnkfxgKqXgxuQGA8Fa7IQ1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743095994; c=relaxed/simple;
	bh=HBW8/WVHm/Iv07m0e8fbLZ9Ed191tr4p4DD9IYxFg1w=;
	h=To:Subject:From:Message-Id:Date; b=nElC/vmL+Xoab57hEx/0B/wQq54LqaxYCdPv8bRYu2Lm+2fLHvJ4jyM8Sy8xB14GD9EMTGX0h25DA7TFqL9ude0Js+fsWe1bqJXCy55/TA8P0C9MrkQYcLA8V18CYGVvLpRJoPFytoSTJMd6ToPFCHJ38UOqwgONUlyIYrIrFYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClaTvPg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClaTvPg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C4EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743095993;
	bh=HBW8/WVHm/Iv07m0e8fbLZ9Ed191tr4p4DD9IYxFg1w=;
	h=To:Subject:From:Date:From;
	b=ClaTvPg8aNMFYBKHIURW8CIb9Uqnp4v0DdmdmKTqRGl4vpR8R+xXoVM2kyvnAyTkL
	 4ccvh0qP79CxtqUxOBmBgBWRPEmqZ/9kPalvqk4t+KATw9tgTV7DUzqk73gEZhy3Z8
	 1mWDtJiHLPsnQIitNZsQ/g1QUsK2dGzDC6c5x6fAMAEBmpPahDI0uCvy9MJE5sjhnC
	 6m9GcL3GiYo8FYaZtBVyqnRt20hVeMZ/mxyXcwCG093cvS+ah9Jf83arusW3bcCHD8
	 GkFeRVDH3A3/AHgA2U/bl/yJtFzKyWoURClDEpMz8DDfUlQ9f2A59lZTTkRnlGKse8
	 UFHw9M+H2opfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E72C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309599364.24766.12889076608096717879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b647a332a7af223d7a2a2e886e401d55845ae3d0d2911b7e6c3378935bb49f3d
Date: Thu, 27 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743095993
