Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2708326296
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728113154; cv=none; b=aPuIcl50x3YNBqlrDTUzIo+CKCTgXOp8xhnjbWgvCjqO27sz5zYZFtGmO8b64BT6+42x6A23SBP2LtBdhvIUoIBhcE6uZsEVSERV1UTq3l6+fPOnYJ9Lju+Dlf8b97O4blfnQPrKcPpeI4xMMs6GopW9ngRNS8eydaHoBpul2uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728113154; c=relaxed/simple;
	bh=BREcBypELH99JyFwIGvxcK3Ty8w8Kng+6DmDjDy7PhA=;
	h=To:Subject:From:Message-Id:Date; b=DOsDggBdMuEUJaYrDF5wmR1rHNwzGuft0nxSwseRWxdvOyX4xfAQCr/FDkU5M9+6qSFuKpVjdwZJwhZBtn+/UpUFFK7W9qfLkaqclO/6B603liX2WbjZ06kA0gydhqSeNV1FNpHId3B4T4G288HS6DZ/JO6NH4DWIDh8OV8rXpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTwl4PNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTwl4PNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF093C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728113153;
	bh=BREcBypELH99JyFwIGvxcK3Ty8w8Kng+6DmDjDy7PhA=;
	h=To:Subject:From:Date:From;
	b=rTwl4PNg+FNbxceoyHZD9osEnr2WGEHG/VEGdFgmuKsABgQVVM5c8bju6dCXPdxjH
	 qirrlYPF+5ULmDmRlUEBAKeK3aySirwFUReMU6kEHuoGD6pINAUF+dsUAiQTHuCqNF
	 8QNg9yNHub7gPYyuBh8LbkAFUW161Fw8hvYGo/xmSlAO+QTRyH6CBRYmhDibCCU19L
	 Y5nDAs4CVunWQv1BXN3FowrKnqEvoY3Pia7PPzowAY1NApg/XgM7v75+xwhvvhg7+I
	 b/8LjstDLjS9+dEMd/N0NR3656KBLd7GIC0dmKsMbjgHP/3yf05mgxFcgIYJUrcrSD
	 JZgtdMnFGmWEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999B7CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811315359.6871.15373241197146455626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da629479049ec791bca177955a973995ba44c6b52e97073423a1d3409c80121
Date: Sat, 05 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728113153
