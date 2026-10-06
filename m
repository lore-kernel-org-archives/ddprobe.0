Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4736F49C4CD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791305434; cv=none; b=P6AgUTBmgfKUmAEl4gXBAgjPgH6zr5172UHd3o9YEz5wJHFL8mbbHV/tn5Dw2RRgDbDpozvmscA1QX4JBb+gfpZSu4HHFJssxlZcrYnrHdUfBKDi3ItnJqp9Kxk2NqDfd30WbTeurXdkZ1AWik0LkJQTOV6vY9syLd2R3teWRuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791305434; c=relaxed/simple;
	bh=FLyKdPEGMbsOzHIJ+MooNiONeV6iaNt3b7T0FAYJ9O8=;
	h=To:Subject:From:Message-Id:Date; b=TKTNdZ8WF0dlgXGUa9/257QwRRwA70tt/8K00f0fR7OBppGcsjN7S8rOtfPjwlRJlccNrT4IEsvcDdWPJlcJZhf7mITcaXs/CjQ4bYBkaGO2uKvMA8+DbIgYDhLR0Nh21zQBKtgv+T7wui6NDBIVrz0Vqaq+l4z0goqwoay9/yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz6el913; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz6el913"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7774C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791305433;
	bh=FLyKdPEGMbsOzHIJ+MooNiONeV6iaNt3b7T0FAYJ9O8=;
	h=To:Subject:From:Date:From;
	b=Uz6el913O7qVjzSbMo7seu3bXTBHEgwRu2ZPvEGY5E8J7cuSf+HnRVPXOFV3Q8tfj
	 VDXyyUVMe5U9tARfDYLmV/5Av5KE4sdbyyOLjK7CP5q9nXNv6PgD557IE2lklp+H6B
	 82QZBALTKTXnqSecSUFJPEcDcqGfE0f/fmteGWL5lXRecOM7dtT/qNTB0hhPQ7YBHe
	 rHkGb1XbxGXDgNhmsngE5PSEV0gcwe46Ab6S/xdrGGEDlcDCcQNQCZ5fWt9yznu/Zy
	 1ImwA/ZeDUQu15WUE1TAatCKnmSfpFiKU1A8WQa9zrG7XVxhi8d1633kSMTLPzB8cO
	 R0VYEgIsKfmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9E5CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130543369.12087.13849796191388967215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6779a18ffdc8de52d61b64e8ca107dad15dd63a1859ff6a6aa26c4fa81b7b4
Date: Tue, 06 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791305433
