Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC7C188CC9
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767759834; cv=none; b=CPCpa30DObM/VSaYH7zopxU8/VuAa4Yagk0w8Afz1B/ultXfGXI/WP6fO88Wt4aEtGYrRMfMNhY4kceO6Y1Moh93ekHox2bYRCVS0vbgk8GEqk4OjS3dOI1e6Z44MZZtQ5zKJpEXElWtnkDm5hkZa6qQjpK+s/fPHhS4MTuAnWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767759834; c=relaxed/simple;
	bh=W7SKofG8YG3NPoLh6GDM+X1esHDuIeahThZUf1gnxTo=;
	h=To:Subject:From:Message-Id:Date; b=cJcERuo+WpSBuoOY+OaKXXmpeyYjSSM9wK0gAOVYa2gDauls+AChcHg95an3aFD5JURjdvwiu7YcTkBTp7Hgi2/PNsvSfBc6I4SuE4NB1W2D+ra3x2rsn8gIqhrCGI+AqUz/pLjcClLatluWbUwlkNs62NhpttM+JvKSiveY6dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQXA7bC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQXA7bC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC922C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767759833;
	bh=W7SKofG8YG3NPoLh6GDM+X1esHDuIeahThZUf1gnxTo=;
	h=To:Subject:From:Date:From;
	b=VQXA7bC5Yycux+xia/V0/NOsLChJp8feOr/nfv1n39arzoCXbgufjlilUwosf68IY
	 +8dDFMBrw5k8twxIBPa1hOxtBuDiGoMQx932YzTm5vPeh9qcPGT7EwNVwpIpkHxPKi
	 bD1KAlKXFUyR0kFOyO1hAUiRnQ/4P1vxJGzTXblUIVwWMsYWtYanNxb7ZmfEpm1W7V
	 kGpTgUuXExmD3RfvT7nv9ZlW3q7fDR5Mar4qlPlWF8Y6PgaFU4unOHO3ebe3AmRgX1
	 abORlJsMOilDfCrd26PFTlFUHhNajiD5jxAEqBSgHn75ZEVA3/XVKFTNp9SA17nQSY
	 Bt6EqzD094a5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9695BCF6BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775983358.1483.3909613895952288497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f773c02ffe0d0d8e74b08e1963ec90b35a50cce2f6a7fce8937699a925044c
Date: Wed, 07 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767759833
