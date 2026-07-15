Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454F1420496
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784120914; cv=none; b=la/TQevk0hpOh3uLSGwNTDFHVZrNpCgUE/e7LDuzvcl9nqNp1lzrL+O2sqSkCRr+qbEE9+bMPdPD2ejNYfYMM0d/M7mfc5WaDA7NJ8QKqaMOmS8Q4EDJd0nLwMiUSLRrpeCv+Z5Mdg+Biq4BxIsaFr29EpuHMHL+3B1cKMyRnW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784120914; c=relaxed/simple;
	bh=EjMlEJXB4BgnfsmJdYLcuCgNDBqgXyTlRz31tNqPjCw=;
	h=To:Subject:From:Message-Id:Date; b=jJxVWH+waybdlRlegmzN9AR8GO+E4D5pgxUuWOr1FohOmeSc5/a8EjDlb+j1GsH0OOFAKF7jr/3O1DDRzyFVN7IhwErE5tx+UzJ7ikgwJ4amJGfMBIJftTTYbDryqZPySy8lDpDsnUaKa4IRUzG8WLDbpXX+tAlt2PnS48S855Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWWScdvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWWScdvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D614BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784120913;
	bh=EjMlEJXB4BgnfsmJdYLcuCgNDBqgXyTlRz31tNqPjCw=;
	h=To:Subject:From:Date:From;
	b=VWWScdvvvU+Mn0ROhDgiTepysNiuf5GZKxKDcNm3ioPXvZlfJ1i2fuav36z4IthCW
	 SPxeKnWYXrUQOeGkTLyMzQvcZ1dgIcs6MdzbAqlqjylrVyEpuXDSbGLqZ1ZhTDyRqk
	 eTPSqhnK9nvHwsAYOgOMw8qVZDJd38MrOG1tIe84PUX1/YANG6KMyCv/SSH5CQN9Xx
	 8M9Dvh/LvoJ6CVF6gaJOHmNEecpSedXSqnWbZ23YrepKjVGslhKoy9KgpNWKT6ljVj
	 JWbODHD3Uh3bPFR2aL2TBaIMXzTJOti3jalrNDiXa6eSWUOFu+bHFbKsO4mmBVd8P6
	 XV9HYCWkUT6DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5D3C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412091369.16176.17789666434760371484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212bd49deab958df1de0cb158958ae2b75f4825e0608e4cb33b60e7e7c52fe00
Date: Wed, 15 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784120913
