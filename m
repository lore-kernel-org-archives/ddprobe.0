Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9A1337B81
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770483234; cv=none; b=gj/cNAJP7JtxVw3Z53bRD6h8wgDJaWVHQbrHs5U9O3yKYjqlqn+I/DCxUtMvl6N83rFXo6f0Gau2zG3FeHU30KmS5RxdEfecXQes9w3SxRSQlz2ilk+cafEGyMi802E6oBfWp8d8+mF3uq5t7UQF8tcMZwwGM8Ys1DhSqxs5tBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770483234; c=relaxed/simple;
	bh=J4DCvP7q+SOSMBCN3DWNK62snLqhtfKSk61lhR5OY44=;
	h=To:Subject:From:Message-Id:Date; b=L7tAAu05tckbs1id+PL0xXPpYTBCRpn3iBAGbMzYYrJY0K8Gn2SgWF7l7IUUUP4uXl7XToMMwQn2b0JvMOwrZ6a7qwqq31v4hzCjOn+FXrhLW/nTFSuD5yJnhvAtkj44iQSPI9azXbYXjYtSVBlzEhbzgzzeo1W1Iqhdu/ZBgUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMUjs4QH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMUjs4QH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D5C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770483233;
	bh=J4DCvP7q+SOSMBCN3DWNK62snLqhtfKSk61lhR5OY44=;
	h=To:Subject:From:Date:From;
	b=TMUjs4QHmKo+a7nsh3dRnf1tgzHuNFuiXBjoGRAItVb7jQUAjvTv1KZfRbKz31mBA
	 llKvAnzcpHuKQjT+mu466el9zGzqMttHfPsmmN5isc1WRS6NRBycNTOO2bVIGEK1fs
	 wgOebgkbRDI7sb3/pfloMnoGMpgSUW+7pNUZJcDhnJaiD/Z3QcgIlJY2iQfcXqMtpA
	 kvLI7KqoMscTUcs+wwX5WMqsP343KOjprMd6KCf9ItQLGBVWkBkzIOBP+NBZ358oZD
	 XQj7uyTBGab8MPoz56YxLtRAGNMWV5t+X7Swx18Czb2dNhTVzObjxds8s9oowz+VTT
	 Zq9IQnSOJzJSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96678EE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048323359.9790.1491607955453489538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c931edf9b243bc326563fa2ebf26529b0e88dba1ff83d9244844e543c7103c9
Date: Sat, 07 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770483233
