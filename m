Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5D0AD4B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732771555; cv=none; b=U4i0gRkZW6qGikZ1YJUkNw7amINEu134C2Z20Flfex6sd6OFqnumMV47Fxmtj9DviK3RjDR6usi+WVdG5oBBaRloJcbQFlYw6Bad0VEZogWL5eTCgip6M9rJQJ/gxOXlKDNiOGJHDfrBCiGyA++thKD/afdT/xvdDWLMcD4OUvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732771555; c=relaxed/simple;
	bh=nKiN3qKm5tFSG2GWtO205CZ2GRh7x4MLa7NQ7JYJbo0=;
	h=To:Subject:From:Message-Id:Date; b=ALfr2TLtMZ/Ii9hNoSAy7j3SfrjNyLmLSI+tiW4zgrQ5uI+wTtL03EiK7mY5eQjywHi11Gvtlshu/NT1Tv2e6wzmeYpdBtjNdBh+l6gbMwiYYsSjKlgQL9YtCAQswe7D2tExwJo06wAeHvSKgJ7zhl/PBA82NxAzDIoi9U0DgfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6C/lLvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6C/lLvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF6CC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732771554;
	bh=nKiN3qKm5tFSG2GWtO205CZ2GRh7x4MLa7NQ7JYJbo0=;
	h=To:Subject:From:Date:From;
	b=b6C/lLvq4bNAZCAHD2xwndVB+IwR5hdJcaZICYQaRlBtmtu6ZSkvxy73gwwsOhiDI
	 wSsfxvM//OvKCZxGMQ8X/GLmVHsrS57WnvHluyw75NqVryBFwSxmDgR/nmMgdJprv5
	 0mG3w+n822Sej600flyeWJpleoP0ji/b7n+Ryd4A5MYk3YOokG9tPETM4Dkul9Xxv/
	 9ojXRl9jpMaytdbGDhY8P2XGFGpJ793ZreV7IA5oSh389kFuURilnhwgeW2Tk0q48s
	 HX2hn/JEZgcmjZAXds6K7w2vVLEw3zvT/II6RU0XLEeIE73f1Z5GdHiDqnT22IW92X
	 R0hkZKONRovIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB11D65553
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277155358.875.1192366666627281922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc56d948b4c17250d26e6e02d232e4dc4793dc89d7469aeeeb00045e42066442
Date: Thu, 28 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732771553
