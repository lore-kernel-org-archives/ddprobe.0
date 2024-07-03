Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4051A136986
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720011923; cv=none; b=R4KPOAnwcloRF0tCEOVDop/8HPYdbAMnwrgOvkW0e2RtNvk8MznxQjhB+KY0KOhFcMF6QnsaUZbkhQy6F+0hjJ9ZWSPHK0+ZSva7koiaLxYwVdGrym/JKy9ArsTLKuI65j0RfJB93UHx6SS/3DKOySyCZHb6DfrzVCSa0ZSTG/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720011923; c=relaxed/simple;
	bh=4L2iN6V1vl6O7d/s7Xg0v+6Q5atPZvEHuboAYcnbcWg=;
	h=To:Subject:From:Message-Id:Date; b=L3h9VsrHpk27/9/XG6zASnJpQuqrgON8x7u432bkCcttdZfamALGqjys5Dcb35E4TK1hgfFnkWz4M03F5h5omouZtSoA8KHuP43blRt8ArHfBrCSB+sTvsMx6+DpInSu8F4zLGcj0akqSrCN9/tZyLVlKt+gEpUq/oc3RvGaPuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FO9D15KG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FO9D15KG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7972C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720011922;
	bh=4L2iN6V1vl6O7d/s7Xg0v+6Q5atPZvEHuboAYcnbcWg=;
	h=To:Subject:From:Date:From;
	b=FO9D15KGCBKCBusG6dxT9D3E6QTKt09f1yAS6yXKDIGUor7smKCRVc2ThWpq8br7L
	 KKP4a97dLayg+xkYNdlWS8nzf7hPPKyTmqhBZ4cpjg5STkqEbxNIarySVLactlDh63
	 1rAJZcUjrMX529opbHwyxmCvAJqKTTKRkXOna0JK1ZF6+qaH/EzbwvR2+h7VnPsfQf
	 l7iVGly+oTN5/XDbgr189u/jvSBbM4qGF/Mf18th53mq7Nb/Wut2U1FMEmjrYiq58f
	 kPmQPR007q+FaciAvfSQYXBofkcu+iNemV6gifLzYwWCD+p4h5HtW7QiqzYsBGFYXs
	 f9tKwOKK56pJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE80BC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001192277.21141.12797794729338306259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b13666bf0741dfe3125bad3e31370f95dd402ee3358aaaf13ab7e8c817bdeae
Date: Wed, 03 Jul 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720011922
