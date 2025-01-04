Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7242AA1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736013354; cv=none; b=Y8QHSaeA2wJaAbohuXQtDq9oglOKEi6DHOI/PviZMaTQLKf+w3eRA23BFUp5jyXxCW/vIQ/ZUKg0Doci50O00JodX+RUZSzgKHuuSebFSNVoITDPxkjNZgTVtDFZAhUpQnWSQ8MT2OXxlpi7bLJJ7/1eKxTUHpvzylCEZmPITIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736013354; c=relaxed/simple;
	bh=UXd48QQP6wwsWjjmkNdaCn9QfWTdpwtlkKvaSdEQ9lU=;
	h=To:Subject:From:Message-Id:Date; b=TGdyVpf66iGA8uULkK3bTd+yFLNigoy+2A/F5CjP8afKkk2HE5YpYkXJuLR5NHGL/MvYbIzOes5h4wVB/RcjMfaDJXKMBYTtBYVER8WNcSstNVazsPKR5oqHxDvj7Alh3SB/lyIb/gZmTkcuX6fsMfVn/Xw+nLLoM3fL0GcSO/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C128fV7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C128fV7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88EEC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736013353;
	bh=UXd48QQP6wwsWjjmkNdaCn9QfWTdpwtlkKvaSdEQ9lU=;
	h=To:Subject:From:Date:From;
	b=C128fV7QqYKjy1ZkHoIq7PfhU0lXyCueMOzeAJpPRiHSuPnYS7OchrktULWCrnChW
	 uA/oBfKXrdI8Tk2y2vkzdb0O2BsKKbwugdncGgPZ/oFXLilBLrIuvZdUm4ad9pnqWQ
	 PQfw7k8TPGEaylWfbsR5PiBMfqmJU+WCdE6jPdtuYWUpIhq0KIFDhPho1sJ6uzVZxL
	 rJh3FLo1di5X3FyBIsA1ArJv0GGmpqfgNBwGGpaykXep3NwkqMm35lvgCz3cgLP3xO
	 UzBlcr6z1WIfS2TmoD7tafDdkIm4jPH627XttO3RApX0OsezqDQBuo5tpMpU87UY+9
	 LNaelfZm+Q/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6483E77199
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601335363.29577.4524873658730019163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9b936e35ece150bec84f574ec1635a269c69a0bd75e3c60298acbbece1b09d
Date: Sat, 04 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736013353
