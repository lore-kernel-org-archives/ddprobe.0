Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3576C8632B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769838234; cv=none; b=ibEKVMBrhnPoJtTWjMiNimai7yfZ49a8f7j3AlWiAcHMjhIHd6NeXyFCdRB0vdrpSuI+4RDHeS0NIRXr0VBcVezanatRyyj6VZGegiw6kYaQrgerXLKyXmDn7w7/IHZAwk2P1zpOhOmKp+efHdt9QPqe32hrMhfB4a+XShFHl5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769838234; c=relaxed/simple;
	bh=dRbyqyIXsA2DaQJCwAB3oHO1D7eTmJND+0s65WjbzSE=;
	h=To:Subject:From:Message-Id:Date; b=a+Rgqh+2NsdbTAEqqNnRgQ4QJPvEW1ow725apVhjAhuT2RbHoFLKhpiohEF/cPmPNuGmh4C2LqkNEjMEcC/lJfpzzzMVH2MKbOfU/3m4eMvgudI9jaAqpOwEEYifTKqZG99LXb+AbXzl/hGjmekAD2poKyEjyAIV0oxgNA+aWWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqYG35Ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqYG35Ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A774FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769838233;
	bh=dRbyqyIXsA2DaQJCwAB3oHO1D7eTmJND+0s65WjbzSE=;
	h=To:Subject:From:Date:From;
	b=MqYG35Ph5aCrpGbfUzshtdAltq1sHa/da8z/6R32ONNQ0rcSmBwvhYBGAnnFsIrdq
	 XaJja5LHdIqwDv4xgXOxMPw8ILnIFvgv9W5JzQucH3FldkxQaz8zLjStO7UyABefdE
	 3yYN/eJYpW6oTnlB8lWbNF/boWhXJeMI5zlYU0qFIraqBc46v9ZtDupDuNEAYXbyq6
	 dOYPlfHny3miHmwNqtBVtvssExcgml666nAR4515HGYDkU6lg9DPrn8t6rYmLQB/CW
	 5oU12EB12vB/5fgKg8LyTitzfSStZLmFvyIkLUhRBJDIUBdcgOuipHkAkm4fzwpnFp
	 ok9TRduKft4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9319BD79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983823358.21279.9503907925471239287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3a349596e7e3c832bae9eb786595fc091f2b3b07580c67d3a6d113784b7851
Date: Sat, 31 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769838233
