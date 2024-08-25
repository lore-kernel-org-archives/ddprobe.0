Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B3D39ADD
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724627754; cv=none; b=UOh6MjlHDGXQ3R3qAT30HGn31z6VEj+ubpA/UlR0aHwtMaSEad0RbItIyBUxunLVOybbLxI8KPOKQyEve4dLDS1+ILOoGgaY4NXnWfHKiajsmtDDydxpWPdnpW4QVgGh17cQEb3muiSAyokjB9sTA06vJojQr/rPn5p9LRaQa7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724627754; c=relaxed/simple;
	bh=dbScGIPedN37949D4kJg2oP0Y4bivcr1LOgp2wmtmfk=;
	h=To:Subject:From:Message-Id:Date; b=JS343xc8KVtYmYsvVLBYwvbSYH2bdwi3PhdC7yJY/CVhtxpJ1xAXBaVTpsY03ycoguvV+0g5RyQQnx5fJqOM+0zbLjviIMcAORQ/ROWfHvlP6k4gJaHI7B0wyEIDaJSKkQYuqJZYlz9peBP0Hp13ZSh88dJPZgT54nSe8f0FWys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNsnLJ2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNsnLJ2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E6C4AF13
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724627753;
	bh=dbScGIPedN37949D4kJg2oP0Y4bivcr1LOgp2wmtmfk=;
	h=To:Subject:From:Date:From;
	b=kNsnLJ2t8WpMN3VLlO7JCFnbWJ+1T80CFIqTpnn1TXmSRhB8Aw8oEsFLOGxzTpsXL
	 AkFN1zWtp9M+6rR3CPG8maayTTLlxYyPOTEOd1uMq/T+EQ051bvtJy+6UMe7OdUXEG
	 tk2aDWuy66DNswMAmQYXfuE9J0IzPl8K4ohYktmavZT3sy4K17WSLb4rm2Al4O/mMC
	 acenedLyJeVkYfV4OEAn7B6GwTp6NbVq7wuNdI69CB5xTvY8Ddt61wBIXvNY40bFPT
	 SRBdRRun3qt38fPjAhb0p7eph/q84cja/HXTygY6shXV1So4g3JvF4REZ2rMVRMv2u
	 OXzjQ8C4vePSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9466DC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462775360.5907.7624166746980724608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffd9ea0717160fa8382ac7371195a124773aef000a5e845d9b5cc9dac148170
Date: Sun, 25 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724627753
