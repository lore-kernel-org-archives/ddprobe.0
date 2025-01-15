Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A4200BB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922954; cv=none; b=u4YuIcLW4eJ1kTJr/uy5SiZ5rHKTr5CP58Mr+gzoHU8FdhxXy5+T4eaRmng2w4NwiFoJ2hAuZ1WH4cArqAy8GjAOrFRjT4KqpWo6f5Gj07ewZsbPMSnRu2qqQ/wEgi6XFRvILqoPgkzPaSGHCwiAtWpG1KeJGpLvxKxfzJ2Iokc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922954; c=relaxed/simple;
	bh=mI2uTNy76qGnkjz37Kzlw++PVBq682JIrzPO9xSgXS0=;
	h=To:Subject:From:Message-Id:Date; b=iMdMf/qP0j0O42Fi2N/Npdkz6ka7DXhxEBx1Cszx/faUM91BT7KDSly63/1MqQzhgaiwcNByV5J6TxTzbYxSIA0LrVEvZ6nZ4eFkErEoY9eTva6u3PliXBMxfdV6bDejPY0OWN9YmDMbFfU/d3q9wbdCV8mV1tAu+Vcan0Vyaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtNeR7A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtNeR7A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B4BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736922953;
	bh=mI2uTNy76qGnkjz37Kzlw++PVBq682JIrzPO9xSgXS0=;
	h=To:Subject:From:Date:From;
	b=WtNeR7A7pU4o2VimGdfFnn+pQfeKWam+r49H2ADN84vw+XmnKqjcO45DC0JRytupz
	 0tQiA3ctyTUr0tHDCPhVsAdVS8fuwhVL+/YZ1jES1wHgz5qPUf2IOl3wg6+ydunMRx
	 pioqILUWfALzyXureS/4gQWAXo4yxrJdtB9HU5387p6VH7mzh1dZ+36LiieiDib23+
	 kz65dCqG2sy8ZhcKBOgKv0KfX1un23lS4b8jwySNZxXqoEIgofK1QlwxmbRjhiNFzL
	 h+QeD2uAgh/qjgDv1fHlF7ri0ZPW9v1+FOZYmxRaPk/PtaNe9D/OPLq6f5G3JplZbL
	 /cfyyj9ldPy+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B512C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692295362.12287.9043473645599905887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ee680dee857d4e4922c4ad969d86b63735de8d99c7e0aac44dd749e83c7935
Date: Wed, 15 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736922953
