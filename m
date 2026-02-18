Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABBD2773E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771455894; cv=none; b=PbG3/AEyM8ePEDW66OvE6Y4HuSp8jyikduC/gRN4aqhm6Tp0K+vWZtBS0vu9wQj2aMLUBrN7/kJDV0iHEOsHbnhNqKsPOnVMi+Mn5kK06H1pqvLINK2O1zaUn40SEuc3E0rhuN1Dl4oGKxLpBbms44cjQzxQGEVYiC3tn/Sunac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771455894; c=relaxed/simple;
	bh=qL20jzLcoRCO4tA8O4yM3pAGoe8hfpjMu/VtcI/rDh8=;
	h=To:Subject:From:Message-Id:Date; b=X8uM5PN80MAw/Ad8uginAuRGnwMWJpeNdfa1JETgXIzDf+RzzE4yCYsoUQFSXrOlvvorBGRclKLIljcIlcviPXKUvn753AM2yIs/O6F1LI6R6UnN6LvwuTRbU52Tn7Bw29BIQYBY332XBYr/uq5poF7J7kUNvl7wBcVjzZPHpM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/+S7pFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/+S7pFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF162C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771455893;
	bh=qL20jzLcoRCO4tA8O4yM3pAGoe8hfpjMu/VtcI/rDh8=;
	h=To:Subject:From:Date:From;
	b=Y/+S7pFH+jSlXcWgcaaN+HJ+cELLOfPVAOOpAen/teXYXLN514WPRgp8xVZN7pSoD
	 DLJ5EGRJoAXs33Yu3RjUx/t6p+XMcZgwAkaua/jp++C6LJRfVTeUyuTMQ+KN+kFhwX
	 mw41thCWJheZoEQ09bTOJ8qrNDbEsAub4pSGFpvYxOJ9P7WG0Ni0UC+fCxAfVE2sBh
	 jPY7ICzptzPx/Qbmwu1bBHWRDs4P8Q4kvmtLQRw4xa9QuZAlMEEjOVzMlDYIEeVi3A
	 ElUlk9TIqnCQHeFat1UgxQkUyoNV8SyxlxYXpZHCYTFqBt5ClnmjvbWGukQLTVU8Tf
	 v8k3Fh6YCcYFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E18E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145589360.29466.2446038919379587895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412dc25fcb8e23e5f1266031d75e9edaa9bbfa905e67c8b26ea7543d1c26c381
Date: Wed, 18 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771455893
