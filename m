Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336EF1F237A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757555394; cv=none; b=PEkU55Y+VGnw1Px66cHHpsOpKYRJXayZdSZOxkfs0ch68PSmpJ1qnjgzqWWGf0fekXsi710d8XvNfXX2vKGRKiM4H/0byc1SSFIwABPVfIE81iNsdGdq2ph/VBddd/V1rC5YdLFjYuOGfhxA/p2bKh5hCrbMkqIZ3qazNWs8gns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757555394; c=relaxed/simple;
	bh=Mv33lchfAuqw1bxaclDbUazPFOEjUeVuKxoWGOUSSGs=;
	h=To:Subject:From:Message-Id:Date; b=H79x36aSXOMJ9iucj6OAFY/kZYDWwBa0JP4UToqny0HPcx6wSnLL032fH2vOTxieOMUsaE0L3LngGVIi80P5kiAg6Ee6LVBHT4U4VyYwkC3ggCMdXGEb1nWnEIkgRGg+o6fghcN8lAQy3IK5QvzVSepeaAA5HBJeN8dUgji/+WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G39qZrzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G39qZrzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757555393;
	bh=Mv33lchfAuqw1bxaclDbUazPFOEjUeVuKxoWGOUSSGs=;
	h=To:Subject:From:Date:From;
	b=G39qZrzlQxUnfFcLrXHv3lbiOzwWMj6VmBxtbGQCoHu+g01SevzhTnWz1h6YrCDFp
	 48Y9CZKEbWIt+RWOYnUgFJ38h/aZd35JyjzoQ1+NikQn7cpbchTUS1mrniAKfWXBYu
	 fW/eIEHiconPV8W5MmM8Re/Ll4vGl7N/e7MtLqdhU8ESes6uvzM8Q3fhi6nO2B6p+j
	 vFLkoIxWtgJS1HNX1W3womiks9wAErukArRp3+ealVpyamzrWIXmEYtfWPGDgCcS6d
	 FWR7GmmW8KaYxav1rPP74X098K2IeBMepd5KpifReEb2reiB4rKVDIIYsj6Z3xJzYT
	 zp/8SrWF79uig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEECAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755539357.14880.1663379264500067362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a929ae37a9c445196813b881bada6e0fe23029dab811f025edfe4ba5f2f0ec
Date: Thu, 11 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757555393
