Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5902FFDFC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770314634; cv=none; b=kRm03vnAiMN0S9suPwprBWXgp9vRZW+6L6omsTQKOfQohDYr3YiWtDXC06qYq9eBvz3LZtXT+1cvbZALNBTkcWIN4EAi4K4JO39+ECPRzy6Xy4ZOU7/vOTM14LKLy/2hXkX1MwgxB27LETMWCX7EmGRr19BznkH/EkYTdpLr254=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770314634; c=relaxed/simple;
	bh=nG1Fb1gf0rmVtXNT89BWObtj9wY/PzdI+gpD7Qq0gzo=;
	h=To:Subject:From:Message-Id:Date; b=uOoCFZHXVMIM5aNFbb7D+nVSTGCLvDLfeI6OrKXZVLUxnFRzO4HE/+OgtdRohzND522AHEXkzr8BoEuuXhrTrPgtaXSpzRQlQrnwdCvWbwgZSq43TqQ20P8nb7FhZoRpTrfpyBqXEyvH3lYOLKqPSDWv+M6XlqdfAvOnoANnmwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1f1eisT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1f1eisT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2573C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770314633;
	bh=nG1Fb1gf0rmVtXNT89BWObtj9wY/PzdI+gpD7Qq0gzo=;
	h=To:Subject:From:Date:From;
	b=b1f1eisTy5TnshET98lBS8KNEvIm8jh7uTy1EUzMRfi6UgrYZI3O8AGPS2YjXbCqy
	 fzjUooprRgjslt2oJjIf8XCNg8apUR6+EqexUWm8xa0/kVTKAR4AdQyjjyFMDMpkk/
	 Jbxw9VeIPKenL4a4IjLR+OEWG6lkZ/CU6ggijsQ9YhD4mDDB4FqRZLTK2eN55r+EHu
	 wYXu2k1WDLmm88A4C0I9Ku15wvTxFdgnsTUQHrUxn+10UZULkzeCmv98Ttu5lMFOFm
	 T2l4iUFv8x3axkxB05azNu/Ak+K4raLaA0xt+k0vSfKhIKUq+jd+tzLmVh4oWhDwcb
	 mSBUW505CadSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A66ECD994
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031463365.18963.3736185555318396822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be36a34e1b7073740346c75d3bb51e816aff31ccd0a732606e0e3792c79cd2f2
Date: Thu, 05 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770314633
