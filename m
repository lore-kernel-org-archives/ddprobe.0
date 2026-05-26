Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C71AB6F1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779780154; cv=none; b=KOeBPk+sjKCxB0z+s83VZd8tCK4cwSSg5yYUcoF4Mzs6A37a+PuJWn2WScrY2gx8ekBSSF5cmaBCcfgNGh2hyUdMazVoD8OgNTfLT/j2kDD6CxqPPRnF/6VD5oCR9FIhcEdOysmp8Ce2CIYTiZwRv/m0EEJq2g3ILQYZGu3ZBNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779780154; c=relaxed/simple;
	bh=l9GuT9i4w4auvH4Ax/o0Wll67AD7DH0iDNoUv/KNVBs=;
	h=To:Subject:From:Message-Id:Date; b=ea1GQJr5TN/8onW+tt7QuTJgd7dh6g5lF3t6PH1wabO4+CXOqWMnifb5a9LppJxqRqRV9AJcc3LxW+bS6viYtMLRMWz4maQ2sZWZqQ3YAZC+3Sq6I1Bpx8STLI6jgXiRjLyc6TP8seJE7i5RL/1cg2yVZNLl1/wxlWJc2KIJgGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdSbg6nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdSbg6nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C72C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779780153;
	bh=l9GuT9i4w4auvH4Ax/o0Wll67AD7DH0iDNoUv/KNVBs=;
	h=To:Subject:From:Date:From;
	b=UdSbg6nGF0nbLt9EO3mhGxRT1Ml1nMNRyIkyyDfCi5MZ0gYLl4lgqigCJeyHfHJA6
	 QB0Tfg/gSfMSpWou44M6lG+54pOTuOr8af6yEwfTcSjAqSHWwOTib8DSMeNLUz56mg
	 gUy3PGfUvigf5ZFlxxx/I7ZHly1nUkwKuReKpuijQnWTHljRcVY1AYpClAgYgBeQJp
	 K2V79Rb4izWrjaGOjLmRwZ/PpXJesnBUzkjgQ/In8XG4gL/hHTUg8cDg2ONPgbfH3o
	 L4c0i8NdeSPJ76p0kBxS8ewrZNljgJ3bi5kzsdutbQuBJWwkOnqu+EWnJLVJQ9N7TH
	 hjIBQU1R5i9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC0FCD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978015369.19082.17336818144353786804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a46f937a45d7a5b40c90ca26451201f2dd342bc68872bd8060a65d6d07184eb
Date: Tue, 26 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779780153
