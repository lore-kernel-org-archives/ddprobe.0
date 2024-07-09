Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BB410FA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720485983; cv=none; b=agiFgW2ZFjI0xX+/hxqRrhm0hdQTeqBoTDraJwmjFCNsEDIP9eLc2QtYOaMtMKXtcU1Js3JvgqpNLqBRQJnMnu4GN5dlZ7l9dXdJ44v9Wrm42sjwbRgvt80JpkndDKI349gmG5cyvMQVOLt/LnrwhplDqym4HTBnRN24tOeUy0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720485983; c=relaxed/simple;
	bh=A1AzO+zWoXY8z4+9RFKo4Miujk0EcVM80NBbymf41LE=;
	h=To:Subject:From:Message-Id:Date; b=f3AEmv/IPRg5Shnnu/u9AzaNeHRjXpf69CFBOHn+JDbas8I+7N6OJldGvYQg6g6UoNHfmY6p+V4IzT2WAjRdzuPiSRhzp5ygh4pkZmeLpu44DY2RkCL9IxKhMStOsiurztbRLba8wbeTYv0RQJ/iaXkwjTcY9+p75HqZYi+6I6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv5yn7Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv5yn7Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA2CC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720485983;
	bh=A1AzO+zWoXY8z4+9RFKo4Miujk0EcVM80NBbymf41LE=;
	h=To:Subject:From:Date:From;
	b=Lv5yn7DlJ8i6wd9V3ddnE8bxrVl2+BakydgSokc+RZg8RFlV7i4jPiEsvn8W5LYNq
	 qxuQFEcTLjMEGS5rmCkFLaNdbORxcMfWPD8trECiS4C2NEi/m9cU/FtXPP9qHtiTZ5
	 B6VExRO+GzXqAEyXErspHYnZmIq0wqYm9VdQ7eAKU3eaEaEn9AUhsmlpw7AsLCZPHF
	 PpA5C/MKOWxIgWigaW8TYt+XYSaUsO7lc72ix7y6pxRyD8DV8px0N9ql1tDbS3mF/d
	 scyAKBUz7M+NXxzy7vp8oVbgnVuz2f3wDIyC5+JESHs0320w39P0n10xdsGCyrIlUN
	 p1Fpoux7Da79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1371C3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048598284.11198.7312788451881991641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8bb1bc071065c554d69f1788c9f87dbe749ca00ab223b51215d3c1dbe295a8
Date: Tue, 09 Jul 2024 00:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720485982
