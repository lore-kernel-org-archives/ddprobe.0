Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CE6228C86
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742497794; cv=none; b=klE4voLdT4EMNa6LyZGD7knqHxTtlfJrPCoi6HmUi86OgOMh74FXRzfdbW6V6kvX6AdWuLAh7bLjAJ6q1BPwcjfzsosTFpWTp39rFasU9tdO0agurFZUJes5wvo8qrYLMBphxc2VMHvd9vjXEy5DhHgphE38k/AMAOK0puoNJS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742497794; c=relaxed/simple;
	bh=rj9lL/v0iCCeSbpY9t2TMML/B3mwmzoXDndWe/KPEMw=;
	h=To:Subject:From:Message-Id:Date; b=CFfow2hpDG0LFmt4sWhMWOMrtVepcO7T4UBtP0qvnnPDXxVyeM3KpoCn/Ovf1Vm9Z7kFjiQEHzhIrk+LYg+vYxBTZRo0Jw/zC+/iEB+SB9y+k9irEal9AUR+b+mtGKMhbeTiccwjZgd/7SNrxq7bGqT3NWGlGlzWzfm5qlj6GDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrQxy1gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrQxy1gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E66C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742497793;
	bh=rj9lL/v0iCCeSbpY9t2TMML/B3mwmzoXDndWe/KPEMw=;
	h=To:Subject:From:Date:From;
	b=nrQxy1gn5p7jWtMvqzO5oChvYvEo+xI86wSJvhWFP87UFwaKbPVIQmYaOF7BtB3cM
	 e+KCkhtF8CBXJ8uGkU1qGvqdSxFZ+x5BeDhOJL8jsqJFUp8JBlmK8eoB7E/wnlCaG4
	 HsylJSw5a3iITi9aTxZwhT6K2zle2mq97qyWQPO7zzPIADwEIA4VLakbHUR4SEnEoL
	 NqgxWBCAx/fwHKrX7/56I2A+KCTgZd4W8XkFeeSclG4b8M7T17Wttf7ENHgkt+v+Nj
	 g4+16w3jBAwGB4rcYeG1QtIlW68QDuSmIlcCe3SpBlkh5ELvjWZQHMZltWPIfFUyxm
	 ApEshd791W8dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973BBC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249779360.1992.10083905077583969954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1848983a9d9918702a206ecb94e1717bddafa19dde0f698baef5b9862b8a37
Date: Thu, 20 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742497793
