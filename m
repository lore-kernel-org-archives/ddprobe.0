Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585754E533A
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791400834; cv=none; b=W2kccq/gqlLhQ2tNeQCI3F5dSiXA16WXGanCMdQq/LiONf6ym7atnLnG8qNF0fEoZ0j4nG6rKZrQvobia7K9fmMoHE+jiRVn8I7f0De7Acb1+YwpZZYfCs94q4iiA3A3ugVh+UKJk9rHZsDuHm4BibBsDs63dieA8snx7hlbThk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791400834; c=relaxed/simple;
	bh=wcsG08zrNbg8lzp2PlN5q0booj+gjA1wU/M5Q4gFiV0=;
	h=To:Subject:From:Message-Id:Date; b=W7HsNin3KYyPgridVs3cs0b5cHvI5/QNjriKo3W7ai+DMpKms5Q6UZRbvn+M8A43lucWEqhCnakEFCUdg79BAfvJmC9KWRH7GU0xg7Qbv9FPXbVh4d65XlrSu+d+agwNkM6xOC9VJ0xu6/zBQgMND2h8tgtEFQzM20pVEgZE6k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQrpjzvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQrpjzvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4705C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791400833;
	bh=wcsG08zrNbg8lzp2PlN5q0booj+gjA1wU/M5Q4gFiV0=;
	h=To:Subject:From:Date:From;
	b=oQrpjzvkaQO35IfysQLA5jO5fe2ODAz4ScZHKIECDMypixwljgFBpfDCiV21BDtMO
	 3G+po5lbczGl0msoFHpDYxeMCMJQ4w0cYORf4/H6Y527F/pYDCxGBgcj/WoLMreAeE
	 epWxlMSRB5E7sExzgdONV2cbFRB3POqgimRMXBeY73hjhul0zgkjKBMYtixartstyE
	 a39uRHaSepeX97l2sLT4UlSNAarJClimbkC9912cjHmMIyorFBlsz3DCZ+4bRrluYz
	 CZH0/+Bh48A4fSe8ro5ZqG4im5kXNCLnlSvRK9QiIU8yBYRK9s9FD2YhR09jJnwb0N
	 fNJOsV4mQwDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE568CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140083370.31743.15921250229214449814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98373f8ad2718761b89f1a1d118e17f0576b143425c9b06ea35b8f3095256e16
Date: Wed, 07 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791400833
