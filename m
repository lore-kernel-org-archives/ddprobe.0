Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53465547040
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790385634; cv=none; b=hiJu36f+H1uR3SMg+wbPp7FykH04zbN2rAghArRB9DePCjVuHxk1hSPZuMKS08pdbzd9/yWgkGdZS2tiy2KxhOq7wtXveqKUKsb1S0MqrpXgklDArIkossM8JNFXipNGTrF65ZPmNb3nsL8v/OLFGoGTEHIx2gC7MvhUfpE0KBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790385634; c=relaxed/simple;
	bh=xjoXRiUmIzc6pgprkqiGh+N7gzhGTV295sv0kM88hVs=;
	h=To:Subject:From:Message-Id:Date; b=IkEmc7pf3Kic+nGwxEmNHJaVRPWTc79ex7mCV+PzdYQMhzeacQ/0pvye4PrXVJYe/qljyt5VL7Fnp7S1OPF+BjXkyjpZjkgcaV7ceUwRhXVHjnCgY0zcbYBFIOIeKoWSMmObHv4jjccvL7hKXqvr3zr/XBaOe4iKUhEVrxFYPW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj9HAhFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj9HAhFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8902C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790385633;
	bh=xjoXRiUmIzc6pgprkqiGh+N7gzhGTV295sv0kM88hVs=;
	h=To:Subject:From:Date:From;
	b=hj9HAhFasKYhYpzgEvh8VM4iJZKQ9XCgQRosu8lvRpVGUEgAysbph71n8q1qxaPyD
	 xdmbEMqncVCiNTjfBQYOyV7zeA7iS+B+l74BmczpXg7AszSqsIrzRHdhjauGkcC8DM
	 tP6lZIFz6K0h6SYuauJ6BVLuvkaCLRIEd2IPs7KNYMwiCjgwZvMbAEXv/SOEP8N8MA
	 zSXEe250tb5fPuv2p0ECJTyE/VmQHTcVOjCvWlQb3KAv0EWsXAIhFfIrwPkoqL/q6g
	 VzToCMNEwSDz5QxF6egHCo//tf9OGlSKAdJTPuQ2GfW29Gsa6kZiKsTlOHMY8pD4I+
	 Jd6wUgnWnjaww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF78C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038563368.24579.7711200186137943892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da95083cbbf91f19a32cf786d47aba678b76f384852fef103f47e91954213b2
Date: Sat, 26 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790385633
