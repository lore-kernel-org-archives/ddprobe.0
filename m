Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E46184D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722137754; cv=none; b=dwOFVllfGHYD7Fv8/g3v3Wu2mqQQk0BQaviUYFECx/kNd7ujOdfKvn99yXXxjz1O/ctg/PC3Im+2hFVKubXyw3DdtdcO6dYCMnYh35OVLtZQkZnTOxsmaNm1XN2vZUw1zNCJmvN0fWNFZTBc2i9nxCq6m7kntUdi0nJ6J6i5BYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722137754; c=relaxed/simple;
	bh=0wdRgDyvbF1glomvrLzaaF6TlwHeClFNCkRgO+tDhPE=;
	h=To:Subject:From:Message-Id:Date; b=j84/mRVwVuDZWD2csF64P7Y4x4EQSA2PouT3XjU5/yk//jqnwTEnYm62dX7koy0TzsLntPliD8umwX3mlB5OVtdJ7owda4LTncM5ctFCL5ymHlTXSa3komR9tQifkD9Dgn7eaeVseaA5bgBOdDV8qqmhV2YUH7q48pEGTeYNZZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGxBDse2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGxBDse2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B1BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722137753;
	bh=0wdRgDyvbF1glomvrLzaaF6TlwHeClFNCkRgO+tDhPE=;
	h=To:Subject:From:Date:From;
	b=sGxBDse2MbYe1kbrUv/ccfZiDSwlVP/GeOEaZGbs9BOx774/sL8cAkp6+R0gTGzFP
	 VPGHyXUzQy3wMZ8+D1inKspcAkSyGZC9J5fx/mZ+WzKD42mEBuQBoyU1JvBdt6JH9e
	 SQVX7k4hZ6WWb30bVTHH8lbIcWSJYMEfa1dMHpn8ejiLgApHxcATcxFcBVw06VQSkS
	 BxH43ZdNkBrye2VCJutWYqr6OdsItOtbjwXLXOmKmy2HswCVe/XfUNmhnws55Xzr1Z
	 YkNmTypDRGXwAPNemBHwte/kr2MvcEdAKOKBMZXh4NZP1/xL0Cy0VXWd2Gq8rNwg7H
	 I1iTbvHEOZBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CCFC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213775359.27589.3591093227660683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c39f48873c8c2d8cf6ac83bb7d2bcadeed15e1b716f9a97b48b07708dfbbf1
Date: Sun, 28 Jul 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722137753
