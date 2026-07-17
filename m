Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8171220687
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784317114; cv=none; b=Z84sAhTngtGoRdhRwDMWSU5nchTfSkjMynj+WYSt2t9DiLzUl4teprBEzQhP5w4tOCU1Btzi6JHeZMuLNnAFBWYk+9azV4XzAsBDZxJgDhkhpQAbqzG9dbrBp4OoXRS/AbaUuoRb2Xfveaec6EQvRA2Ra3lTnSSISiG/G40Bobg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784317114; c=relaxed/simple;
	bh=G+TsG6oT0zeOZwwzPwWkw5Sq0+24Yo2sDlgzuO8KGJ8=;
	h=To:Subject:From:Message-Id:Date; b=RCBA/duEJXYidcq5+Bt+1jg6qv/P+qXYGiR/QmxVCbLFzS2AFup8NOoqZjHWmkGPo2/h6IuSc92+rRlg/YbWtwA1sSfB8q4PWFfAqLDTeOUfINSttNnA7MJQK3hMmmJrJPRcX2wIClAbxXnfbnTSLvxx0Ueuvdl2tVlhjJcZy8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzKjZ2T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzKjZ2T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 54D8FC2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784317114;
	bh=G+TsG6oT0zeOZwwzPwWkw5Sq0+24Yo2sDlgzuO8KGJ8=;
	h=To:Subject:From:Date:From;
	b=mzKjZ2T3dwB1yjtsmBTzKDYNHwBThrbFsYkI5Zh5WWvq1k5LjjuYgGF4HoxA0xNgb
	 qSW8oeRER2wpBzpxPYhjIY5ArQiC5B6l//hYEW4dx1YYTTZBVi0A3SY2HBFOF8Z9U7
	 6JiE2ma3NgOD3gvMa0OLflPw4Cs18vyEUzm9ciSxoA7evmo7hJ0OaGxVHHiQnfDd8h
	 Bc9VEYCzedYwqqh3Py7HNwB3KGWC1ZgHTGoTX7FjM12iGnPIDF1wC6Irfnch630VTm
	 iENyfORiKu1Fb9vAVipoFjGwkCpXSgoPbLcu45PtyInv8/iksbJYxCrZ+lp45XzoVL
	 Eta10CHpudy7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A506C44523
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:38:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431711398.13213.1738366151466148762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2911ed972713ae93b5f464a8e1da0fbdd16f2dcde6983b5006707d85aa833c99
Date: Fri, 17 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784317113
