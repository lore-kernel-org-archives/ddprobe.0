Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213B329CB52
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762443594; cv=none; b=WKyuwD9fWtaK/cBkKMlHyMvjiLgy/ZVid2DvKvj9g55gMuL35uFz0nPtYreseh75v+/5Gd+JEkRIuAdfbGbMyYmHqTm7tdTmku+9fWIH+KbALraA7C57QwCOYuK4qNK+5MZWWi3v3BjDqfnbFRqEiwYeGkw65vowlS3T7mj5ato=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762443594; c=relaxed/simple;
	bh=kzDjcEd9GDO/RBzkj0Uet+jFeN/8BCZxz/e9boAPSPQ=;
	h=To:Subject:From:Message-Id:Date; b=mojuCzaiO0uImvkIZBp7D0t7IcSd2K/s1Ay2UbZjlrTmGAO8YrkTZRK+TZWVVS+853C0okWcQ/pei0ndZOnetIHZIsUbDMe2Byt9SF0jfmA5N1MrCv32kHWBSPsgo3juxw7BOWF0n9FcJmul9Q+CiL0GzJUFxnCthP327jaTFko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhL0sxPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhL0sxPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A669DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762443593;
	bh=kzDjcEd9GDO/RBzkj0Uet+jFeN/8BCZxz/e9boAPSPQ=;
	h=To:Subject:From:Date:From;
	b=XhL0sxPqBm1uhLBr6d3d8BbP7k3y4/Dw4bBmtYhZkXFFEIDVhEQlzctw6yZMphE3Z
	 sjWTep8torKCnL1fBo9BDQSqU3ds7CdqPl9JvFy4K26TMV7TfZZxWYwxZdtbHT+SWz
	 JPFEhQ38lJGjNoS5A6Enb38WanrvU1JHKyhflUy1QsC/Cuc9D+ggfQdv5YlZDT2MpG
	 YhLTWh/TuwkW9br9CpZ09xORw0hcr5trhO501XvBqihrHT5WnkTYDMIA1D8j5myZWG
	 12F/c2tOdMqwWVpWFnoH8hH+951+Z1F1CSZGX+YCGpSZrfT5zr6TPoFUlX/SwKTo/S
	 XD/D1JPl4L6PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94863CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244359359.5719.11217231807960609676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46c2099a3c2f13f527fb4b1d2cd528b3d63a9d649439ea6329126ea50746b21
Date: Thu, 06 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762443593
