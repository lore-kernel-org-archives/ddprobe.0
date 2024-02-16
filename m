Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FD028E8
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708042697; cv=none; b=K45h6w77Mf4hnOtL6INrfN3/TOrROf1PRn9FZIwn98FTEdwYMEIOrSuyBtzLfGlSQlnQVeo6lo27QnqaxFclBBIxXd19OaugzDlpFei9dIZYyWTHS+T4x49dimuSaftqFQcmasOXAL0CrLjDYU3bxblPEf3VFWSTTURjVWRHdlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708042697; c=relaxed/simple;
	bh=NsF/Cko49PaensMdGlxnErreDjAxpsaQustAWDHNz3A=;
	h=To:Subject:From:Message-Id:Date; b=WzuD8qNtbWTO+BAonqN8G5WtvNNwmPwcF3bcqhd4n3MoVKrNwWylVNa9ce0tWiV82T4e13aY+5NAra6e661nEdR9K28HiGqZ8H0+kNYvI9pVyPKiM03Jl1yUGxiy2/F7uFGO253t7ZndUrMEb1GDdxsT60hvLX5eS/TDLjHaFH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5yBhc2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5yBhc2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E36FC433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708042696;
	bh=NsF/Cko49PaensMdGlxnErreDjAxpsaQustAWDHNz3A=;
	h=To:Subject:From:Date:From;
	b=X5yBhc2xt0qDY7vB0q+nHnA4f6U7Zy4YvmiSjT81TSkEQD2jC0CXqrIy7wicMLD1B
	 VB5cAhwpONbbWpWACyfeW8Hz93Yhkb13e4kHa5rIqmaTxctbjJ5iadNZb7uOBzdFlz
	 gWjmsQmLzNq6ixJtrYWC0MtaCgmXjgnQJWlTbIzW7HZ2FFdcuxFszJnm8zlMkKdL2i
	 NNzCA0MS5GXiJ7DEBhjtFI2K824VrfQ7KQ6bSc1rtG7ly3DFcKiU7qVK2TqfzADmG/
	 zoekMtFJ1ZeANbXptvwWL/0EAKyBfpf0aJzumrJuJYyJvLyiMBN+Oy+UoZIGB/4pZL
	 U1vtFRBs5eioA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F5AC48BC4
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170804269640.31513.1259448136405937553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998827782037b18e149aebd38515a6e335628546209ab21e16481173994c3a98
Date: Fri, 16 Feb 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708042696
