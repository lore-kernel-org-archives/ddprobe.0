Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB9B3E5A22
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785831634; cv=none; b=FuAHlWjJG7DXRhADiBmgZW6pRE1zfKfS1V+fPEiC/1tOiBzQZ7QLpZhqlMrErh2iwzEzphuNdnD53KV4hdDdyLDau44xv31mbwdiPEn87YAtK4IJn/jxU+pf+YgxpjxsSHxNnwrPsgVUQC2hrYepfbqoTf1bIeOeUW4YVO0q/v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785831634; c=relaxed/simple;
	bh=hQW43Y53ynHs8B2cXIX2gkzX+/caxSCWO4F7lbdyMz8=;
	h=To:Subject:From:Message-Id:Date; b=JGGcqGl2het3ioev0NXkWhUkRW3297bsnyz50nqsEx+EUDyBbDOQyNPhDjs/Y7RUPtg0mp0V0UBiS09yaWBqC73vU2j/S3t73vO8P+ejbT9vjxYWtqR03GZ1v6JRXvcDLlW3kz7c6NrYRC/HBBJoeBp3wD5R06LqZvki+/hcRDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBYbURmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBYbURmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785831633;
	bh=hQW43Y53ynHs8B2cXIX2gkzX+/caxSCWO4F7lbdyMz8=;
	h=To:Subject:From:Date:From;
	b=VBYbURmfMbXFbVC3vAEppLqZEMpoAxJcOjRAU/JUBxS0ezbkAWNt77ZFyJVf2sRy+
	 rb4bfA+4ET1q5ystYfM1Fyo3AEEBWibyACMWVom49PEFwEVyzS0bs7oxvQglk0DcNi
	 Em5QvWNKayiMxkpz14W9R1bzJ7uH2ThkjHgtfmpV/PscO66dnl2wwA5CPnMZXi/+gD
	 98ikEWDoEl5N370dTiL1Y4YjF0gDP/tKYgZt/Mgsq2kfxTHHvwb9yuq/2z5VMengdP
	 JvECdSJuXGOSe+GFhRuwyGo5UD3Q3rKki+RNJ95W6wshcz29mOmPrw4YVCYn4uoSIB
	 kDyw2/Lm70FZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDAAC55ABC
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583163369.24249.8433029104981071183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33cfc6599cd8219f304633ff0977b40aa898f7116817b6339d34095c5f470e4
Date: Tue, 04 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785831633
