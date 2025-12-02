Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B122AE5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764678774; cv=none; b=FuIn08m1QfpmjE/qNWlhLk8x1Ik1v9Gtvdif6xQOs+GW6bIowurB3RnB96cOrWfShEGlJW/+VaeGtLF7CnTWt2egqQeEHUskBwwvDP3DYq7EqjgE8enaRRJldLnTDbCcYb1A02+jQuZKt1c1U14uHk6PzARfXsFcqdaJcuMv6+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764678774; c=relaxed/simple;
	bh=1KwIlL4j5k7WPWIa9duyt+yEMRkBHC2Z2cuBecmJM88=;
	h=To:Subject:From:Message-Id:Date; b=Lj1r2oZrcTTag9oDqL5rC+yXdhxRELPLPLZseEZAyfU5YUM9aaQc7z4DleK34aFcmDIH2mqoWL6dEpvnkEZ3wVvh8nnPB7sqFWt7SZClU6ryapySsIYtwbDlhq6GiOP/79wihtT/ACJ1O5/thNEex59xu2dUsmZdqMxzQZt0DVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjnmCFUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjnmCFUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A3C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764678773;
	bh=1KwIlL4j5k7WPWIa9duyt+yEMRkBHC2Z2cuBecmJM88=;
	h=To:Subject:From:Date:From;
	b=XjnmCFUyGFAfCLldrt7dDjbWZMliMTQFydK/xTmfOhWsLCvi95g0YOc4zcODqQAyL
	 /20wQqlVRTXc8DyQdZMLSoYIcENYbmaSkkBKEKbVcNndL1hyO0C23ZAvUKbpg9JMZl
	 DnLgTrvtdUw/f6FsMw//eBKm3hG9fyWbE59OPF63egApVeWAsc+ZEwi/ZEW9whBP0f
	 q1XdAXDNM21FzsFI/tlDq4OClzkxJG4wpRtB+g35nXBj5RhMkiz7Mfd39n1VdOqfjm
	 zdex9BpqRJkzcE11eRhSkK53x29WhCFDi5wdBQa33QXs/hOHILe2Ng2hVCYbHguO0w
	 nn1Ye1zZ9wv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EFCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467877358.15737.3670836727778803656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91af9a1fc33bd28cc763b890db6e0a1ac9f80c2648b76fd87b6bea05133d8386
Date: Tue, 02 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764678773
