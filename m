Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3470E2451D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733879754; cv=none; b=uy3NgSRv325SaEk4BdL36HPfSxbEFS+RsX0A8bd6lBoPa4MSos8QDKHB/2GYSDW/cVkBXMrMg83aJ1jSITYo1JmD34FNv/9tZGi0jAKKVbr8+M/skTOevQs2Sh2POhZ2R4PsHinPRihL6at4AHILlE/CGf7kq38EVZNrMjRTi3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733879754; c=relaxed/simple;
	bh=8mcgQ+4JGtnPoYyiOpcNxUe7N3XDGNqZn6FrnmhZMkQ=;
	h=To:Subject:From:Message-Id:Date; b=IKyudA5LE1HAbvtw+4aUx8FH5bQIloThUB9gQxF5BgD+PQKZZw0D/RZxNBgEG1QNf7yt8F+mZCNSXxRsMN/UU/hHODFthO5SWDeq0QCmuS6fZ9/7zKTLRhhDX9d75R/qqtyq4Jxcz/bPbu31zUOvgivArpAaDPZJVmaNcnKWegA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rxtd2LIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rxtd2LIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C02C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733879753;
	bh=8mcgQ+4JGtnPoYyiOpcNxUe7N3XDGNqZn6FrnmhZMkQ=;
	h=To:Subject:From:Date:From;
	b=Rxtd2LIRnFs70IG2Bq9wJrpA0kaIJk83iB1zYFG1XiL5na0G1w+rwXT97ZeWJnfWj
	 G4lJLY0K0AotSTkEM+qrd4nswwp3I/vHgUQCUcXtD/gxQnLP59hkxmr8aBF24q96Cr
	 wgAHv/0TGAYmckaZGH4VQV4BqTiA/oYLqdR54CilmCWEIfUkXAEhrmfj5EyvWNpN9e
	 h/GC/HcQGzIF1onTvGoRash/kuA5qQYiDM5LE5rKrwwW9Jm9NCWQhr0JosYtcPi7W5
	 I9FGA/wqVGJbj48+IjVthExoxwGjobfBe6aO/9bFO5U4CYKgipLriv7INI9/BJOqXo
	 ultyrtOyL9/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375FE7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173387975359.11226.13168549624778689093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1a680e6ae14bd8162017b0a4b803ab298187ba86edc9a2b9c5cdde6d61b878
Date: Wed, 11 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733879753
