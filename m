Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3B5653
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730864754; cv=none; b=XycSFo+b9/MZTwKwDRRKusLxW2SkAsnz6ELbqUKoeFihRD5CgeB/7ma8CZGAE8I5T5OU/4QRof/o3zWBs7qxcd/Pl7lhMSndmMljP3WRvbmigc3/vpmJrlZ9g+03HDjaru5TexQ9+Cg/rCpqW668Zo1BrwxiWQRUmZZf48LlGL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730864754; c=relaxed/simple;
	bh=2eUc43dMsRVhBJbyHAlzZkaigrUhQgiF+4Jqts9P6bc=;
	h=To:Subject:From:Message-Id:Date; b=FBp3rDcpbfuaxzXf3Wc5ca+T8eVxJ9vdSnlleHC2Gm1Z2vm8EtwytJCphgMIdoW2fhKxQpKEN3t3DnvZnUhSwcGAobNClFmaO2mELQEye7Z7TlRmOmQGCCGWAyQ5R3wglCJYlaKcoVds3b8bzvhONx6eAJeT65qrLcxoKTDKGHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8CiPLGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8CiPLGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61ADC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730864753;
	bh=2eUc43dMsRVhBJbyHAlzZkaigrUhQgiF+4Jqts9P6bc=;
	h=To:Subject:From:Date:From;
	b=a8CiPLGqO7ZkENqBzVCACMLsBx9ESfEu7NapnaUrRls4SP/+Ut6lQPjFKlppbURk6
	 h9BqR2v3GfB/Z+rIR6VcAb93pBLCUP7hinXVP1gSvNlTiH73wXXHnNlHdJR0oP7FAM
	 DRr/VcWQv1fYsRueZHR0maRAcmQaD2+3VbV4BHxBbxQdEIEIsB+18HYMEk30Tb5FZ/
	 0rmKY9jne8z7kSHFGSgWTJXC1WKzVtCvkj/CNKsuicUfa3rMFdTIuYAqVOipmVW2VA
	 ON2yWvf+ZP5LwZH1uG3N3wSMqKXO62XdQu/dg2JtpzoCHcsQ+OJsMRSJPXM74RfSv/
	 oQPYsR6WDWomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5EDD3E788
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086475367.541.13671921833717562591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303946a36daf7a8a31539f8617ef1af29190a1168d4587501b1eb6979ab5e3f3
Date: Wed, 06 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730864753
