Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BB822C35B
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738749954; cv=none; b=kwbIJ1kgECh/f1ktCI1h8KPsKs2xQs/00Z2embalYTBZ7QsczR7GbpNNZpaOcsqIr6/cIeElPe7c5W3L+vq73TRit99s9hUV0A21Z0EVv6B3mup/BVjMK+VN/72mOA3oCuaeLO2vH62PEe/qk1nU1PSNMLbOHLohqQUbRB7JVdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738749954; c=relaxed/simple;
	bh=R8OLDcKWgFY3cmxah0gmU49Lk6a+1zRXFO5zcP8Spo0=;
	h=To:Subject:From:Message-Id:Date; b=s+v+csgAtAWgCIaNdjVS7VxqK3gSswbY++EJExw7g9quPVuG3twI62U08BDuQOXcrf9MPalQzMPiie5w4jZKotTFDr3RMwekYbfBhNg2E9yPy3dyKd8f0bDyPasjo315XK903EncYksjBsnnuixBn2hXEg62Ob/QU4ek6z1rA5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXXhQ3x2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXXhQ3x2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB44FC4CEE6
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738749953;
	bh=R8OLDcKWgFY3cmxah0gmU49Lk6a+1zRXFO5zcP8Spo0=;
	h=To:Subject:From:Date:From;
	b=EXXhQ3x2hVwlkXOJOjAelO9JbGT04joDKxb0tO2T0wTU0Vk7D6HdYXZqgh2lCGhkR
	 8R10aki7xWp3vJX9LSTDIBxS0uatNuBNKdEG1iy9iKIaY/78sCDxLSue6oQvfwu6L7
	 JM7K+eeCQzaQMgrN4MddN/5c/Ma+EOr5ic0p+lp+hFzzlpV1kKVroePBfeGY3KB73H
	 0/yv6r7/vCg2SvHlcw3BSY4y2w2xNxZioIE3JWO2pRsaLpL9GujqPAkbb9MHniowpY
	 5xb5U2PlhyvJjHqGNdy2KfMoi6mAPkVFT21wc4pr8ll8aad5k7yjJhDdSxRxzpE5c2
	 DcHYEkYJi6QFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97849C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874995360.16895.6855035009107727085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7934f2852f941242c06d6b9cc908529d4b3b5471c1a28fc9765b64dd63470cbb
Date: Wed, 05 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738749953
