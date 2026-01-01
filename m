Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDAFBF0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767243234; cv=none; b=i7h19vHqrdvxQEGoozeI1v4EFtawcooq20EWPBSu3OkBLDSAF/kGWBUVN0UTRe48yEXdnGIcg4NBymh9BBjZQFflHo5APow1espQGsEu+cOn7TVwlh+HiXWm1WgPEVNkmca2VwQZeFF22okj2CbUSbVKlzIOjK9rETh19/ZyOK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767243234; c=relaxed/simple;
	bh=h2UYKd07SFjyxYYRMowko+nlb7a+dtYsWjAVJ0DnxsA=;
	h=To:Subject:From:Message-Id:Date; b=dX2+ZK+Kw6zzSrgj7htvI/mn7+Qv8Y06bsC3kAYLEtPFP8ROXAyKDh8vbFrZB55znrKxECgRcjjGIuKZymfldvNJsMN111f5SEhCewY4WuhUE/EmjER93S01YR/FeUeCjeHrJxmCB3PmAt0yhqZ4ADqr8QdqaWhaxqrzmKRLrjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZMwo6ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZMwo6ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767243233;
	bh=h2UYKd07SFjyxYYRMowko+nlb7a+dtYsWjAVJ0DnxsA=;
	h=To:Subject:From:Date:From;
	b=MZMwo6yeoNwg6RfcGv3NpWTl8lPr97RRDfwc//oTmEDu5NORCkiuj4AWocNg4gje2
	 o6uoWdA/+f2DXdGr1WCz84XjasrqjEh4B3Hr1sV22Lbhv7zg4L4clB6lMX5tq0Qn/v
	 +WpxQe2JxTm/PW29DfBzg5JAT+h8dq1ZhuRPW5JfHBdR0cL/sUIECiQpjmOnMvyS16
	 VEBDjXDSRfuuCgMfoZuFDh1nCVspEuqyyzCWAwwJTmXssbht0xmo0DSgzlTxkGafIi
	 KI3xzoSdJPe6k9GSL8/nhb9V45SL2QpequLvVDHob4sAGjllZWxNYTp6q3wqH+PdKG
	 gmjL5wzQXz+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB5E9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724323358.9949.4688016044497415185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff190dfd1e8c16e58d7780b286cd75e33fc3cae752acbbbd5984244c5773973b
Date: Thu, 01 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767243233
