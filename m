Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1749362A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787435434; cv=none; b=qi/iulDbu4+2fWyWgOwvRSXa292qrC9bjf8vORByi6JRvZGzQiRJSzdw2ZgxYFEz0UqXuiePfA9TkT8fiIdb6xG1+tHxU6jYKTAPmvdukqezCZy1FU4/KiHCUrJORNfzqWkK55NbIsoQ0mLzrd8BcFmYk/n5TWGZrGNFRzUFguA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787435434; c=relaxed/simple;
	bh=bPVVCUQc05idMgjEMj7p1udbGTA2WJmbpv8yoHKCjQ0=;
	h=To:Subject:From:Message-Id:Date; b=XBBzDu8aCJ/01Y9PYpQ0NalT6yCVMyuWH6O2o+JvYIwvWaD+8LguaFJt7bigbFy2quAV4jS7kTeP26P1trSEw+OObmnx9aqWhCOpS1txiXOkgsKF4gUWDnEmeYZwljgDSkg4qT8VcAxhPkYr9o3zn+3Gw1IOcTRM4TJYAskfJds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdmmOFVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdmmOFVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDBCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787435433;
	bh=bPVVCUQc05idMgjEMj7p1udbGTA2WJmbpv8yoHKCjQ0=;
	h=To:Subject:From:Date:From;
	b=gdmmOFVKzZkCzYAb4aXdmJ6cdQNuueGaHw1zwwivI80na7ewh5KAEcsbpErFY4XpK
	 H9c18TsuBa4TWtz5fFpzrihFc79ToxV82MxZj9DiGGcaSeiQpZYSokZYiUpcbd0mxA
	 GMj7cIZO5sx2Uh5Yk4Uxq4MYJAXwgHk8RL7TheIqjj3bXAeQ+HGQa2uNXwmf71Bfb2
	 3iCpbmY15uOFB/MuewFVoUNKlB1Z3Uv39cl6eLJFka8Vt+9LRSF5JoEl8oFGYbXpVU
	 +yo74GtQqrOo+ddD2djUgIdBNSS59OLyNN6/+UaTNawICCNcvLVPmDP7jUUTjtT4kI
	 3BoxDh3d1fOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F7C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743543368.21135.13178714421473223267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c7a2877adad56d07a95d3796fa32722377d212ed51baae19ada4ce2873b3a0
Date: Sat, 22 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787435433
