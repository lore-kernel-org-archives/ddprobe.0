Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B436D507
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764566574; cv=none; b=POan6yqReLthPK/lcEv4iFXBRYB+V1msSj5j+gHzolO/C7odxwgCUB+DtElcQZKJkNd+SBSJX9CjS7HjoHgCxn6K13L+VjgnJPxmbrTX2Ebyen1Ix1tHSgHEHVG+lTlAJ2OgE3hUkjC9+xFDoELu5Em4EeYd7Co0ADwMw3Gr5Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764566574; c=relaxed/simple;
	bh=giZjAcUV7ke3ud/jckoTQOxaw06F3diX0v76Fj82Tys=;
	h=To:Subject:From:Message-Id:Date; b=J02mzDZg/g96UB52qzTkVoJaNAJIs39786bJi9dTlVbHORrn5kJ6k5XnGYdMdHVFftU2mptnsYXw8mHk5UaMIu1Zb5LBLIEKRsIxQcprwGF5O4Cfm4DWvNxBBNyEInN9jbEXfrFH/iJAqO655T2Yoge3xuyaBZ/+dLmQ4WKkoFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+xL6a4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+xL6a4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D97C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764566573;
	bh=giZjAcUV7ke3ud/jckoTQOxaw06F3diX0v76Fj82Tys=;
	h=To:Subject:From:Date:From;
	b=l+xL6a4qDjJx0he5+LISaxEU1SPsnAGKPmkXjCyWHJFeM37d19sE0iJ6WAMw5zWJQ
	 20Ew5HTzDRVQR9m10kNHVCPmiQgQZbYeuo+ZeHjVDudivkOE/b5aaFoB609lIj0lvk
	 XAbR+VajaNHxomyJlpJHnzdQhOo8EKO9S9gPWfGOySqVDWsw6SQ53fHYDOp7RlmCaQ
	 822i/0yWDHBm+wUWqB1IbjpjJngCamwoowO4EL4fDoA2LoF0+bl/lek8RMhtRVeeg/
	 pRxqDmbkC1YtbA3A7g8BMYtGDi9XBW2ToU1HO7xyy48U9P1BXs73LvGj5fPxSsIkiE
	 aJbnYL4qQli1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96862D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456657358.25896.8705182941909826869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70fb1a4d2a37119d3049d4b86c6b5d2606834113f929c48d1e7418bbca35e46
Date: Mon, 01 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764566573
