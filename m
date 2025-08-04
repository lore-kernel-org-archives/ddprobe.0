Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4184629A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754266794; cv=none; b=mklAsQPjo2bgmX+CykUpJcYHjrwpodQZCjr/r8GReyUlzwove9YE0KN1H7Kg8ru0LDV0JtBd2GFTlXT0OSs4PI/y9MynIPW0TNYd/ezFqakv3owqHgcAjAD/Obk00JbMEKA0C6J5p3Uc1EbFRtZUGYplrjTVG22B+OzfA55NALc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754266794; c=relaxed/simple;
	bh=PIR8BHa2Qi6QcOgStpspCIQwSrbCjfOYqCoVrOKf7cc=;
	h=To:Subject:From:Message-Id:Date; b=Cx2QKc0VFZh6PxJQThBaSD5Lczxa/DTifWbHx/oKV89RchQ+0DLlU7hm59+5TnHz0goadXbVumRf5q/4U9+Bwl3ST0veYI4bz8OsyMb0riJuQD5s926IsqjPANQm7OtEKYKDamp7G20TAcilEDdWFrNDvPdljyr6sm22baWEybs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE3r9UrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE3r9UrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754266793;
	bh=PIR8BHa2Qi6QcOgStpspCIQwSrbCjfOYqCoVrOKf7cc=;
	h=To:Subject:From:Date:From;
	b=rE3r9UrOvYf4GG9YUA7G7Vslw4mC4uq3k+csCpAL91qJW0wcZtwm0oPtPMvwAxbJ/
	 udU1rLxudqrMmwlN2M3V4PR3O5/tcEvQQBbUPtylKw8e99tpxzMQoO5OOrK31yjECr
	 soa/riHJD64GGgzrvSioJzKm1JWf6PIkMM/cePM5la6ul1wHvEbz1O0xmVYUpV/ftw
	 B+1VlLbP1MSPIfk0giI+n8k/3luApmrExab4hghTEJ00mREfWPg/IDP39FuSX4DOXL
	 BFzKQ8XMme6tP/aiZQ0dYGn3fawLy2W27u0jevB0246qmI1EDtEWQEm3uADTkjWFqE
	 Z71SSh32RLDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9EDC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426679357.882.6248299991737462075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbc091ba678a622d923426c7e22ee13352590d3475c5ba5ce57b5b52483263b
Date: Mon, 04 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754266793
