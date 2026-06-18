Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E68284662
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781816194; cv=none; b=FG5FzozkUPmLWeEiVAGKWEFDT40F/r1qgBgB96Fjvow3JVYf2/WJOicNc8W9kn1hrcBNZWm9QAwb16wN28m6TMqY3cSxLEm5SZkrXVPBSCNKClPHYoGRN1slJgL8MGd2AV3wHK2mXbH31Fu6pYjdk9G2+Mzo8LKIxuEb65FJxbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781816194; c=relaxed/simple;
	bh=EQjTx8G6lS0OIM9EbHyu3U+VpMn34+hA/wWXR5IND0s=;
	h=To:Subject:From:Message-Id:Date; b=Xggmf2IY08vCMMAwC8MA+ZHSl0jVb/uCdb2R1zDBXYO5t9JwQ2Q0qn4+bGKvxuca8iaIEjJ4UYbU/FhlDQXAfWfj0ZX3ZvgHnvNA5iWEeSE5AWtx+i++VGL0uTDGFMKDJDk5SxU6nMZSNESroDK25ZYAL06a6Ddp51sOwKq/+Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS4Lu4Yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS4Lu4Yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7629C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781816193;
	bh=EQjTx8G6lS0OIM9EbHyu3U+VpMn34+hA/wWXR5IND0s=;
	h=To:Subject:From:Date:From;
	b=kS4Lu4YjzMVBEUSm5p7vPzJwNWFQnEj48KHudGE0vyA0+6ceveVvDbz3Eh1uilSCP
	 +yL0s1p3jQrGhs4M2Epr1ylYinWc+XXRalocpG4nnRRK2lKGjci/Y0DtQK2e4SYIRG
	 A7clNVAu6Mowqr/WkMllgZfW/XduHR8UBAFGjRLMI1p++7L7a5OFiTV2mzp59rpazB
	 Y8HpqL2jIsizr1JjOsLP+220AGwCwUpYfKy113b+RN3/dIXDnLSxt+ruGvMGEfNVas
	 f/e+KEsBUD1a2WD1qojSlZ0w73JZyQdZ4GvecJf2q7QkIlc9UG6VzKBI5ErtNKqHyn
	 k147Lr1YlokZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B3CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181619370.882.15480200513116282038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cbfceddd529bce8a1c82a622efbdf2a9d8137df8f4b467376fba6c73fe2c00
Date: Thu, 18 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781816193
