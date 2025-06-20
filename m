Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358481B960
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750385394; cv=none; b=pvoqOwQcBtr20R0Lc7XBmH/o8xhjs/dPXfZFFmhPOfQV4Ag9r4KSYmxHdSPgEHry7GRXaB1bHR77x9GLbktcFwvVLRVouYXwv4LSAXAqwzjKOIik3NxPXm+SZq1rT2G5K3BHMIcn1lueqqVLwZhJiPkpaY/g8UOVc4gprpXKVKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750385394; c=relaxed/simple;
	bh=7lyIen89g8nbHAy7XzpX/3zgBuokSdO/GKWZC4vrRwk=;
	h=To:Subject:From:Message-Id:Date; b=R9zLnLwO/Gn2c7z+ufh1yJAr1KlK6B8PjJQpW59+dgBI8h1pnGdl2/CZDGjpbhkpOSDJgO6BFSKfW1n1PzMpDwXl96f22gGzgPqtuTrfxnLH79JddtpZ/O8r7BfWZ6vzz1985eIpt2OF0w8YpLqCgNKuokzI44uDToU5NpqtJzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAKRXzsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAKRXzsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4884C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750385393;
	bh=7lyIen89g8nbHAy7XzpX/3zgBuokSdO/GKWZC4vrRwk=;
	h=To:Subject:From:Date:From;
	b=BAKRXzsldPqKSmwxAQ78CeMNJgweraB7XrkEnrV0irKRA3v5J+we4OBBRhhLLFRR3
	 SHrqk8MIwhXlpB6OxNWKMsCV0vpSvHFzGbmaCTbDc1MfU3jdI4VYlxSwWsUI60Sm61
	 1f5BRxOBjZ13LodzbsV3uvgr77WwPTsMW1Zs6Y2nny55xwjOM842rWYSUqZoVYCyeR
	 lJyuJusU4C4LvLA/SqTTBveCDmfJ0DQT/kKA9/cFDkj+vWoIlbrxn8pNRPnf1xQrWs
	 NO2qG5fu5Nhp0hC+MC7HiKJJKG3Z0zechXiKikZthpHLALCMgm5gfN1V0gza4y1iDm
	 LRyxxqOKXjvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156DC7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038539357.3352.8362807971605273324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ab3ae6ab282ec005ff818cdf15323db07a5cb0bd73da5d42df5865dddd3da7
Date: Fri, 20 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750385393
