Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B35E481FA0
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786549234; cv=none; b=rRh1UsIxmznGpsVYA9Vte9cDAkSj89BEBAFjmcr3GV8sSxQijJcX+m/wb9I7vihiCWzDfMRx94Rj+e/Erp+GgJeUTw+dKb3GHI+qyZI7jpwawEpq4ptkPLf78Agzg4n13cfT7aCt5dLJFByd89vUvgkOaPyG6Z5HsJsu77GMb1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786549234; c=relaxed/simple;
	bh=/LfHqIh3MpDdvgzLkQrpXhV6IvKRjm2B/hg6IO/LCTs=;
	h=To:Subject:From:Message-Id:Date; b=LzP/uvmM5nd6bnc+zYiszDaa0X1flf8FDYffopg6l3Hi1oSneR4Opc7mAoJYa34xtG/4u8Vo+g9B9RBsOdeahyEVYLk5xoCMbTlnFBena0gb2PKrDlhrZf/O4PUnuRixTkSO19tVIK6YUfQTFL1Kd9G5qFI3viN9pnqBfZdZn2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gmpa0PU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gmpa0PU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54B2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786549233;
	bh=/LfHqIh3MpDdvgzLkQrpXhV6IvKRjm2B/hg6IO/LCTs=;
	h=To:Subject:From:Date:From;
	b=Gmpa0PU2MzTtec364UjqgYEAvwF5q+FeRLJ8lOtaB6sQcdZVQGXKJrXaA9Y9u7AFQ
	 JaH7JR4Jb4cRjbZaP/DvOMIUrjCe2UaR3I+YHfVhttvoU2PeDrhBMd0yAp9KbfKAs9
	 NGvdaSz2WEylMc3JBIYSEcqWKi8YN5sdQpU5QS8HB0gdxYmR4prpDduY+D+qNQILhm
	 0SCZzktg2ic5H1c3QOQerdqw6Jy58T3a9JkZxrr10uSZfpKjFz9sVTqXSZwVa9ROt7
	 jLjfZFrJwWoOF2aqOdAZeK0Om7k7nho23HcfOzVZ+02ab0hftA6p3XgnRyy7hcmNrR
	 TVvalIDtWGnUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE076C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654923369.10644.11102454802080245223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f262cfa79b9b11064335dac86c7dcf480a2e32c7a072cdf730005b95bd57922
Date: Wed, 12 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786549233
