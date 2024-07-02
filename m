Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7772015444E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719911723; cv=none; b=gTyq67uax3aoeWxwx/U5tK83zjEW9/AVGG50v+6g1F3G2asQIm/62Cep3Ct/tzJOvnRBVu99g7EH/OpdFKBnp77wSCqAB9Gisc408QdYZcU+SD8rWpS7Zf/4bNgbp3SEkevdBwk5PqclfCbwt1HWr3oMUSdiPvUJLOic8W1TmWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719911723; c=relaxed/simple;
	bh=TReGPHCNkaC3gHavsJTxtecb08uz2DIcRRGsW18cFPg=;
	h=To:Subject:From:Message-Id:Date; b=I1i2i8bJy8T1HTiPqDu3DY2t7+clg2zTCC5ir98ytTbICxM0rbLeSjB215A2nI3c/fDN/VDiaRM1gSwFMF5fXNDgpBF3r7x+RUryOKv3HxjBrntU4PHpWkrfmwIvoereKM0D09T+de7xhGHS/O253ArWVxBNiGOFYL/FaStaF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je7O9q6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je7O9q6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC9AFC32781
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719911723;
	bh=TReGPHCNkaC3gHavsJTxtecb08uz2DIcRRGsW18cFPg=;
	h=To:Subject:From:Date:From;
	b=Je7O9q6fZAPc05+duSsqfNlzYjSvPAzYW+W3j5EGy3Sot/u3UmtevJBNfoteXHFEO
	 jBiJs9/6k0yLSIcaYLJ1HdlGdYinO+Q9dgvlUwKvirWDlqrlWmrLQBoKFO9vozn7t0
	 MWRkvEz+jaMMWARNayhh2K0QUex8o092zjuA3e2I5AV11HngO7Lwb+es9QuRE2fwEZ
	 /AnZdb7yrw/msRaEAgadcyiNrIMPGfoJUMHbZ0J2BxXHEEQNweGy9CtcE2zJjDMqDA
	 yMuCe/nH5pKZrEuEsOUcY17Vs1gUgeukS/BqRmiWwHmLZH4iG/9TIC9o4Efga24+Vj
	 OtRsnHzVWwYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D839FC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991172286.5178.16760460893649859964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd89022142d055c5f6dcf6b8da1728335af9eda9e104001bb088ef30fc38282c
Date: Tue, 02 Jul 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719911722
