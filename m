Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA8D155A5D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781139394; cv=none; b=LfL2hUwtNHh/8Y7EzLlGpUGuwVPEipXrk4ZVOx5GdDjDHGh7PMHVfYtDzg60sPCp56vrqTxZosbC8VBOiUtSBbjM8rpOxURE1vbMeVkGX6cFgxcsON4WtkItdex55MAWySfvWVlILUyPg8Ic2qRPaPAIDkI294hnH/9f7cH8r3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781139394; c=relaxed/simple;
	bh=zZX8rj2xnDJy9ucaSFrgxV3ydk8koOn0INdR5mtGxw0=;
	h=To:Subject:From:Message-Id:Date; b=STbs9jxAnrNI9wYlQIgwCMFlVzHrZ/fsUr0lGG6HcEkOuEHbv5WG1P10y9ZhxpKrMclQZvj5m5LUBnv2NnrD9sQbjQ6YOaz9G26InxKhkRt8miMfUjdXNYBQeq14MVbwU8ByFJatB4I38phCAbaYxTGh42PXxxiFwh8BNBirIT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdrHg4Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdrHg4Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9EEC19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781139393;
	bh=zZX8rj2xnDJy9ucaSFrgxV3ydk8koOn0INdR5mtGxw0=;
	h=To:Subject:From:Date:From;
	b=gdrHg4Yb8t3OcVfjXwNGtQEXZqwgSR7/CqWhsdTal/97DozllKv7IMHjPpN4g0bkK
	 7YHBy/Wh0vx6gS72mdcGBquyumnnOCzqk8/+byPpOo7IQqyqANYWRgD3kzCYVB/nLf
	 tzL4gIc5n7nglen5qFrZ4ek+JeXPURQX1QOc1Hx11lhAyBSAvSGq8Oz7zmz0v1sW+2
	 THbLzvtkjdM+X4MpNxDJZ3xXhToCr8LZNiXNulBXeyuuS+d3dSJcB8JXa7/6qzSeVf
	 tf0K5yTZ1oYBr54w5/JFN0Gy5dV69b/TkpGdkYW/SWR0qcPxaZQX6jGfvNMw+/RqOD
	 mOkdGR1hzwndQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1186CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113939369.24963.7203836522340950743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a75ddba7673dab20cfd3328c6d2c38d2a6c456fd71158c1f7557e25df734d2a
Date: Thu, 11 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781139393
