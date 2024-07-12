Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9C01DFD2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720802363; cv=none; b=NttSzqnPvha4LOvv8PGdEYJBvuAzJM7Tjl1i0XC9coxGMVg/YxBhFmXDRSWIuGiUZwJm0bDa2CGfCuFfRFKY4s5je+4RfoF/6HXTdBvuNFKuWInB0aod5T1GtUzDlwvzMJPJz1LRuqyNffwJS4L6XUC1GL2R2wthFxpE52ONcMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720802363; c=relaxed/simple;
	bh=wZ11sXv73t9Zb2FUayMA2F6BC4dQlIPz8jiGkZU3pDY=;
	h=To:Subject:From:Message-Id:Date; b=d4up5lrzCuVrzNfTJwxr84sFGbg9jOTFacW1whe7zE5aigXxYW4W8upsBuNsikIH38g0EV1+hgwgWyd2Qhx0GqRXaoH42uq/85GxSriI5GLY/k+7d+fVNvb/IehKnPK68/cNDA7TFeDHfzy8nu3/eXTzoKlEKPJM+neDDJ9z/iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdIpbxAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdIpbxAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE274C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720802363;
	bh=wZ11sXv73t9Zb2FUayMA2F6BC4dQlIPz8jiGkZU3pDY=;
	h=To:Subject:From:Date:From;
	b=AdIpbxAsFmrcBaWLm6HDvVi8prxhTbodU1O0Ty6pLYfnvW+LJu+qIyRHpmLJ6Nszu
	 MeQW27aIYevAMzaMhzauuYTca2/WLq59/n8e53boP+LdXyvXn34Oo5PXPkW1EE+jVa
	 21Dg1ul1lK26xFJqLcBh8OZIJFjPtk5PaPCZeG8NF6zoM6ZHL4P7xx3KKcZQejI63x
	 s3S4agePDPu8uSxUFVq/CVwH70sppSiff+WFz6zB2rCCBvb0FEBhYh16/ZWG5BzS3G
	 NOraYii4hs+FNTa2d2FgXjrmUCBQNK3gnvEwo7Fc+MaIymKI+gXP6aYFw0KqzkSg8a
	 f4DonUrHrhovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D675EC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080236286.1643.2957067892257729278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2d89acf66197fa79c42f132bcbcb0c9cd99d9eb67c10a998f53e4f04685b75
Date: Fri, 12 Jul 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720802362
