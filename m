Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22319750B
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731795954; cv=none; b=uXchblnLUh0UM1Q7iJLyhAi2wTdwxn1fukUa2kMI/HG3W26c0Nws6K8HIcEoRjjB3y01F8b9LtjXePSl7HosNbHq9z0vYy3oQGWQASjX7+v24kkmyhoNsBQupdoNfNCwgJ5p1K8A317ECzDThF1LX0ol/CRCujqh9Bm+4UunnIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731795954; c=relaxed/simple;
	bh=NYavZOgO9V05QlmC14ehDhEKCDsDZTYiSE6TzDgrTFo=;
	h=To:Subject:From:Message-Id:Date; b=BRVwGsRiMrWLItaU7Bak5TS2GWwnbM+NqwqwMentMVK1egwLApLFtwUUH6+cPrBifln0l/QwamU5HW65hvJEgS/kfv61gqnmMls3/2Qm2dDqTRQinVWzfit5wXhR/jOUhykCzoeef419bxAhejvwmHoteJ/gYCev9DteMIZt2iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbPeS6e4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbPeS6e4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBA9C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731795953;
	bh=NYavZOgO9V05QlmC14ehDhEKCDsDZTYiSE6TzDgrTFo=;
	h=To:Subject:From:Date:From;
	b=FbPeS6e4hJFhnMuDI2T5YKSXoq+jA9AhwbBij7/ilJInfj5e5po4fE1AI96175LT3
	 uY0XqfoMkFHz8QdLR+nLLzi/84MnJJabGJtR3Ll7vS4Ki4dfoXlQvsNo9nn5My5BFV
	 UeUlykE2NwghI1u5jA3TBmUEVu44B7jiqlivwc0o7nDR2JOLjx10sm476tI4mszlKW
	 Us8eujAMiEsUIvUZ9r0++Dgmo/68+9X2MewfutRNIv00qLmc9q/2JZX9oafj/OhjIf
	 yjF2uyC5XToJQke/qRCL0ZeM3HTn+ugZEJsyqsop9KF+MeQy0PZ4QrHXQfczEwIBzr
	 SoRklI7bthY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B47D68BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173179595359.16524.3860474443622559626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2f868cb843cb4192a8b182c3edd9baf65a02bffc88815f14cba40f9260481b
Date: Sat, 16 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731795953
