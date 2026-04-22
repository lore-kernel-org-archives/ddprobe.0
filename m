Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8106139A055
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776827854; cv=none; b=P3ePrLgGbU7l4gMVf8VdK25MBUndDrCGd09aLnxXJvSkMrJCNyl8OciR8CeKR6+yau60vSZsrajDk94g/itzRRauGki6HJ5UnEiYOgcv8uyQYcRZABAC29TWB2lCwcZaZ26F3blkup5AKfkzpJgUUeU1S8iSILYeuR+Y9a7XGQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776827854; c=relaxed/simple;
	bh=NOi8JfS+p7ot4mQknxo/3icSMs7kmsUuqEUoxxlDokU=;
	h=To:Subject:From:Message-Id:Date; b=l+WAYlnU2NW+cYlxdBOkwJLSaQSPUTlx8+dwCIEoTFYPGEEwjb09jLLVq6Sy3yPIwTHPsYqVj0mr0F+/VcZCMtKU/ciekWO/97Qq+jyrFC14VkovFMC/oYTeeeHxFVsXd21243n6uvLeC63airAGzWXOPqhl3eLbayMo5UTMyuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b87gRuvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b87gRuvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C402CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776827853;
	bh=NOi8JfS+p7ot4mQknxo/3icSMs7kmsUuqEUoxxlDokU=;
	h=To:Subject:From:Date:From;
	b=b87gRuvG3RHkiXPAx9xC9Zeei9jaFPpwnV/LZfyu9znM28ZxzgK0VCPI0poWRq3Vj
	 2et0t9PN2u+wJL/2Vq7YLTl/CAokkbOJFoM8/Olv2AtAYjS/IrSFtdO6mT5Ap805oB
	 /HD5DJ7MKJrIie5zS7bRI0rByNw2uGF4rQD6fbQvpV6+Kjo5Gy/8xXMxKqOh1HMFwx
	 jGFkg9cWruI+9mBkJ4IHzZRIwMkXTWX15hgFdZQ2IbRPAQIxyXy/mM8IUJAWNG3Qdz
	 0GOiErZ/1jog3fD0jKV5YC1RS9oeUCGqWz8xwoBED6jE2iXdtoueRTUDZ/kp11hMWd
	 YeywVpLlFXZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D10F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682785368.12223.14212728909535114004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f2213fa11c94fa6f66cf9be54bb07edaa3c27a549bae176a9ecf4c661fa0f6
Date: Wed, 22 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776827853
