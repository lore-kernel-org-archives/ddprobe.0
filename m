Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E014C6B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718298503; cv=none; b=sdNE0Sq5EUfgVKEdXhwYLAr5bB/nToTzQqzXN7LYz8S4i18Kxc+FrW11aIT1zOlxkxG0NwijdH4hcGjrqQ0Rvd7xItTgn1ROxKM9kifTSCWJQaPWBQL/j2UL9ni6+78PrDkobOiklYCsb5O02laRYYlKNdfZtvflHBNAoRlk/MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718298503; c=relaxed/simple;
	bh=/ozXGm3b881R/L+vlVyw3LTEZKE7iwZ8CYAj+uY7qII=;
	h=To:Subject:From:Message-Id:Date; b=Qt/GMEcu9HQyzdp/Kd1xO8/JbK2jfX4TXD4hyGKmXAwsQMgm6EV9l9s3x/lhc/1RTSj5O1ZTaph8R63zpYq9AhTpCcIIBR1JGfDHSIZsIH+jg6t6Is4rx1pXtFGywuZoOmggi03AYxNoqR8H13FqDRpfRCnhDxECiKpTtk033oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOW95sHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOW95sHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5213C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718298502;
	bh=/ozXGm3b881R/L+vlVyw3LTEZKE7iwZ8CYAj+uY7qII=;
	h=To:Subject:From:Date:From;
	b=JOW95sHuH4RfVjYAsPnYRBySjj1o4rlVFfk83b9k5MQRyC1c6bEp7pwsOPwareHF4
	 rtBIhuRHssN4e22+CfS/tDTue0Ff1guqeizj5OYqx0tRNR1eBfEpThUwyvwil07/pl
	 ITlsHm4kY3kDDGiXzrrVO2xsMgy19vpiWxlYa6XAWM1aFIPxJpO1b4BMtZLZRTpC4T
	 62/LVKF4Qu4fNods0acEWYM40A91wUQaKKr480A/Q2QI6oxAIAUStawfTr3yN3q05M
	 8077ANR6X5MlGzG1ja/6KGsn6QkmqTPWPGTRDF3kmSwz70ydBGqBpP4Kfo/K+DThwZ
	 i0ZxPonZzHnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D0EC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829850278.5618.11008406580771087497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5a6e65c7ebef16561c905de3735adadb867ff65ba0bd82ab6f02c3e5d8cd32
Date: Thu, 13 Jun 2024 17:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718298502
