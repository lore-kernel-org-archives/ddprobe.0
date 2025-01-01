Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263FC10F7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735703154; cv=none; b=efari/4n4DdSNRiqtywbfov8EVonSOrCsjbkfzWo4ZHNSG9i6UfpLI98ny4dGVKr6REa0fr0VoY1n3LiSkbexaRgK7DZC+UFzOpSR+8eF71TuGyOiHZUiuQSlW1XqYCKA7AMDsAeUVqu0fcoxeH1m9nSOLu327Xe3eVUXBv5URw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735703154; c=relaxed/simple;
	bh=XBOZrhqOZqs3OvP16kL9htgqI+BjEpiHT2VVaCPx4W8=;
	h=To:Subject:From:Message-Id:Date; b=pSHm8upG8iYnTePJL7hxavCbyL5PZYrCm9Ub/y1maCiZjXK4oqOCjT3bnBwhmlGtqxBrwHK37+g1TEwH7EvjTX5Pn1XrUtIPKIo4yIgp2Vn2s9bnfWebUjCbMv1VYTfV/UP1ZlqA9MxpO237B+M9LDkidzpvHJCr15JqC0BuFrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MByELV5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MByELV5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735703153;
	bh=XBOZrhqOZqs3OvP16kL9htgqI+BjEpiHT2VVaCPx4W8=;
	h=To:Subject:From:Date:From;
	b=MByELV5vv4w33mv4VHRKiN3oLvbnl1ewh+VHKuwTwl7nTKFXOS+PkWQsXAjBIzrj1
	 dW7sitBtnqJKmw0hExiJrnAeA8xa6DMaRywoHiD/72cFeYEt6kBqCzzIZkDeGWM0Ak
	 Lk7agFqXwtdnlXVr2VmDXNuMA81ZTWRJHKM+iUQIM0UnRo6Wxue5fdJ0d3/106Bd1F
	 74Hmqp2wjgiiZae8FNRk4h49pqN6vtPCthQz04PbI0ffAR2jz+QOtt6p3rrqLQuXfn
	 Ng2uHggUuCfdKtd8m3PNyVfwYBXn4EMhbTU7McMgv4mlDxsYM8LIQmMyopDeqC3lba
	 nioPOj9F2FKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A2E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570315359.17914.14265730514087314574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a597e7311f3416ffc377ff8b746f5b896f0219ff3630f56a9dfd68930f2e6a8
Date: Wed, 01 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735703153
