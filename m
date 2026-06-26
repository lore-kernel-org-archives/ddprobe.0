Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F54374A06
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782496114; cv=none; b=UriRPrPUp9sGc7srq9/E39lm5y8+UCND/e8zZvfh2QHAXfrHOOmc1Zz7E+x42Y4f9wRTd0/6qiSbSITHR/Ugfx8ZrRSmKPBswSMXn5F4aUPuPU54M22H06GzKkueNiJjgiGklV+n6JNDm1RLr4eoQbK40ZLMvs2HA5Qh2XdJ3Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782496114; c=relaxed/simple;
	bh=yWjwKxfxzEhUrt+s3DM4HAr1NXR891qs8Lvb3DLhWIk=;
	h=To:Subject:From:Message-Id:Date; b=M+XvOjpXcYHjXefMqe1RaUqNKWy57ur9sfz+VE64t4Eci1wEp4u2UICE3zJP4owdnzrTU868JYiZQVkqJgq/AjgIs6gdqcaTcTJ7fW+Feoqqfe4urBeOqahpzseN5fsIIVKqyUpttX2AA9yenQD3v2e/4FqcHIlxqsruk9pMo2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDozxnG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDozxnG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D16C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782496113;
	bh=yWjwKxfxzEhUrt+s3DM4HAr1NXR891qs8Lvb3DLhWIk=;
	h=To:Subject:From:Date:From;
	b=BDozxnG6cGI9U9UwOOckbfMusm/gvBJgCwWxPdYOTK+gaw83mX9kRN+GyX5cmfnHN
	 v+0885fgZbPWA8zV9oSkzLbxXvHiRyfo6qz09gqufenOde1xMcuVKsSZIA+dBslDOY
	 bNruQQfeTrkAoQx6nRqywXMhrQG7x5hPnCdbxyy+/BIqfjcKZyU+yw2xKjMGsr0U2X
	 4OdbUVcTsffv+bwsuu4diB5tvrzEp78U6Y0BdgCT8kK2myTduQQrAqnQbbR1GCh227
	 E8DHc3LRXiSuBto1giaL4sxxOw3jJEWMIqL+7b46+QYfeYSpT91bCgSkxnaonruA3D
	 6BA6R5cd+bs/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED99C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249611370.23344.11839304398586633563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2866f4fea6b06430111c509a23b109ccd12aa952bf18abe65daa714660a377f6
Date: Fri, 26 Jun 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782496113
