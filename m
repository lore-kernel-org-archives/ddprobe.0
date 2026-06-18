Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FBE1F30BB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781745394; cv=none; b=dIDI29d1DNtXyCrKNGP+ea3zz9o557Pehh/a37fUHxagDPFd6iqvanmrf8E8Fhv8q9ItpS5w+L6kbsVqBDWhZa0hBh5OUrsliUeEzwqhqMj4sVqIKeJL0PHXc+OQvzRUc3bIa4bFo8vqLqapdw434S7cRo4ElAv9cwjaCJYeRhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781745394; c=relaxed/simple;
	bh=Rz6eUDxB25n/mwTmn8ALp9haDGPdYKGOS+So3cKB++k=;
	h=To:Subject:From:Message-Id:Date; b=IUTtdYnYdJ4+RsN/wDs0dpY7z+TGfZL4OZ9dST7ANmjkzHaLxjRciduQsTuQus4ZZ6pLXFNNeFsr8+F+4XOnW4/UjF6GXq1VciybMnBmE7Y+WThYvgI9WwDNnj5wBBwxxwpLnmN6/NrQSzqvGrHZmORnc4Ik5I9qwYwrZSO+3uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZ+R92I5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZ+R92I5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7148C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781745393;
	bh=Rz6eUDxB25n/mwTmn8ALp9haDGPdYKGOS+So3cKB++k=;
	h=To:Subject:From:Date:From;
	b=gZ+R92I5zBumDjeO8v2KC1i29pDMUxOqgjtQA4w8iaPID4F8ebYcBdzGbzTiGCr1a
	 VmwPrR8YuTrIWEY9l36g80+l2cZDiwCxqFHyph/uFZLs+gEOuyXxdxAh/1ir/XZzhm
	 UD8EiYw1Zc31NWqQjR2TsRrBFL5nRxSaDd6p5DdFiTGh7AE0aLC4GUozo0DA0QTJTU
	 v6/O64L9VEz/VIHItrYrTZWaJ459+rMPLwBm+6/IUoUkpSCr04hPj26vJr3zf6pbAE
	 1H8+uqfkB4mZOxWx0q+DGIdGxVaH3EZfTeWXnJjQSbKlCJkkgbbQRc5skWdQWh+hVM
	 UyjLumZGWJRAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E6CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174539368.9310.8808782536785324573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e30e91da23cc32f82fac4125f6ebd90a867f096714417100d2ffbd2984ad1a
Date: Thu, 18 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781745393
