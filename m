Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18234301708
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766439234; cv=none; b=ByDCR9TaAsiqHzXHfer7NCG4NBIbIXTY35Ozm+bc+iDme9it/1ghsh2jBXMFu0lHjEoQE2uU44U/zeivWBFza1r84/y77QX+kTf0Ohe+mLmmZT6SI7KYGbDwqgG3A2OAqMuFfCTfZCXWhEy/UHckHZjfd3ak1eA3SGQBm12wuJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766439234; c=relaxed/simple;
	bh=izBCnnMmWEu0Omfy1bUVemDbw3gR7GVwxYuKEnHrhlc=;
	h=To:Subject:From:Message-Id:Date; b=Grlx+QvCHn1TgCDHJT2wtTWD+7I5EMoAWvZo9DeQ9bavGD1l6ysjNv30kYYMUxL7zIZzGy2yOTeIE8VGn19yPfIJzT9QArrZVlPQbkuvvFq6DZ66lRzuB124Mxs33asALynVSF2lUdZYPVXdHIIKTQF8kj5wEv3/sjkAYiduT2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2DVqECy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2DVqECy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766439233;
	bh=izBCnnMmWEu0Omfy1bUVemDbw3gR7GVwxYuKEnHrhlc=;
	h=To:Subject:From:Date:From;
	b=l2DVqECyXaAp9RR4SvZ/g/YqxV2JoeZhLz8XjoCnyQlZh55cCI/EsVtMSa95RZRr1
	 4d7AWVdr7op7wuxoM0goGJflPB5X1gABCu/0A0A6rBG4qjAbyFBALrUfZurDZAsCL2
	 GdvAQDEzqoTEwWu+TyETf/SSx9fLBwx1l6NgG7HxURjvl5dqPzuLRLNNt2P9fFSt+8
	 xNZXtfOXVbwf9GgjGybzxoh3IYv286FDlSqZ63p3k6MzVLvpT3ZDh7E/49dVlnnJyR
	 f7TA4bO0ngJrZ+3CL3cSuOkuyKjFtX5+IWJ00+4+kUE8hQe4YACpAwZmekH2pYQYV5
	 DI9JZltM+Y4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92101E6ADE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643923358.29920.14493155613037303585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0721a921bea5a9d802138563f8e374972004d7b31efa2a039801ecf718db8fa6
Date: Mon, 22 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766439233
