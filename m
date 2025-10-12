Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C87F1547E7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760245794; cv=none; b=CU5ItzRI16qU/buyVKwhNmoiQukASTkCCG4HOD4/q6KhEPJ7FunlnCl5DzxaucEfLvENIryg2a5RH94EdlJ8ecU+8FEEUVB4MSmwEkkwq9v/qObTFFbjgt7iNmPwxRoP0+RqHxdMFKQCBJrH+YZsAB6eyy5Me6RV5jHrFc1iRyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760245794; c=relaxed/simple;
	bh=7c3TBRomFEnp8ff0+ujENPXWIbzjZ9bDmS/+kEtzO4M=;
	h=To:Subject:From:Message-Id:Date; b=S4Cgx+S3hJNcm25cjSdFRo/WukR2nAJSuEIi6dLlB8sPk1ubsaiujxawpQwz4pdMkEG3kCMh48Cp3xlTQFnF2UB4JX7w1FSWiMrwZbCxljpRBktoQrtaZQOpuuQrCybMxCTOaH/u/sXDFqqbJUErvB2JUBJEYLxDeY+/y4RvweI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tes8/Zs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tes8/Zs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B84C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760245793;
	bh=7c3TBRomFEnp8ff0+ujENPXWIbzjZ9bDmS/+kEtzO4M=;
	h=To:Subject:From:Date:From;
	b=tes8/Zs8e4QhrMPDAQLW+xM2dpKAphs4bVAymKqxft+9gFre/1iKrDZs7EPImlqR0
	 D3nHMqZItiJTh7b+4ikMRgtcae32mV5HHKxfd9xBnSC+mq9umlzR/XgTLZjEs2rStQ
	 TMU0vA+EKRzdOKavIgh6x76o08GN47OGTBSD2gJtVei6h3Nj8KWPS7EkubCLNBbNeB
	 tvWWPdLw9G+EOT3vePLgU5GOJjAMYgwzFFvAwWnXJpkp3DSuaTEqR5xAxii4AWbrID
	 yUu9zOODp2JaFfzop1GPrUGlQSolbwkc3yOZrx1fh09B1OTh6+21B8Q+7SWmmJ9jwn
	 la4fxe0Q85aEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F90CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024579358.19447.14372206735143761351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37d97ba7f9c1ce0c9171ad697d458f0283aa90940945adbedaaa33bc08fba47
Date: Sun, 12 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760245793
