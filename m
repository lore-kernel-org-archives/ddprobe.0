Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68AE2F6920
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775663733; cv=none; b=D+RN4POr4kseJLIJaVm6CvplPKWdoWrgm7ecoW4wDOs7w3O1u9Kjz/EN96ZIOZRW7X/HXEdMSA1WEyoqui7U3NOUW6YBp4UGe8Q+Wpob/pY56RigrmY/ssA0oPj7GjQHU7/o5nnM6JbObpNhw9HZubzldDo2+dCwKH8SAw14L10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775663733; c=relaxed/simple;
	bh=vjV3HIS4nGkxVXWnCvqM/zldhOsOpiGsJePL5R0xLk8=;
	h=To:Subject:From:Message-Id:Date; b=Nn8MKwe2CCO2hJc7aoopYwFe7IL4+Pz6WJ6HNstqR5BQNtjb+dfCtzRbguNdyiCgfC+xKyQ0F0G1itQZfoEB/96eoxEUdfCsxHuzl22weH2iGAGnJh6zNAl3bky5YLqqwDESNmWkwn2NBOG7B38JDBP+E9aRJV8j2cZKTGx0pRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=In2jb1bD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="In2jb1bD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA297C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775663733;
	bh=vjV3HIS4nGkxVXWnCvqM/zldhOsOpiGsJePL5R0xLk8=;
	h=To:Subject:From:Date:From;
	b=In2jb1bDUyqL2kdxp4rUOCS8qDw9HvQK3J6CATRV25y5gMhdgFKHzJDx0D6I8E5PK
	 UfqAI+jSGNTmpIBJ3gK+G45aSyjB/LgLaapK5GrmDrYfmuRknwTF5X57u4HpYg3uP3
	 hNYfkQzy3NdQZnh59y1N5ZJFFwvSTh8VQ4re/STbrbMnf22tms5fl34iGSq3yef12h
	 WTR9NkQRPrqP4dBfQzmR/7tTxkxg0L2m4he5tbOpFRPOUIUgOEEd7HYecAidIoW2eG
	 AcWcbUehKA7i40oIDzlEsBqKgw1rFLUE4NtIvkmCxZl+hvj4JyqtIw50V3MqkB/Wiy
	 2QoB5J+62xFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A810F9958
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566373368.20034.12741319721605816726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abcd096ec2559fa5593792b277f96f1cbb9398e166be55d840907c25a437fbef
Date: Wed, 08 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775663733
