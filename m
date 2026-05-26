Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111B2BD11
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779772354; cv=none; b=hpht1KYOK/vOEF2UcEURVQG0r2l6AyopysOLjXNlUfj7hXYSfUkMT0AeVPY2u00kEvUPwosjUOhxT5KKHNOyUSc4ShqJf7vKTcTdYlHjAlJn+5C02xSl56ip5ljMGpHf+ipIkOcZxOV6ruWTT9Tg0kM6VMTKTOp89nLc1vVKy4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779772354; c=relaxed/simple;
	bh=vENvQ9LhVBbygBbtfivlQH6RdBYOZSioyRbb1o57eKE=;
	h=To:Subject:From:Message-Id:Date; b=R3j07W1ddlnbj0yPJnDopfOKRfqivxrxMA62WAQe8Zi1mPlg4z5tv5NrfjKs6r80qZsxvt8GwYBYIjmsZG1quHZi7xdyMV+KzLIHx8omlQGFC6rtm0WZ9+UEF5OC7pmIohBvNBe1/bm3x2UeWlGqqmqHg4vR16DZaj97qXiupzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC6IQzxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC6IQzxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D46C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779772353;
	bh=vENvQ9LhVBbygBbtfivlQH6RdBYOZSioyRbb1o57eKE=;
	h=To:Subject:From:Date:From;
	b=EC6IQzxgmbPndqHX2+4C9SQ5bZFphKSRbEEFyHXFvjlMqc1ucUyGhPfOv6jOtzt6N
	 NtJpKXhe6+I5i8kXwARbSrI+b+ggiid1DjS/4AxkoEsGj64HGMTpxhdejXUwPxBE/d
	 BYyZNgJAB09kaUnxyOqMP+zmNsNxGYkT6YrM5k+FXa2Z5P6srMvoY5SQe1GH64+81X
	 1zD+8XDEZne2WCnMsXWFK/MO6Zt5te7ArX54/4O9yO4Gso/tbZ0WUN35uiKkk+yCTV
	 Vv+avHQHDveP7fsmBgn/xsJdvTPnHOYqWz5p6TFIr1hB/zbw7X+xPxlyDblAa04Tff
	 UXcxhS14al3GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD373CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977235370.23828.11560613677639435147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3920094425568b349bd3e05366dc6d642a8e8e2fcbd8f3394ca8cbb60f591643
Date: Tue, 26 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779772353
