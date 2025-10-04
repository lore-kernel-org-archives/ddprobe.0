Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156212264CE
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759566594; cv=none; b=oonicei0MzmMVfUTvAvDj4dP3CC/ne6rAv7n9oGgpEkv2sBw5pQMJXPfUKlJQGjblw5HTA18t0bn7M2iUoCDmVTffFL6Lp0qt3tJbtXXbP9OFLUZ2VKFb9spV3b3aMYlwLDY7xwtUy97XHyhA4n1GQcxDQBc4B7aBxzESDD2PjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759566594; c=relaxed/simple;
	bh=B9hW3604z4W51bXhzCvNWJUI/edzGBrOa4OYnYLCJPo=;
	h=To:Subject:From:Message-Id:Date; b=NQindOzW0hE5DpWmO5ZIEjAzcGvBsux7kGFE4aMEHbmUH+emRCTNfJOZeznDv4dwajWHlshnP5QmjNF+u7nLHP3jAqV1ezs5UutuxDr3C2q7dWoz5z+DXe9AAiHItdQvAGtf4oryvtzRX8pmM2CzURlWGijetrCOCsl+PYAS/10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnZaw3X+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnZaw3X+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF704C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759566593;
	bh=B9hW3604z4W51bXhzCvNWJUI/edzGBrOa4OYnYLCJPo=;
	h=To:Subject:From:Date:From;
	b=RnZaw3X+8fRXhvAruuMPrM9TSpqtfVXzfHhmig3irA+/VyrjlpnEytI3x5CQL9TqE
	 s1HHcMF4l4rk03FYzVZWuruXCqQACtNBarmqlDpcrodk8dVCqNrrXP+C6k6uIngzRi
	 rFgkVAJ/11ZdfNudHp8h+j/CV67vVWgShV3C4XACd/lZOY67KKU8pO4VyUqP8mcK6q
	 qxhX3gqqQjQVKJAs7QI7wjzZpOpC+19XCVabiN8zwe9oI0ezMRD/un0s8Weqi1AAUW
	 nndg0wX8hBXECfdnezAblxMwh5pSdNDdMHYMpOpKCfqUCVFbDuEPn83FM59uW/8d4g
	 wiCQRIlfT5hpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95568CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956659359.2329.5195377869659763105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de3588a33ae4e14e3e9c0c52565e47278da94fdaa3dcc92bc4163e6e85b4327
Date: Sat, 04 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759566593
