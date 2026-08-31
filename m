Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F83282F05
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788136234; cv=none; b=ehaP393XcuHB/ir3Aq6iA8xShH5vfeaQ84A4iMaLbh2AVswdy5ralA6gO3YuLN/2FkCodBCTB3mb+W/ce4M+u+deQ29Teb0Vn/E4SA/i/vKDAnjppDQOnoocLKQvLdnW3I2xMYU83kJgk1HsEilnXzqIOCMZ8ZAfHkpASgf7StQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788136234; c=relaxed/simple;
	bh=jpJ8PRyoF6BF5jwdmjSLhEo3ZWL+lh8OAO2mnSZg+Ls=;
	h=To:Subject:From:Message-Id:Date; b=JyUpOsCIa4HNNhatcjznDnLrmt01yK8/Pr1twqRrUaRyPZBRubvz7wmD1gESvmaXOP3oKGqt5F5aCpb29JSxv6XiaVNSEX5ENt91FG2bufUcMQbcVprMd2Qt45jS1zrvfcUvAm399xJsCyvcDwxjZxYAsw4Rf/Qx3kj+QeOPPOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO2QsGHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO2QsGHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4515C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788136233;
	bh=jpJ8PRyoF6BF5jwdmjSLhEo3ZWL+lh8OAO2mnSZg+Ls=;
	h=To:Subject:From:Date:From;
	b=RO2QsGHxw92oLA1x0i1eo+wcejPQFEs5IWEWgm+uU18tT/N/FjF56jCjamXGpkG75
	 g4gp2B2QjntEgADxzBv0RoBmlakfUXS7KzwPXB4/MlSvPRTrGu4nwhfyHjeBd7rc6O
	 ii8++iuGBfDnWDdoAlYK2hUeVpe8OFSvmexSslprQVCZm5HFZ6NCtQJgoFkM0xRAh7
	 ZyKpSCv1JP9F6bEqT1GRWO8dTjfvxSUJF0Lytqu7Tm6gl4tA1PUrJ5LomjPnxRVDwM
	 IZn69bxQtxY9qKzBt3t8FaxhTnngTOEweH0eUlVJNASpvz8cEbhMANC/rWaghXaPoy
	 B6RwsKAbve9Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14FEC61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813623369.27112.5453012530856895180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a4e7562ac8e15bf35f863357971f45dee6760386c013519d07c155e1f6689b
Date: Mon, 31 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788136233
