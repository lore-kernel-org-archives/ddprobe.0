Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7B32135DE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749836394; cv=none; b=LjWpPxrZugyzpNpeC/HSlqvN952NDZOXCKSJIBnOgYBJ49z07keM0AL/GR/HTDphH8pR83+y1aswvjRhA3Hx1T5Y8B9G381vtva77oyz6HPFhbyzEYJysX1RBo6U/P+m9Mh2wIMfQjhVDoJ+nScQ/sA3Dw1vR5OUCF1pETu/ubA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749836394; c=relaxed/simple;
	bh=Qp54tlKSZd4aVNjn5msxBYzYs9TmY7CW67jmXsjzk/8=;
	h=To:Subject:From:Message-Id:Date; b=Bn+4vqJi/KTp4Obtgwz6LGa7ViRVT2Ky1IFIC86mD2jPF5I8+GxFONax+OTUyIKQQMc4MeoLQySKqte0llAPYmoCMsSx6G0c64Zt5LDovssTw6EctoPnnfdKIGlh4hY5YWo0xy0rP08TpzTJFh05MQsgSjyxtnizaGvdVVjHHJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEB08Qaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEB08Qaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5138C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749836393;
	bh=Qp54tlKSZd4aVNjn5msxBYzYs9TmY7CW67jmXsjzk/8=;
	h=To:Subject:From:Date:From;
	b=uEB08QajMttz2aoxiVX+dIxuC/XbeveP2TyJ7JJfVzQMpCvNWUjW8dX7pw9PzJV3n
	 7s1+OWW2R4nWyprveNAxim7xM0EYlidBVlVffNbLmOZwpKnLvGJeas29LkZJ+k8HRp
	 81RGj3fDyEpCmrG4QN7oatQ7oTTE19YFBiQSUWZPmvgPHboVUSfw6fHAKDJuZ/MRuK
	 f/ZCGMQ3THMQPJby2ePncFUrYZ6beoghOoNyQnmw6VvNETrTSeMk2TXx5xrxJPLEVI
	 H0xaiKzlUcp755c304p0qW0bRMwRL6FZZITA9lSTJf2CeRstBrYW924LR/gvKurLd4
	 eBx9GJui15xuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90117C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983639358.13802.12993092316182332303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a287f4948a1c7278f316dcd3268a54adb714e190da91544d86e1f27d42f566ae
Date: Fri, 13 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749836393
