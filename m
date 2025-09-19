Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CB6231A21
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758313793; cv=none; b=f4hlv/u0Hbu2/Ju/rZAUftotjA73gMJNld6SyjuvMT3HMmeOYrKTumcyl1ohryn3YTLw5lkVklNMuufyrm/AFmCuVRdw7mCZIu3/z91DiiWK0C8q5n0bgwFc/q7Ubdk5g4kQNZkoiQCWmFty/TP5RGiQS7ogikAJdHtjn/drUlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758313793; c=relaxed/simple;
	bh=LukBlsxmsHOnmLGBaxRLVqDpJzMWl20wLj++acIWPx0=;
	h=To:Subject:From:Message-Id:Date; b=lOcTemZYmWUSrxAgVghC6VEpFOMik7SJ7GpTbIkVzWNRlqKUY81eWj7tf4e6Y/QPQrCkfTIv4faSbDdJjmYGtX9NhtnOz1z2Ns7BWOGWINjDv1HHTXOjVmKvS7+tPg78PFhLFt4j5Ya3r2j2LLcMFpOuH7V/IcQ01xCyxbCE4tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYEQ9Ywe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYEQ9Ywe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5749C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758313793;
	bh=LukBlsxmsHOnmLGBaxRLVqDpJzMWl20wLj++acIWPx0=;
	h=To:Subject:From:Date:From;
	b=iYEQ9YweQMw1e4Rej8AIFLZSgfbybPOl037spo5TmiwonUclKz7BSQVN54cCQnZbh
	 6ApcaFdP6jvIYEY1VFh9aTWGsjJ/7seTRfL6CiMxnySEFCgl4Q1HwemphKYvm/fA15
	 6BoEdV3m5lP0m3AnZ3Ju46gzKmwTnqDptgEEHcWdqP/QUNv1ZTuJD019rJYung5MU+
	 Lt4dF+w7ZiQVieGvsibrjyWd3B3+WJjNqaJ16PlX76D736t4/GzNc4amcyncNCbh5w
	 8bU1rwgWr0qC4j9WtF/ZcfeLKGbQIYD8fmavOqzcV5qk8Hahmk4kQcJPpG8KsWlC6Y
	 rFVNze96VLmwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E28CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831379358.27948.10708021441661507171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1ffa4296fda36df9fa4f26e6854e7cf2b1601d4d2c5d875bbdd437d780ca30
Date: Fri, 19 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758313793
