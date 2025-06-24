Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946423774
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750734595; cv=none; b=dkBb86kIV9mIyNfgjFbfO9vzloQB06SX7cKq+WK4SbHZQweMu5YzQl3VhDsmHIOb0ui+x9l7oFwpAwntn5O1EvfKl+jkntfJ4Vdr47SmVg2aSVOnN4XCrQYmc8cV4Ogs/0g+JipppIOFJD4H4JLS7UIFZm7G5cEDfkaGu0X6tTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750734595; c=relaxed/simple;
	bh=17gHl2tneEmawkNw6wWnKLIy8JQ0TzuPyWz3uiXzPFg=;
	h=To:Subject:From:Message-Id:Date; b=qQ0/KMfcknLBd23IVX9U+gkVPWVeGiflnTIfsjeVaPcNxme//iSDLYLuTMXxeF5GN0TaEsNUzDOcF5VSempwN4Xc8wWi6d3W8E3cd6Pr2F3gyO9Yp1Mi7beAB/3/iINfo4Njv87M4As1gs9UB3BZTdrqqnQrptKmI+6kH1pqwtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0ziljzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0ziljzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2255C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750734593;
	bh=17gHl2tneEmawkNw6wWnKLIy8JQ0TzuPyWz3uiXzPFg=;
	h=To:Subject:From:Date:From;
	b=a0ziljzcOzQO79EOBGUX4xJCRbuCClNfSVT6CecQ2Z9uKynLCX6ch/LNnjOpdTwT2
	 pIgK//gveIT24DBveQeQvJzOl71MoAN5YtOHlD2FqqiQ+QIEaNsVdxEF4h2eefHSjW
	 kIjOa5ZYxvShCF8x7yiVdsjsaMU8ml7aTF8p20BbBt5H5fqmBTTlq8vL+L1Nc9HfhS
	 ot4jXXKkA/AnA+NBQjlEQnxSLccEPMb134F/N5WXFnYGjxN+uwKJNuY5kqYHYTwoS7
	 8KoJOHvA20g53oT2LSOWZBWVnPbII1Eaf8knnQk8IPuxtVhlObZswXj8Nd6k/vZtJ0
	 /mH+TnCYRHH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F496C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073459357.14162.1736354081501883277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f26526447f601a690d59822378b4873ce479440c964eb2710864893782f03c9
Date: Tue, 24 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750734593
