Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA1518B464
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747233595; cv=none; b=gMhv4Fr6hujui38lzxvWer3yy/4BNlzQ6hi/qfAy/B93y/adTq0QFM8dADI+z1LJWQXEvs86p2aEXXbUhZ9NIeBuichQIKMY+lrAO6Lo7AquDH48zS9jD5vspvfbU9UNDXJ7eXKtq3XMTGVFJbgCeMzHnsDmbpmzfRLUUjPkMEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747233595; c=relaxed/simple;
	bh=5kdhs2YcQcnvaHJMuFxp756YABK2s5RhE2yyPfFN0pY=;
	h=To:Subject:From:Message-Id:Date; b=jbKBjsGIDQGF19x8fK1Dgn52EAK72EqvYIi4CsFXKXNbCuXjsI1AJNTUobVejixorJVGIm6Wplg2r4EB2nEzTixjIsB5GStHjpkLJqxd1fWL+PEdxDHqyG6bwY2MQsx1K4Fb7zwrdlZzRxGIybJEeC3zFj9KhmQS1ya6scUnT4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZieiPCEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZieiPCEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747233593;
	bh=5kdhs2YcQcnvaHJMuFxp756YABK2s5RhE2yyPfFN0pY=;
	h=To:Subject:From:Date:From;
	b=ZieiPCEbYX0POvJD8bFdwec9BfpSAXBIChsA+LEnzj3+8mscucDnmJQLD2nydUiGj
	 Zx1UHLoKCLpZ4gL9wCFBeb97eneNY4dk9q71+BQXNWO58Z0YkxSRyCnDrAQKs0PWuI
	 bQkZcl8oSs+2a6waa+ft3KThB2SubNWTyR9uNwlDCGOzfRve1jqvTHgv12bMivQLHx
	 fHRFK8usNB5o9TTupugcQ/mINMrZFTAa0IZPkScNwiRAm+x1jPPEGt2akW7AShh/K4
	 mI+J8QzwSdv5G89m5zKn02+nEmH2tgFHb1iKwQwMOheeeXvLh2is1jWD+e99z5i5Vs
	 iif1OePTMlZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F574C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723359357.22123.15356571613883279631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e24e7e4e0ba1006605d6f81f8e9d9702dd77ccfdbe9ba771370f2a58c2a1a6
Date: Wed, 14 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747233593
