Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A912FDC22
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766438634; cv=none; b=bq71ut1HfBkRIVO2u7F3LQFFweBkOZjaFoLzlpRCRrCmODmNJ7Wk05gnnT4AtnyJqaYoWzkhIwrZjSHxaS2BPBOtk5kML/pXLoOg0fhsJEwotXAvRjdFMKWQ0DyMTNIdE3AoOS6U1zF0SH2qmV5RSndsMrby73yLYpZ8tnM4cCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766438634; c=relaxed/simple;
	bh=qHm4F6TQ+U5Ljk2rF/VIXynM4wfQqmCBYztyKhfnjOs=;
	h=To:Subject:From:Message-Id:Date; b=e1JMLVexk65P5xI9NJg41ZWwR60htxEKyVOdAr6vJThiIRqGVuIhjoPzVy5EXC3SQSDrvcrsj54FEsgFIRrqrSHjumsZ5FiMC2+mqK2gyksQA9AYHnKpPml6sStm30qCU4FvaPKAHFfXyyA8i00C0kIRI4DmbfBkdSZmGy5HPeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgFt84CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgFt84CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3264C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766438633;
	bh=qHm4F6TQ+U5Ljk2rF/VIXynM4wfQqmCBYztyKhfnjOs=;
	h=To:Subject:From:Date:From;
	b=SgFt84CIyZHyLZqiAtTWTeCJTXYFGO2WVBbaoarqPt5WN7b9F2d94wnJC36wWBcr9
	 rPhaDfJN0beab4Z69ESAAA5On/zWpCYh5bwivnzjQofgYM4CbCD4uA94njIfFzUpcp
	 BAkweClq1PCVdCyxQoAr1bkMgQ6TYe2V8JEKvDLY/OEPWTffxFRlJAJASMYHEkZIue
	 g2XVPb2c/Zzbf9qSSB97WR4RAO/9LLmtcr/J4XnjXQeltfiRZt54J9Uos2D+bq0+k/
	 5LpUjUeUFYUCty/Q/bYgXXfcm4/CeEftyOVxS0+gYb1iEkLVAaYKbBZanCXKVAXCXM
	 lslyUwWKMj48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92663E6ADFE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643863358.1074.1648014588627042934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836c269edd86b891b19011db1d3332451abab6fbd830e79a2d2c0f9a5f46b45b
Date: Mon, 22 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766438633
