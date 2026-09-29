Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213DF3B05B8
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790715034; cv=none; b=MIFbLUG5QNPMIX47uHfEqK4rFbxlv8TXX1dkJ5zje6oXpZi/Tbx2zS74pJ3BzCYL22Q9/5FtHDj1Lp/aQoGE1ssLNG3kX+sMYKVb8uH7ZRCcRhnPL+WCo6/FEQHaOKB2YxdZDI5+jCQRw6m9bl+5ErWrCjknwgdj2VkW3b5UoLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790715034; c=relaxed/simple;
	bh=CZ7bqzcxEkwS3DnM2RVIyhPDLgI1C7ke8sAdE1bNpiU=;
	h=To:Subject:From:Message-Id:Date; b=LHwn0eqnNGF5gMhs4A4ZVfv6jB54mzQjwFi/W+m0aKsNCmZtCthfNMTKjKi1ls7Fp4oFhb2YtrExUnWCufZJrhYPBjHO+PKgMo6OoVMYhocuSfKsuiOtQ/xfka+ZChu9xbA7Js9lW8VqoEMVL5BvI2lmFW7R5MfwthksSUfVd4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVox4pMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVox4pMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0646C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790715033;
	bh=CZ7bqzcxEkwS3DnM2RVIyhPDLgI1C7ke8sAdE1bNpiU=;
	h=To:Subject:From:Date:From;
	b=UVox4pMd7UYRRh19lCWeaumIjF/E3fBhgloeSu7nBLOFYXd7G+NIsopRHdLKhNl3l
	 Pq7aNdynYGrHUR4l4yl+2mCcKFdqf7mcdLXDgTefmcyUq9V1zA/13IW4ssOFuUM83b
	 sUaNS/6S72JaA03Tp/SyCF1Ph9CMFySalhcJvpidlbXEipzcoXA8ME248fuNrt8wkw
	 I19y5EGbV6GYWNto9R66XjIKq6jJ2EtAay8tdsJ29KNXLx0u/cjg8ExcYaFUrUMFEH
	 7AY0MseTxLKrWRUuXP5vozOa4xMIFFJrXxhlH+HokK7KECVtdBRJZ+IcXO+kki4IFi
	 +Bp6jRH9+WfoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDBCA5FAC
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071503368.14181.14411957364291946172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed54ca0212a4cce150e06977d45afc4bc85cae349f0dc1ed0a4b753822bd073
Date: Tue, 29 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790715033
