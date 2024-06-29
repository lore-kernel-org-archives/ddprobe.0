Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F1C224CE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719691463; cv=none; b=LIoaTMlh26JhsfebA5hGdlZw2N5tNSKe+7D3+RnMCUzeQCaxcskvOc8DCCdmZAhFwL3bVb0i+2Ic8K9gTb7VRmyJlk3rp3cktY/GBYwow4ceUY4oOGZ7PzolqEodBxaB43U8hybsEwSK6x/33T31GYjyGLnJlBkuaLUSIoiScag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719691463; c=relaxed/simple;
	bh=ExV9ACTqWr8BYPnqpYqok895iD91jaxypCelLjoKJ+Q=;
	h=To:Subject:From:Message-Id:Date; b=pI4OncIanOkfA3MYH7fqUVyJeFKQ/g6QBkXV6JkTnpqZzGNiAqcMrsfXLlg6Jvj8fu6HUaSkVCaclrDQky1OB+fYxQWPYm2IEq57FJPVthMK43+CUKSbaD3BTcdhUNL/VagzqPoKILww8KohfZ/5SwTNwwwvRJbuP5yjARbSo4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa/LqqiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa/LqqiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E59C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719691462;
	bh=ExV9ACTqWr8BYPnqpYqok895iD91jaxypCelLjoKJ+Q=;
	h=To:Subject:From:Date:From;
	b=sa/LqqiXkJTTBka4Td72Iq3A5IUWnTIcuhWgVWHuUhN7ekxY+YaI7KmS7C6FtlLa0
	 FpsYKmw3RRADOnFJv3Pp1g2oHwNzqInU2sO6a1tIOY9zIkw/7ln7R1So2ekeGDOneh
	 iTe7yg6HeAgJH2rmxkSUJ1AGSlHK5FaZXNIQCK+DRQ2vIkCjdPfJF2PWQg81LPBk17
	 OW+B2VS+HcbilRnnL4PQF8+TK79aATQIcIm5P5Tagaf1PMMmMToNhX+X8mGaTXjbal
	 VfV4w8Xcoi+EScUQBb5+xjDCFYUIm2U/iLM0ODJpi19BGmlWS0hVTQfH1L6yi8be8N
	 iwL5/HWDBpVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E2DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969146280.28945.8934782033429444396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2196c1b6d0e17a4b2d130596f13b45b603c9ac0b74b18ac5e58f6d4ad1e7e7be
Date: Sat, 29 Jun 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719691462
