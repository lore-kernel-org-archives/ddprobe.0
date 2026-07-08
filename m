Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4552931282F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783537714; cv=none; b=Ik0kcd73KU3bzZGyDymQS+G2YV94fW4PfavxRLUX41HV0sZ7zR7AjfQwACmM+nCiUPXLd/1epPXV/0x1xQzef5GFkTsOqX+DlgsNp73HHs8W+vawbwkNNAljAbkeAjMGKQDvei9e73yxvYHB0n//mDvkPLHgvm96Eo1pVo3BksA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783537714; c=relaxed/simple;
	bh=gsujP9+0MCvSzTwPdafL4qZQ+t50fixK4tE3M8gWuE8=;
	h=To:Subject:From:Message-Id:Date; b=nGSI9uasvxhd4o8PUoef8L/zk94PcsN3Cu5VvaLYOt77RDZmYvs6YfpjfkNg6053CDiyT62cd/xhMDbLp0Pswx1bSDJzhPvP74zCNrcgFh8ANaWuJu3okBOai6jgu/U4xd71/8/D1GT1F3qYFOvCG3VZJerqN4P6TYjUQzI8VlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOQYTOv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOQYTOv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA24EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783537713;
	bh=gsujP9+0MCvSzTwPdafL4qZQ+t50fixK4tE3M8gWuE8=;
	h=To:Subject:From:Date:From;
	b=MOQYTOv2CLlb73N5+KwN4AQMZVZ1DQIsy84HfeOpr8am231+iWdY4EUfJlxrwZruV
	 +SU3vCOwvFVxKzcKInDk73Hc9W88nKH+/Erj1ojplX+kh6ei2AoNE1E12caI+kXMny
	 mG/D/AxUTri+BIdwlywjxt5SWGE6VR2NYB+4z9s9fQ2Sc5oBU6ImHVW3tx9jJfURyL
	 gc+fLidW6d+7tThJe26blT/Fi3Ea+REGSnwPY7u3I4FfSWVfCdsaZNdt9xzEyYMp5y
	 lQQ5BKhVLeyvZ0sudsd2CpE68wEuwKqZ8fU4YBiKBPmS7ve2FN76zdHE6VkJLDbceL
	 011m0CyM87hHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90EFC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353771368.1095.17928232013220956039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b4813c423f85ea1986a4f4f88fd41eb1bfcafe8f114ed781b1493febd0887f
Date: Wed, 08 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783537713
