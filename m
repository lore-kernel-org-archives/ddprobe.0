Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFD63A7593
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779766954; cv=none; b=ki0ow+KvKE7WTbdpgc4YoL3pHzFIn8f/xzQ9Rw2ONs9nzavUfs8WAZHgzOAO+25N7pqdHKn3v9V05f0pAREBBD5sr8WehS8l4KIgtD3aPWI8Y6NcEZua0vHnVf9Tye4W4U8ElA1Gh1yXXfaFpjLyc3ooYy+br9ZbqwRq8axsSpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779766954; c=relaxed/simple;
	bh=dI1hmx1cM09okU/imfiGDqw8giLExQA0yjK5917x09w=;
	h=To:Subject:From:Message-Id:Date; b=UEaTJCHu8NhWQzRUruhD+SmP9s/siCiUP+Wvc7xl2RTp71fKu/LxgbuybD1Q7PfXlgltut/Zjc6+t2OH7twgM3EXJv2PJP/sfO7QsTwg2eLX2dSJBkAc4e+CiqM326twoVo0KEEF/GPodZq+sjw4uBJ1m+0ThGwkE+oQ4AHtkcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehtQRrnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehtQRrnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65F7C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779766953;
	bh=dI1hmx1cM09okU/imfiGDqw8giLExQA0yjK5917x09w=;
	h=To:Subject:From:Date:From;
	b=ehtQRrnrSK4bCMu0b4+G0bZrxd02TL/0JjQVGjKoqm6CBemE48W9jci4YuOfBtfzH
	 jQNNd/MzT793jbPpOqAu25GEp/BPYHvN8bqoNIdYFN++FMNoagKLOXUqwcmv1THap5
	 XnqqzZEQqcZjq7YTOvAB0i+9+5DU6HDDmlXFTxO2qWvsckoB2p+v+dwJ+Cv3f2eOk2
	 dn8iHcJ8bAFTzSMxFPstgGhXlEoSVZ2c+aNjtaryLNs/XB43kSraouA115TRVFrADI
	 NYF4o0CxXa5Em5E8sjGS0i4PlifrFEL3Hx/RHd2Ig2jo2R6ctwVr55GuJFrIRvnctb
	 K4Nh85bS4XHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB9CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976695368.16101.14256346765372832127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7762ca7c90c2992cccd935e7d58435c8f5a6004102ba5dd2e5199481f68d18a6
Date: Tue, 26 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779766953
