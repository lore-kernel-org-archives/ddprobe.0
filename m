Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECB918C011
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380794; cv=none; b=URav5EblpV3PpJ7Ojrr30B7khAZ/gG3P81wFwJqJvducgB00+UL04IpIENXhVq0XK+cwIXHxMpcLFKlRCS/Q+kuq+satiQZT+IGiggA3t7yMdLhuyJSp9t8VC0XDsZLlBUitfcdo20Hk/5QK0BCIbydXfdxcfAsrT4BwBlGMhDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380794; c=relaxed/simple;
	bh=SebRF/TKH+8SqTzpRyU/ErY38puG8W2c/tC1FYPqUs8=;
	h=To:Subject:From:Message-Id:Date; b=IQTCP9vwCKN3VMskA4/tSdnKW23Mzp1DOvc1htDHdyj5whP+oaUvo5TS5qDI8OqXY3BJOdZOYZoU/+n8kOii6sO4uGbcGreMdQE4JfJxsE9/uoQCh1jBsfgwx4Ol3YRJZcZr0bNfsApLxReHSstCjw/PAMBUN1dOnjTXS5/VfNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrtiBoGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrtiBoGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B3C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754380793;
	bh=SebRF/TKH+8SqTzpRyU/ErY38puG8W2c/tC1FYPqUs8=;
	h=To:Subject:From:Date:From;
	b=qrtiBoGOuaFmOZsWPultQsaEZGEXrexfkL642kDjZCuU4aM4O4AjqO9u1rLnP9FkG
	 LNC0IZ4m5HoKdYa40PQ/Xvy+VDXmJyH2oHJPLEh1DqpptfKf7rPYlrNBr3hKJJ+S7P
	 B2XUCy+xDXh3QB8FCnCW0/CkSTG9paelexTiDaTzKxmSdWpWfCdH+oSBNFScCUUKq4
	 LD88TJl7ElSVf8e/BnATOZ52vBmaNX+vootTBvOtYhOjZu2Dy1QYLOhschxwtGwgLT
	 dlBsiD/toJ8fYWEicYVMszAmPelFTlDLwCLghEWI+5QrOj8BiUgG5EN9aStBaMN3Jx
	 SDJApuQVXo5xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA6C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438079357.11617.6067963624436965539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00a46328a96137c9174db785e94db3fe833a4a084ea7281f07b1c7d2546a9c1
Date: Tue, 05 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754380793
