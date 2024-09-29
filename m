Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C9EB667
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727576755; cv=none; b=EXtrwZxRpWwbB4XUNWyxwjgti/5pD4NjSriBlO2QBkM3y1pEMAAvXDjzXMRoHbqwx4AX1Fkb1RpHULOECV06EQ7UAU+rD6JJy8ccGVf+406I/H4w71FESfIWJ9XmtoWCPotw5fpHISm6FfSRUKKoWb85JiCa6azWo1TY8PjVhHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727576755; c=relaxed/simple;
	bh=lk3DZ9EVMETQs+IPYEwosumlKBEa4j5h6H1CXN///3Y=;
	h=To:Subject:From:Message-Id:Date; b=oFzRPwvjCY9slAssq5t6ebT48tQ7MIPXThuS8113yf9aqyYxZcgSwM35xq+l3r10sdsjJo9GEya6/hJhrIhnqLYXcFbIf1mreuTHHRmonSSBQrY7zgbO/FasCAmdbEayENlKL1zGqvtVE5CI7r6ENX9XT62JyILETGcB+iXOwj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrTDTNk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrTDTNk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB2BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727576754;
	bh=lk3DZ9EVMETQs+IPYEwosumlKBEa4j5h6H1CXN///3Y=;
	h=To:Subject:From:Date:From;
	b=rrTDTNk7iA7DwVqGdNCyzYwJMtv08IO8AUVfe5kJbVC9pXxEuUyvvXFRplgxre6sj
	 DW3Ug5OaMOFhSQnapyPuqCBNxwtSuTelpMX3R/z1CLxuOevLfWWmZCv9V3oufu9Hxw
	 NTPFeFvdOQA+YZkJPpRBZM6hPeskfqm+AavsyXMnZp21YcNxOaMZIcBl9VdE2U11+6
	 S+Bd88kzsEi/P92QASxa/8PftI9VHjXfAmQS/Ex8NxKuQrTw2TW8HmHiAP44iZ8EQf
	 tuzHGm52RqQ4cdZuDAsxL6mrJ1GBUZZsKJrbbcwgnmYXdpMN2Ebwf3UYgLhdq+KFzd
	 xQYMDRQqNECbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B2CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757675358.1092.17370210206441897299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b3ec117f3c34be895311a887eb93b0a6651f726d83a16f8abeb343ab08af35
Date: Sun, 29 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727576753
