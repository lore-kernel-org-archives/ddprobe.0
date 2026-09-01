Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210E477E20
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788261034; cv=none; b=FlSMXlJC/j2FT1th56c0/E9b5tc9bLOTWV55jaANzHmV5BNlozQkG0A9wOXpMdi1+ovvgk2otPMGfN4QpcBD6jJMj1BAqsxOVmku7zBsVEji3NBRxoFrcOPmxrKBf7vJOFFX4RBt0m3XYNFhofb/ID3841NjuAgyPX6FzSs1jtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788261034; c=relaxed/simple;
	bh=FXo+BOKCYfMc0yjUk90EO8SaCDFtPACzbDoPYnkAnQg=;
	h=To:Subject:From:Message-Id:Date; b=i+HUMBLYqae/3jqqwUFX7LJf7BQYWRaOBglSAg243FIFj+ECYV01b7kh2oWm02qafVaFVbvgRJtBfyUft9J3HY2Yz/y4fsfam3AdgI0wNrbKTTxYyI2ugtkKZLhMcR4b/frzmQVyszqmZYClUCtti+TgQDNWI3Q2UD8XnCDE7gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYN4bUP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYN4bUP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE831C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788261033;
	bh=FXo+BOKCYfMc0yjUk90EO8SaCDFtPACzbDoPYnkAnQg=;
	h=To:Subject:From:Date:From;
	b=WYN4bUP/wUhIHBL5WDP+7hHFjm7NPY3z1hcAQR5Uk6xQbWZ5piqukm+lfSkgZjCma
	 /34h0I2pk9Tt9zb5Jc0msxcME4zxE1Dh5Jm+ZOnDQJggbgdfknicL3SKISC+CcXwpE
	 q+J8ZFccw2Tf0onH2iqMPBXqfBy6cqfUKOEQcYAfa9EBHqgJGPYYT0QufIUb9RdoCp
	 B6h3z+YFaLDhDhLKelO4AF38/7BEMBjD+7uNq4uOG0Jc3w40qHxeCXV6TU22C3ub2j
	 B4/T4K/cmjozcRRwQ9l5HJk9NDXytC23dEEJWK/XueyKcGpBl8ZngdSO+Ps9/zq/Hb
	 x5kjoaX2TAQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96E1C624CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826103368.6713.134357779525951922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5632e63e7342a5c51aa9fa1ac81ce8add09fc7178245489a69654e1a1ddc868f
Date: Tue, 01 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788261033
