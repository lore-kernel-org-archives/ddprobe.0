Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFA645C18
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707766097; cv=none; b=XS6zlY17HogecrEdfnvdcDkbgJ95AKjDjbDhJwLCcqcJQcmF4s525vieCK9MmvZ+7ckl65ETswOgIR0Fykx4VR8MYgtrXzFHghA1jSXHaUo/VG4htBwaqNh4VdLH/j3UYU1uEM9uUDDxb7Aj4uXUa5Q6Mexa6V7Wj77245z1NEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707766097; c=relaxed/simple;
	bh=gwjbMKKJHFMUOBg6yw6v4xshYjBXRaSkI3RyPOsn2Xo=;
	h=To:Subject:From:Message-Id:Date; b=Pa0CrJVikncHP0vd9xXpADyCXlKYs9ZRmOTCWe/uQSnDQSnwTc6cyvCsHJm+EeLhEFXifU6J8anPQK5zE6/5oG/1uNnDg9hu5NhwCqTyO7QH9O+gOX4FCsqqa6nH1ZAOIb9v9BP7bxztzIgfsLWES8XP1cSlucOFg0geM6KSUpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B64D5FQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B64D5FQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B02C433C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707766096;
	bh=gwjbMKKJHFMUOBg6yw6v4xshYjBXRaSkI3RyPOsn2Xo=;
	h=To:Subject:From:Date:From;
	b=B64D5FQKwKUOJ+ThgzQjmulgHseKLrOVTFcSBMvqlFgTcUfQHuG9exul3pge8PLzt
	 /Os0IupKkuwzoziuvm/EptAZpabG7PSTE1xMLkM/SQ5rZQNFRvY6pMZ232wa47zykd
	 ++QU3BDphV/V7NPULDpcazMX0uoBmOqg+hlbocoq3VeIActRyR1aYnPEax4egluHA5
	 0c6YkYW04y88DLKF3xcrC6TSamAUwIjWKB8x3gcF2NFCImpD6o5bScROt/CZk8uZQP
	 Vqgy6VyB6yjs4ZVMTQlaYzkuAqQZTWXq7/MKKXyirPJawth18gYr2+OXGrmqlBjoEu
	 fr/losywD87xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BA5C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170776609640.29469.1886409463217119821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604f59f0d31115ff6296238c3cda35f781463a2c755f852b5dba184ca118fa2b
Date: Mon, 12 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707766096
