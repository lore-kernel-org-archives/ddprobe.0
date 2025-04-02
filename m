Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BC73FC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743558594; cv=none; b=BtwSZGj5nXNjiy0PlPfJ1dmIItTI8Jg1HOaCV9FtpOGNRQ7RT3z+dJnU6i4+mVe1QjOJRXprS8cAWoLYLVnLD9rB/E25yLnmkg2mLcG569Ndd42ctwqcyQd/EcGMIznUgDvlerXE+OrFcy8JdZFPQIjMcuA6yj/oofW8mTuyvxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743558594; c=relaxed/simple;
	bh=QY1uw92Ym+XkkutKnm1umVnb8h2e2M2Ku0ipJcTjX10=;
	h=To:Subject:From:Message-Id:Date; b=YHos/d/X1cNUz/sKVPye6GcCiX+jRihJtUlwaiPLtyTYqdwJqllYvoXGhliqbLSgKdZOPJjPxxfQQGoV7w1rMt1daUyIxtiOuqAjvYc3v7BxfQlb3XytnZt3ujsRN9MORy31UGz6CyjDkptsfHphNFbPMExF5T0qKWyYb3GOGm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlLbDQBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlLbDQBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24B4C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743558593;
	bh=QY1uw92Ym+XkkutKnm1umVnb8h2e2M2Ku0ipJcTjX10=;
	h=To:Subject:From:Date:From;
	b=hlLbDQBce/DwAxQxd9okSFi5c+B+xaplvKkmncNF36KWtsCx8D8HXwkCIyxDbmQKz
	 9LD+g0W99XaGgIGaNWy8cIMbJQRkCgn1Z+VYmsPxSpC/lW15X7RBnUeeMP263zQx+P
	 juDLi02ULczJ6KvnFn1snNHgzA4z8K/UYxEtDAAUG12SU2V/5K2EIkcPossNiNQDfZ
	 BzgEZlZUmMd1BafLVEEIprU81QoB+yIZunJRqroPUQiftEdi9TlEAs+oCHULq+g+6j
	 6X34SCPngnF+4QYGYDRx+kVfEgXlqWQ4TrGqNdeBURh5iDk+isslVg8NW54vf7y9on
	 vFdBt0pujOklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECA5C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355859360.28770.13527587562193061019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e717c4510020ed3b0bf49e46e5a9476761928850d7ce93c5528760b9fd6f836
Date: Wed, 02 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743558593
