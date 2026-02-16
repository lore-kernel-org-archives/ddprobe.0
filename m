Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1873A944F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771211094; cv=none; b=kwMptcVlcJRcZhzRwBrStK6twLPdNZJjBWpfmldcO8Go03PMDUD248QxFz8OsRiR8QEBQB6Si5D1sWpVNLXVP/ZTyHt2qmhy/fGt8d49Vm146LGDUhnNbx3ZfHZInEE/uyUvwqCZRFwX2zxP2Scl3V44S67juz6UHwyPho+NoMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771211094; c=relaxed/simple;
	bh=nO/vJQ9tD+hVlpcqdUD3OcEI93Pl7vH407seEvwR9r8=;
	h=To:Subject:From:Message-Id:Date; b=cp3Y3jIdgGh+Va6V9QmY8f4gRvj+rffcih2RR3jXkFnyBu+NNhyolw2nVo8NAqhCHrAqy/Vg2IivoDgGuBFk93HM/BbxdCVkJYWEQPx9ypq79oJxIjn6Qo5NtMBV+PUJ2Jn0TuItJFrfW35O5SShmqDrHD2WM8oR7RwCSZkZxGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4X1AXix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4X1AXix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2215C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771211093;
	bh=nO/vJQ9tD+hVlpcqdUD3OcEI93Pl7vH407seEvwR9r8=;
	h=To:Subject:From:Date:From;
	b=S4X1AXixX5v1Ako2HriGhb/6cyRDeZ9hi/SWY93Xbr3HJS077W5OnZOpCO5a714LV
	 DQ9U7ik7kyt/ShQwny3VjaUuy3uA9wxHz63RalPMb/2tu1h0iVTNli44Tb9PuSlRj5
	 yxNVRbRF5DBVOYlCNG5VBb3P6lM9ocCFDdOqo6ryBtksN1Xrbz2ICZN08C6EwBABUc
	 VqupjVV+4lcDTTT7JguFFeQ5nDF8pF6C/j0BFWjZsJ9I1+SnUsThjNfV1heALhG58H
	 oRd3AHuar2GhhIVt7AFAgE+uZHzNb0lJP9dUcp42T9uZG9/DwK/8dh7Uw9DvSr2UiF
	 muW/UcTYC0X3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99339E63F29
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121109359.1811.8504563460630515120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90c58d79da2870cf26842be30548b990b7a30fad423efdb0b49b70c51d778f9
Date: Mon, 16 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771211093
