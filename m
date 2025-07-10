Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA65FC1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752131394; cv=none; b=VIFmtS6ejYtN4xe2cXU09Y0Yt93okWsO2L8wZNoTf5BkqS8993/xukY6XDsKLfORPaTe3yufZebf7wBVay5ePW3k3hR2nu999kHhfky+cRRy6Nwe7r9Nj2nMrjO7dUp2pkCuOSx61vdW+yqfLmj+wBTuIiPcK2WhHFiCiBiiUQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752131394; c=relaxed/simple;
	bh=RqsE0O2lMxR8U8UgaIrqXUC2a6+lU5+fZ+vHKS/nMbg=;
	h=To:Subject:From:Message-Id:Date; b=UKqtKQgwSpp8GoawDEjRA8bkJTS2xMCAV3lBYwLerPRwXnb+4DPYHHdPW9K/Y60zxauThU+mQnOqLIFArqWkRCDiuxAYtFY6kCVy1nQpQnB9A7mgsQxy9zh9iOLeXia+eAOXg5ij3SGfxiu5rlJKiXJWUnSOlMMqCBmma1//ggo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9Z3P2na; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9Z3P2na"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7870C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752131393;
	bh=RqsE0O2lMxR8U8UgaIrqXUC2a6+lU5+fZ+vHKS/nMbg=;
	h=To:Subject:From:Date:From;
	b=f9Z3P2na/xWurjjWGJSrOZGy1xbR7v06RvnNpY2GISONPXtqeaeTNPl5HC0Qsh6jp
	 xOMUzPn1CiNml7SdSx4INId7Mwv2J3DQPxJ87RjxW01sFtiZ9T8BkA+AB/9q8lpnEf
	 nLcUeSzIOmlujxot5oERXg2a4QUKupENucikrk9uU4qklpV4xZy8Kivs8SPJ6zeeRD
	 axjVqOTzlN4o7RIEQVDUYYrhNnhTX9X5GYUxQ7sH7rYdbVwudNiceKd7aMkEzqd6VP
	 WBi476f0J/j65X4irFVvyGiZuFQA+azXt8XR7IbFH247eKGFA+gMLHju4C1MI7cD4w
	 37x3QcyFNJ9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFEC83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213139358.16872.2204563389530892744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db038e237e6b71bc35d3184d7b258f38d23e88a7db5f9669eb9e0b95a39e73ca
Date: Thu, 10 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752131393
