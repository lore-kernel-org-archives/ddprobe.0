Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C2DC8F0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760183394; cv=none; b=fkwC17XZJoREoUMsWLQg5bQ6NVrTmXdmd81l16trSAHiKhmFJsLPOwZ2/40qykwEGdM1SEMvbWKXQTZCUvvj2EPeUyaNMFetAp4QcIm+OxfXOSwb4WYTFa1FWRpdBvmJhd+JfNwKhWNe9BCI7AEag1EjT5tIWjGZCwDbJfmhlO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760183394; c=relaxed/simple;
	bh=OMINz4FxcfTZAubDOdoCtp8s6Cc0mjSQY+E3TaLXeMw=;
	h=To:Subject:From:Message-Id:Date; b=cmAuKMnDg8X9pj5t6pkAM8PM4sUrWzpLinz5I1Ak1/TXfS79XJzG9a+Jlpaws0dQJ+nc3Kx+L99uz3PJMwLMLIE8v7jWVV0HL0mbq5GRc96rSyNX6ft5WgvbmWtBuJXqKDxcwiniMo2sYX1h3J6FXRGju6x8ZiC1c2itgWT9ftk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmVjkd3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmVjkd3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBCCC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760183393;
	bh=OMINz4FxcfTZAubDOdoCtp8s6Cc0mjSQY+E3TaLXeMw=;
	h=To:Subject:From:Date:From;
	b=HmVjkd3dCjvn4n/aTWzZF6hPVAMOM6e7uTnV0COth3GU/NNjELXP+5kh5HFEUyfDo
	 6ITudZcw5z8pFBUEeWYbjFMwMoMu6YEkG4aTTiejwStV7bw0DWSeDgSZaORPW+XJei
	 gB368i4VWiv0cO48hbFtLXRraEGbplmlWeLrErsmaOxrwoFHnIw/ZGbHuZ9Th3GjOZ
	 CAsVUfp45uohPoi1VxaE/vbtvnUg0o1k2EtpQBZ7L50h7iyjidaacbEuKnHoPt1R9y
	 zlNFvJyPgHWEyi7rywMSkwzpO4YpkkvPG4ZAQ0GQfJHdArz2Z+c//GSDjuYcqiJBhA
	 3S2SPekrfTr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D3CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018339357.30544.4527383871397916703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f8f8b4be244930e2b589179db3a2da9071dd633374f678d5f43aab65d09dca
Date: Sat, 11 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760183393
