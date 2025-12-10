Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2570C611E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765377174; cv=none; b=atVjlQlEIQTFMcDar26QwgKLSftnsX/6OGKkjJXG5HuVoLdwvCVb1a4Wr6Gzaj6vWQtHvnxxbdEXBw/fcQwGN3t4OItOUz7PPJrhX1GiAMeiIEInzX++z0DCQa1ozWp4Abpm7z9deQvazME2qU4O8Rj6cDxoVsDk9/n34HEguH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765377174; c=relaxed/simple;
	bh=8igNpJzPDKD7LwId1HysKffXVUd30YViHnm5X/S52IQ=;
	h=To:Subject:From:Message-Id:Date; b=XX7q3n985bWht2TJFMWfN9s2657x2U7SUL+e7jTUILyRUXeq2in4faKAYxj1RQNTY5TL7Be6shqXFsBCLAp4/cR723zvhzh1Us5WC7sne/vuF1gzjANhxMgaf2qXCGjTQZPY5F4l2ISX90/OGHy68S/L6tN8Z+ccKY3vPy0WWCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raudwiAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raudwiAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A646BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765377173;
	bh=8igNpJzPDKD7LwId1HysKffXVUd30YViHnm5X/S52IQ=;
	h=To:Subject:From:Date:From;
	b=raudwiAr5wpBQIzYrYqdLkTvW0kWaPIlpcfMP4Q+IvDgL1QrAYWdkUrpMfcx+ajr4
	 LSRhjQAFM6mycHOq6Ik04FxtcvZQimlsgZHy3aqd6VvS8+ZF2qJ5oZ2zkzqGFbMpAb
	 L1ORNB7UEq2Y95MdilMseM3QUU81pssfnanaiDvl697/fCoF9ZPQ1ZBD/+8bZ8vVnW
	 E16SkogM2USGK3cVRzYD8+Nmj05/C/1YuBNCNu1ZZmI9X23bl0AuwLRC/pjuJV4+ow
	 BLBK0DAAJcj6D5N9HnfeAxO9Zdrk9V3YeZ0SWX78OpVZ5mJJMQmDF6apWXe4U8hNeA
	 tvcFCQiEll+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE8D3C912
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537717360.22899.12454771721734900745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd475ae04d77378f953e341eab4037278e7e6bc25f570fb9b06c1c732df1252f
Date: Wed, 10 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765377173
