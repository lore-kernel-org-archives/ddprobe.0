Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456C91D278B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734649554; cv=none; b=FZGteLNBeAWQS+Jnrah8IrY15iJ8jbdsnJErK8tBbT9vpVOZi1HutrYHIPccSybBoVz5IiCW+65I8vaqlTY9l9UHpgrNfcLBSYSn4QEAJ3Miru6Ix3aosZgyqX0Yl49TR6NIJejnLJ5ZaRFMjJqwacQ0rKaCftjt/JqimHe2IYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734649554; c=relaxed/simple;
	bh=KtSKYeSnduy/KPNg1ELfTx3mhOiY+VHNtsC0oRwNML4=;
	h=To:Subject:From:Message-Id:Date; b=NJ6ulxGWBtNphvGeqCO0HXAmhL+ZGRLqZ2rNvfvkz3Nrtdkw9dvz1gUbeCSs16TceySIIrt3t+fzsDn7Me9G8xA+mBTtKIrseVXQyhPmcqQ8O6KFk5T7eNlsjFSVHT/koBERHWcYlPg8ck3k2ka6dnSvCR1dB5r+KKuJDkuKd7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNllUINr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNllUINr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B56C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734649553;
	bh=KtSKYeSnduy/KPNg1ELfTx3mhOiY+VHNtsC0oRwNML4=;
	h=To:Subject:From:Date:From;
	b=iNllUINrlNMdvxrrh2TXqdtvA50b6TneOn2Wdl4WJUsUN05uMFOGJxttuAtdM5nMg
	 aBfDjv3teY8fisrIteeIvztN69Xzd06e3Wy6WGUbI0aFMHYxdjidAWljK/XCXcEwV9
	 P7d9YaxmGIQu4MZBk7jHoiXTzzKRODTn5Q7yXXVQhXDWvdtF40sjGS1QaVAUyNzmXz
	 h7xDpgD+DvJ9DLeltD/IjvMjL5HoFMStPtHxmwsoEewxhOC4OEjQsqTs6jScZWFv1i
	 ClHxx24OeJwHO/bSHvBlDAoJA/b91wGtHTZw/pxFoulgZ/KbqZvXnAgWLazaA4gKBM
	 nIx7zFAwFCjOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B32E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464955359.7009.11396413913885524338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510559677c1de1ecd8612f1a38cfe00da7c7418eb99a5a56309a51d6e23b5a4e
Date: Thu, 19 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734649553
