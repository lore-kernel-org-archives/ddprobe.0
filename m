Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329291AAE26
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727976954; cv=none; b=LbzpRBqa4wIQ/qaX4eoSaZdRboioxNjiD/vtaMC58XsJR4OO8OnntWXbMVmRyefcNgxaSh7pH3Bv0xYpCJ4yZ27EBb8fMJrKUODt4EUGhX7hlmrjz9UOLIvFAmIatDaVHeocKC6KivVn83qGrvYeYB7tJPHRL5Q9L3duIee/d7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727976954; c=relaxed/simple;
	bh=9AcyFxWUZ5thtrRCmfv5SOxB+2zo2H7ws+Glx5p9gRc=;
	h=To:Subject:From:Message-Id:Date; b=GPKOBDwPj4NGKNbFEa+I3KlmBcmoUU6yajtla4Fl/FauuWh+Fh2lwP6aaAEnTpSmr1JMJXisFvW3nX28s6WzBMBKibt6wr+X/JF2bcKhd7qvn6GFbyfDGLTCxU4zCFpU/WvK0D6E/liwzd8fVcVjib2JXBku90n1VE9X0lbJysI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVcGx7Zm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVcGx7Zm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AB3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727976953;
	bh=9AcyFxWUZ5thtrRCmfv5SOxB+2zo2H7ws+Glx5p9gRc=;
	h=To:Subject:From:Date:From;
	b=CVcGx7Zmztld9HKFbeSARzQ7IqLqbFzyHYnjV4WOI+DB+5ZPSZWU/XOxtcy+RBj5l
	 0MDA/opTH29E6oBFAwMiV+HBGA3I22I0hyz+xsWz4fEuHr3C1c7+saqhNNdrjZOJRe
	 S/Py5rCLt6Wa1o49JKaW69geeH0c4HNOUtnH6kOzYgHu7AcdnMRPb+0d2/nxZBKPHG
	 FaCx13DjOZOnQyyYmVQQTwC9fPR6qiQAGPwMHZ8BRNFovB0CT2iVE6TXvxE8iu3w4e
	 VKIQhYa7fWoIjEWkNR7UcBUJ4CuhiCkDqfj4AFunkyRtalgxcztYlUALPD/+O8vEhp
	 1ySqRDeR3Bs9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9CCF34BD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797695367.28677.7744638185519517952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a1855d968b4f4361319b61ee59c1d75010cc1e0e90481033686c34a236c405
Date: Thu, 03 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727976953
