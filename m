Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EED1BD035
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767402834; cv=none; b=m+JY3qirOsZ4u/IO24TGpRKM09Pimqvag22B0ObVS5HJQM3BfZemUv6O1DI0dCxXw84Nwou+Ml+HCAxcCIldRUNyGjnyzWzAhzjfmeoSalipeKWEtQd+SEY21Gw/DHRzoMqoc1wFsQZ7SyAYZpQZ3wR9aRXbzzeMnzVZ6QKO33I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767402834; c=relaxed/simple;
	bh=XGjPtTr24RS9oW/n0HhdjXmvOn9KPzFLSsrdI08BaIk=;
	h=To:Subject:From:Message-Id:Date; b=mHqHFJU8UOq6FU7ySWOgNkZY1QYFW6zLFwEUyFtN+pmtBaTcvxoQFp8dU863q7wXcynxdk6LALINqNQ+fZqp779ELWdV+PiLR4qzKAfJY0B95Wl/hgQRKq//3yKrcDXyKiXY+p7qxDtoOV27epe+uMWf+wuIQT4vT19NDw2Hwbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uuq8Lewa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uuq8Lewa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1859C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767402833;
	bh=XGjPtTr24RS9oW/n0HhdjXmvOn9KPzFLSsrdI08BaIk=;
	h=To:Subject:From:Date:From;
	b=Uuq8Lewaqf8DYknPfgLcMz9Ya5NpY8xmLE+EUyLbSb1ncHEhOtn+byJ/BGuT4m4UE
	 BcsN8leld/0bCu2UHUD32HKZJX05ibUBh4PZkWh/IR6gUbX7NkRlVBWtaZzbGy6Qa2
	 eN1C03EXZEG7Mvkq4AsSJr+hWxWw0N4aoschwoJc8tllgqk5RNQeDXOcF7cBknB82S
	 SF5VwhOPlJWfgbKrCnGJOQEBwNfy8FaZxmukBvdzOMtH05q+f1SNsKwmlKmlz16j6j
	 DmL/0We+ba1Y3ODh+hcCTwX2ipEPMuM0hMhY5HpV+nEVEMVRVuX0epH5VsCyrxyAwc
	 38hW9KLUGCBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114EFC6165
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740283358.810.1839169432350656399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcc613e3281beb34b62d9b8f100ee93e2a99ea8ec6649a1aeed60e661858f00
Date: Sat, 03 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767402833
