Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CF921E0AF
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746739194; cv=none; b=Na85u/VrOvCSaPDQbxnvxuCwWGTbbYSFHFzmfnXv/cwRIp+vhEgxA2N7NGHqHv7/zCSsuE5P6eJuTsSQG8O4HJT4DLhnt89ERFhMgT53NOKPq0MujU5+V0qVdr6Ob2CIKqb/bOTucxmQuHN+/q8yND9TeAsF0TsbigcJsTpbVmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746739194; c=relaxed/simple;
	bh=d4b9QWEzOmDpn0XKa7jwxJa4pvht+i+usNQNWnrbM7w=;
	h=To:Subject:From:Message-Id:Date; b=oj+kbipcrGL4vmh9GC26vwkWeAE3u8HdF2ysUYcCjcgUreCLcxQkceyi1Zc7f4/cz3i563YAKQmagV4RyzYF0eV1Gd9BQzyJ+TriShIRhBHuH8WEnLNW/wfyphSs20HHWp0tO7R2Md4Wg5Ixr7H7az05YTWSz8Qk7x81OX2jAaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN3J23sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN3J23sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746739193;
	bh=d4b9QWEzOmDpn0XKa7jwxJa4pvht+i+usNQNWnrbM7w=;
	h=To:Subject:From:Date:From;
	b=UN3J23sfs/q1li0T6l5tQ3z545DZ6fh25/yOeyltHqFd8svDYFjcZ/tb/GYzbEMbe
	 BfK6qHYWLkUONUcBh0UB9VfBklMZAEjoBT9WZsmIA9pdsviXsaTqd24qCAdDoiUIKD
	 iBbP90xnragyvd39y6BEOAhy9Q4xPCj/bJiiE3hE+04DiL//fNgv5x19fG0uWJgq/w
	 bVpds9qy2kVKlpgtaoPN5p5k7fpp6SXKnavjvuc9ar2KAcHcUE9Rq5V7GM5QwBZq37
	 OzgFqNbB8xUk+e+S2QVe2WYIlLrBcCVeBk8lCfFQ81oHuuhG8+CaAk9zaKcPSDYVOE
	 JLQpYG/enbsHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C11C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673919357.29276.12067331626564933983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e370f9236322725a8853f94017733d954e0f37005d5293cb41d8ce75cbf2baa
Date: Thu, 08 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746739193
