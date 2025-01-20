Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC4F1632FE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737356154; cv=none; b=hFWn1O1UXr9fhTOLGnr5w4+c+WXXsrSXM/8BIBqtQF8lUFvzAMGETu3dnSqCWJzwPguhG7MGg3dOsMpDkwhAxjK4nW+gDaeZUd2uZChGge9QEK0MB3Sgh9JQDaBeo6JTk7PTpaSj6OD3BqvXYPdhQ3XYbgvc9UjuW0mHIrk6kO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737356154; c=relaxed/simple;
	bh=TXTislp/BVQsnEOA6gpHv7B0jDa8t9GWD4Yk0M5uM4U=;
	h=To:Subject:From:Message-Id:Date; b=EXAu3xGD1qN+0SLX3PTuJIko8XPG2ZRS2qhw3G40sIZyDpHTF7C+is0LvPduM4IpoN+TqLFllw7Ju8U5u6YIA/S5vXAj+FjyTo/MQvuL6jsYJJefvekrXfznx2kZCfgd5cWxpbcd5RS0Hrb/CdJJgDPfY3iCn6PbFy6Y9d/rC+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CidkojLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CidkojLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0012C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737356153;
	bh=TXTislp/BVQsnEOA6gpHv7B0jDa8t9GWD4Yk0M5uM4U=;
	h=To:Subject:From:Date:From;
	b=CidkojLhkXs2O17l+DQXhuZC4qvMtl9vXGJ1cF4DA6mIWQYcNs6lRE/ESfoHAbX7E
	 NB6+Vwj6ez5/RsBRnLT+caaRMkM+oGHtmiZDTvD/2lpYMIYP7JynJ5pKm1lvkWqNPZ
	 Zby67ibRRVNvy8J9+s3dyfKsF2KVCI5SJ6Zgiy9UxYRVemj344NTqig1DoaXfilyDl
	 NqrjigokVv9HdwXCeds7QXVYsS/knC/8VNl7DqvLZqgqIv9zL0uEOx8bSrHb2WSYc0
	 9A6suCLWGAFze07Ktr+T52wGOpvC5GPMDHn3yhAbiUzfT6KM+c9ji61ytGU1HFX6GL
	 ZuuiZD47pAmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F0C02188
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735615357.18253.9930426827789766636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ae43462be13dce4ad8460aeec22c5a3072742dc2972c6b9c519e9f7f828049
Date: Mon, 20 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737356153
