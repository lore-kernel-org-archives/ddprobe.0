Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4929217E8E2
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728512154; cv=none; b=r6w3gD0DrjvfDX54i03Yv/lk3LpO0jDf/9y7gdY71uHsDPcDJwHPYSj1YOC1aWTYFEXqSwEA0OcRLW2n/akPTFgRokNl8iJiV8n3KRU9xlc0VuRtirkN/9gEiawM3U6HPWkewHQy+/QtmKrHXpb07VUgXT3p2ladruTJWM3lbSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728512154; c=relaxed/simple;
	bh=bNIfoneb9Ki0CYYh153RfjN6w0jFFt8HtJk8Zb+anxM=;
	h=To:Subject:From:Message-Id:Date; b=CzFtEYd2p0H5SNuAGtZKS5zqYocugxmDLy3kIBrK7iUugosFJhfvvqTGy48fnqjBnS9FlYYlRHHJPY3RbO2eEy1QEbEG3qYj56qmvTpnqYcWGdHZZ1cDh1aC9G9scAwMpWxLUls40wn9jDwhKNOqtTJy4WqQ8G5fA8Wxkuq4zio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQ4ytc4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQ4ytc4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7D9C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728512153;
	bh=bNIfoneb9Ki0CYYh153RfjN6w0jFFt8HtJk8Zb+anxM=;
	h=To:Subject:From:Date:From;
	b=PQ4ytc4Mu18zrUSzpzaDJBtIxNQ/F3O0mOzayJwHY+S1UXoeDmbM2t3wzoUbFaPKM
	 PooCWbyANbeidIV83/MQ0gYKNYwP9QoIckfW1Urkck38Pp9JqV40h8p55mNwQAvIwY
	 snmo66ttSoKP/Jk2otp/3ou4hcd3AGQqI4lRWlgZrYeFjcwJIZpxFfRiMLo8mHw2oG
	 iNRvhco4DQzGlCYP8Ztx0jP99MWhLIV1Uw0VlaECVS+muJLtqzQIg0248E8slgNnkx
	 lMak9V/uf2+/UICStVS6V7F6P0kVTvFflX5pu0DcYClbYoTGUraApMiuRq8isTXNuv
	 C4HFGzoyRTFoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7035CEE359
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851215367.4636.5972130225625455594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d00e15897c48bf6ca7ebb20777485c10788cb9ea53584cde15ab0cebf91d7d
Date: Wed, 09 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728512153
