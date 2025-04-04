Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371F01BD03F
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743761394; cv=none; b=Yro10qdm1EO36DzUvPMVB5QOTrzdUCq7rMCFoEWgMOYH05obef6JwKkZFfUDMxs8cReT6j/EWHgCoR5nDgNuIWZ/VUf/imH6DeUABRMbsAjGdyuNRgbezJ/2+LivewOXiaejTgHNDobdXr8X8fu1VxDPytNYzlAs1UIIFUziQNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743761394; c=relaxed/simple;
	bh=O2FImRyDLwpyqlYzqRRW9YVQyiQzu7Wtz3eZq9cqT/g=;
	h=To:Subject:From:Message-Id:Date; b=bYOUxn1kVL7IV4RjBHVZwdMaKwjPCWKUJZVt2aKWPIyjPlx/QsKTBbJ1uQNOWJSVnvqS3m/5wPEEOQPwmPVIoYaWFTOXtm3UiVzY98wgkrGTqPdHhimns8Cy9UIK4G1XEFLmyZjZEIiHzgL6/4zHhYpDnVOnr4scs6OJm1mao5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKmKSFBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKmKSFBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D13C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743761393;
	bh=O2FImRyDLwpyqlYzqRRW9YVQyiQzu7Wtz3eZq9cqT/g=;
	h=To:Subject:From:Date:From;
	b=gKmKSFBRZZWEpCpTJ3vk7vOFpqwLWcQQ3b1gkP7+Zlzs4IIF+eDdrP2VFE5D5K/gx
	 nfDgUVxT+ahWrRRqSM3B37gKjIHe7bXfwiPF9L1PC61rSAUoBsYUQbin5kIMp3DMHU
	 r0DSxCr18tfUtroISu2OlS8LZATyJD9QGVa8HGPpsJIoGtZKNkKO655NazCiRTyW4n
	 LPkTt9LdPkB3fi6ANdz58T+CQHJHCbz6Xsp48aCf7bnFQHlQxXg7kfJWKu/VO2qXDW
	 dAmpUqMteKuwU6cTu4OYcfteyKCZgz/3xp3mfJppiN6a4eE5L1KVdWFhrabQguzvaX
	 Ubbj+Dp6ABJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBDC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376139359.5980.4581786667668020198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38b5f1199aad3cb55fc53c30894a16177a1662f821865935ca4b0ec181792d3
Date: Fri, 04 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743761393
