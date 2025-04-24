Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419EB1B0435
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745471995; cv=none; b=lzSEp7egkU08dbzPGrsXitOhTggbH7eh0AUXDuPgOkNRPlhK32mZUAqG/v75/D97g90PhDLBH7Vl76l4mHLDfnh5P+eLFoC5qJCH5aw2cNPEr6twVWTfVDSj4GBtPTNkoZ/PJIZnR8scu9Z2RzP+SNIzhXcTv8NtggUoebEon3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745471995; c=relaxed/simple;
	bh=TV6zl9n9ABxHl3cbtzLDILdtr0B+mpYSPtWfGF5NklQ=;
	h=To:Subject:From:Message-Id:Date; b=KgT97m4GVtLcrcd7HCIjNBd3eIJDMiSCp8G70nkxOfsxqLmUoHY2VtYenoi2cUILFl9/NnkTL/fvjndKJ6eaF8eoh4ZYXkKb+F7VhsS0XiENP3xM5kgNg2JGD3pyMeR7yu4HH0HJpkCuzAm3cgnLAyZsmv31G2TLCJeR6bHrGWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POIVBIuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POIVBIuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF2FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745471993;
	bh=TV6zl9n9ABxHl3cbtzLDILdtr0B+mpYSPtWfGF5NklQ=;
	h=To:Subject:From:Date:From;
	b=POIVBIuw/DTWHV+fsmvMsacfld3WSLfCxnYLwRQNwT9yICYFt/f9FrhYNp//Ty/tE
	 0I1UGw9VdCU0gXZFu22kP49eireHp+5EcKQ+KuzG919cxDNZKBaMGJ3agsX070Lw/X
	 oTi7VENNOchYJmKjLZjrtiy7lgZq6v8D6sbz7ZlT2+6YylMk7Sia7gLNqxFr5KPYd/
	 RQ/pR1Cw0MEYvXtTRMPmtWT145Ek2GAZoB10FOM1D4uae5xzcLu0wN39wVMqA0yvxL
	 FWdznx33kgTJkw/chs0suhexRM75WqbjVD40+dDZcVb59lXI06H+dzYnpQfO6ZS8q1
	 xQlwmrPpitAAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD8C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547199357.10476.12316261537968025721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b235faba8e02c239b23415e76340416cc4cd969ce1254d14f8a63e81af67a40
Date: Thu, 24 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745471993
