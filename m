Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336873B8D60
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765357974; cv=none; b=GA0qXW3UP2mIG3Gz1lHcGSbC33a+mBfcnO9UHa+md2ObeRXNJ8MdPWD6qpvnOyYnrkqc5nXGHnApHb0y9fQDzPIgUHJsj8Zn9bk5AIjoB4Ttgp//GdNwRmxex2t+qfmRCKbmA1RmfZWzwxb9YHcmN13/wrUQ0RNGdT4BdRjSrNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765357974; c=relaxed/simple;
	bh=tJEhiFjWAxX3kUGCI1ssyt/gejj4vQnxah8DASQEdoc=;
	h=To:Subject:From:Message-Id:Date; b=SJT/ZNXVLZjJguyRyfkqSS0XzOv/dq4Du4eMrJjyJMO9jc7VDXj1vndWQSPdEpZF1Wj1sqLNJCgNeWJ35ZDW2JXCeTsPW6duDc0oXHlVXVNYge+SSsVh7nvt2mmrCNdwEGba75y9gJPmZ+HinPkgOM5U9vj1Rfwd37EuIb7MF3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DH42TI2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DH42TI2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CB6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765357973;
	bh=tJEhiFjWAxX3kUGCI1ssyt/gejj4vQnxah8DASQEdoc=;
	h=To:Subject:From:Date:From;
	b=DH42TI2JncqHlxibw8HlwW13/FMGt5YctPRugUI2WvyLL5F1q9posbHKN3J7ifZTG
	 W8HDxsGUiwYQrWpU8ThnT3TzbdWONPfK8dE5aa852a1nqYV5NGnhBdtmNZ32TE/h0B
	 sFV34hUW4mcbbOFqCFQi15XyxUNPtssyvEpYCaOvfDiwIOnzIRBSogWkythJ0XCXR2
	 Xzn7xev+9ajOOfezu7uNJ27aGDrsu7K1xDioECBM/bKsrjrlk5G8W5qPvjVnO2BjpO
	 u1np4+Ao4lqwb1w80RoqImvAaXw/O5VHqUw1V+OgT0Ybz15fkAYlUQO9qaB68YNHag
	 tR7SmI6NAiErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6CDD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535797360.25993.15624978512069311385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb7db1b31ec38af58a660d54ec08bafefef7264cc2f9d6ead4397d7403d7850
Date: Wed, 10 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765357973
