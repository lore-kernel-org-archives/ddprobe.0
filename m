Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6491F9AB6
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742647194; cv=none; b=H6vLxqQSH1hT7Vgi6Ebprh5QLFuM3g3A3uD1n9Knb7d/Wc4fhfp9kSQ9i3iDkpQRS2Ct0FtmtQ4YuKbL68H4/T65es9eOZ9bO4vfatyeDS/SNBOnyoXwjjjE7EW/ax5S/23hpnbx7glmG7B3j39pBqoBfZ1+qNtIGsqSOwDXP+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742647194; c=relaxed/simple;
	bh=MtQnmAGTBfOhbb6ETHTF8cKv1Okge1UxrGWPvRDqgLY=;
	h=To:Subject:From:Message-Id:Date; b=Za5zMKBQ6Z7K0iO+tbBbK+yIkFSC10mtHXgE0XSF0IYZ/85HxHtarKGvzf9SR38thfl6rUeVdPoweFAxFViXT0Fn8o2SAYxZhS6uF7CqEDM6p26urLb4WF6qerEXUjTy3vlu4VkExG8t/iGiCYcb1cmdYxY1b3v+nrRIDyIVxm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCHr6daL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCHr6daL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B17C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742647193;
	bh=MtQnmAGTBfOhbb6ETHTF8cKv1Okge1UxrGWPvRDqgLY=;
	h=To:Subject:From:Date:From;
	b=JCHr6daLYGqML9Uupst8pxT40eS9jVz7ZH2iYpyW4LCuKvbaXvn1LpSAZVepOyNr5
	 FRh0KNhg757DnS9lPK94wFknn8pHYKWXVJ9RCy2iZKeFMA83YHVI0Vbk+6vPF59mYY
	 jp/PGAK9xnX7/7Nd1pkB2wPNAEh2kypoVy92wrJ5n/mFnHIIwUbBbssqt4MlJ/41mV
	 Qkc5Xw3FLKRyWkoxx+Z3pNbZU7kGTuaKuHhxicKoc3C1XS/CETf9G9JgHZsS4Nw2hQ
	 1QnNz2LDIoMwQWsL/fb336+Fl9y8LiELQkNBFUKjahVQuBEC84ydedlE601syNxUKx
	 47QnifSYPRsrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F417C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264719357.18848.2042042390987703620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176975efcdf2b4ee5896c59940003d1c27ae2db61c3df667c5019d9037daa992
Date: Sat, 22 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742647193
