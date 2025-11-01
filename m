Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9370272E5A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762019394; cv=none; b=jAZFl0rTyOjpd27tTMZlNRDttOvl8raMVHGJISzaE7k94LI4Bd+v8q7VS3Q+NTTFthOMeVSAW9YcS2GxlqAdbWEgSEMvdWvoHk6UH/23dFRsNWhAsKFtFKuVgvr4c+OCeJeQct72YOCvfvcOfbSXYxYcrDma85tMMhdLAcLpVFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762019394; c=relaxed/simple;
	bh=x66dmowbF0Zo3fDhHbEoRFImMfl6IkAtngD2XMINTlM=;
	h=To:Subject:From:Message-Id:Date; b=tNzvkyX3yuxnH/HQ5PxS1XoYmQhBBVQdFIA+aYORbMrOFkyhX2LsjK3P+OIIxC3Tmpe66zPDmGfTqA+Y1CxjTMCylPpuXAyFQxa+SnpprlzTeIDxwPK6ZMZdi8ETKwezHHHDRTvhVG5boPRR004NpdSF4HDSlyh2P2JaUo8qHPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/dxBVaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/dxBVaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762019393;
	bh=x66dmowbF0Zo3fDhHbEoRFImMfl6IkAtngD2XMINTlM=;
	h=To:Subject:From:Date:From;
	b=D/dxBVaFK3YnDge4yoCutW28HLj4sQ6Fp9O0jJxJ+ucXBVIvWfZIc6B9xldLGMZZi
	 kZC13Eog8G5Dw6JGfzp7zaOoZureuR3wAfcovTvUBpapGijFEjzuebEkHqnCexfjcf
	 5ymVW51ALgD6SYQtxPE+7laH64qHd/Sxg4ad8QUun5LMiB81d6yUaczsrOdcMVwAuH
	 Ev1mKCLya1DUwkdikAxOjP06LUat+4IeieYFA1kgjy33TtK9wN7ukWgJlvd7mrehhN
	 uX3CwOXkkiRwjghK86YxI8+BYKzFNaU3BEuOIGFehlU/B7j3GShbwzJWT/joTR5bt0
	 PgpJjKNwYgpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98430CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201939358.26764.9281915708325369859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce4a1564bc8ac4f0619345cdab2c8d6a1ffee4b6fb39c87e6437a1ed4f61384
Date: Sat, 01 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762019393
