Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E95E54B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780968874; cv=none; b=BmZ1kctzOrgoHkaoZhgRTvPdm0DUgY7ExiMRLqjMrp/zD5PZUzxDaMrG2pKz4RJjK7x3kSjJcCDN8ukUntOpZdPWp/O1RJf0E4vb1iTahKFezkAxpLAw0RjeX+XENctYRCbjdCCexkjNgZS4LhBV49dCnKOwPC+7dbJYHqfTUM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780968874; c=relaxed/simple;
	bh=jxXM2PpjOMF2IEdRIiFFWOkccs588JWvXAzpQMwoz88=;
	h=To:Subject:From:Message-Id:Date; b=m/vBEh/E4UxK4ndNLTHKurBwcN1eH4Vhee4I/e5SMSkOaI0zUFpP5uoCdwot+o1RDOy02lMekXqMD+G0Tdkrah8hHEctcN0UXPMeFMuE/M98h+eDAGZ4WapUR04U3fo8c0RfplAjrZH0EWzYdeD99JdTy2cqz1kr2va3Iy3vnbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBqV5/16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBqV5/16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE803C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780968873;
	bh=jxXM2PpjOMF2IEdRIiFFWOkccs588JWvXAzpQMwoz88=;
	h=To:Subject:From:Date:From;
	b=UBqV5/16lMhv1zCt3J509N5MlJpCVSgF6OVP5Ryuos+nMC2oelTYAN0y2zlAgDkuK
	 YQCZsuXgw02dcJQIuLh5FqnO/0WG1k2gyt4Li4j6zyuNNm5dnx0AYsMCOR1PPE63vq
	 Ic/A/zytjyF8A1SLlHkI0tY/B6QcKjJo3Ioi2IeNViik8Yji7lUlK5vCjAAvWplMg/
	 pFOLEC4GYrFy5VrVfL4aqlVHPpf8eDchfZ5o+0JcBp5q3tbHNiqnfw9oWws7B9qnuO
	 G+SZzkNlukdlVx1TpeM2BBghd+DOrTbwLbFz1E225rXxRqprpqr9nN4YE3c+pzl89x
	 HI7LVgP0XBKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46F0CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096887370.15190.4511283145792298671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd321b958815ec20dcdd624034a4b3583467f2a2401fb44f7d03438108425d48
Date: Tue, 09 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780968873
