Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A1B3207
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735701354; cv=none; b=YnCHw0q/I/nyx46YWj4dhVZ/wtoueo/ahnQ/G6rNBdCeQ81yW5a1k0GuvYyOZ3hvr1NbwfE+qooFcTdKReu2yhiIHe2kYaSZpXf4dn5LdavqucIZx6iueEf+L04By+SrEgorybby2rTx2KA5O97xymHb0uSdn5f5cIe4YEilzCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735701354; c=relaxed/simple;
	bh=AKIX7vIELa+1q02oS3x5H06h/fg0MZVZ5ru6xaBRQ+4=;
	h=To:Subject:From:Message-Id:Date; b=odHD8X4972e+Nwd2maiBzHsL32nTS4QcC9RuOL0Avm3Q0SVU5FM2+3dOPQYkZ2OOPHt4yVjnUxVtYcDDfT6VNZr6iDOrKEHjnVfbOF36oPBU3sIQNwI3pG96Mdd+oS0fEOJKcDOXin1ddavYrM9qidN+yfBUQ5E2TO2POrGsENw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vModaYbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vModaYbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6671C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735701353;
	bh=AKIX7vIELa+1q02oS3x5H06h/fg0MZVZ5ru6xaBRQ+4=;
	h=To:Subject:From:Date:From;
	b=vModaYbl7sxLCeTnuXno01XpUQNsSspZgvqcEsx6ll6IRUUjrBigvlvBCZuSypJNO
	 +V4JcDnKBQ8GC6DcH6SuTErp9TR3s6MV/FQU+NK3bjKvSC7pM9Okl6g4bNtv0nv+ov
	 myQnCS7xuRnYD9K4hYwIpJ1i0FL1I51b3VvfSkH/jGCOpmN6IPpi41Z0XdV0jjMybD
	 5ErdTHqWb0/0l8uxM6sLtRYsbzJr4IQn2J2Ndr/Drnai2U9I0WgQkjWc3oA+rI3oAJ
	 /lkD7LKsNZpLt16udpYcRFh6Rxj5Aii0XatJ1URNk7k/AWPND2cosoOBhmC08vlnEz
	 FZR6tBFvf5ZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD6E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570135359.30485.3346511872913424948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c40ec460eb433c106366dd1e07d588c0d806228b47b66c3c1777e7d7c2279e9
Date: Wed, 01 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735701353
