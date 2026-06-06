Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BACF191
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780704274; cv=none; b=obt0nSOOUXk2/WKu0Sk0ix3Ty0epagCBJeVBSkuypNKde/lrenJ5BlbbNTbDYvf5P8YY02eMdBhtwc1n0e7ohVC4jlsEw7Q9UFjW/p5Jbk/dWx+0+67tEKv0oF/l+VMFt9Owsp5g2JvHgcFWeZ+Fj46BY7KRsvcb2CYLezBh15A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780704274; c=relaxed/simple;
	bh=qyax4N79ezMZk1l7R0FKIJy4jiWU33+KXG3YN3n20BY=;
	h=To:Subject:From:Message-Id:Date; b=CGPakQoBdXKUtcqt1GvmR6s9K9/38YYAVKk3Mk135pd80B8QoOqbHa1D7EiltBmhQFYm4DBnhhlb+mSt7e0nq7uaoTBwGFayUAKMkPwnd/1HXrRqLF+QA/pn7ys8V+73zrK7AkI8tmDElHZYnp/UOqX/dXm86oM2REsfMWhTgx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyayT4t4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyayT4t4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6A6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780704273;
	bh=qyax4N79ezMZk1l7R0FKIJy4jiWU33+KXG3YN3n20BY=;
	h=To:Subject:From:Date:From;
	b=uyayT4t4dqngdYCs2XNGuTTWUXoFFLtReDLTAJjhjy2oJRVdKmDnkq+Yp6QYSUegB
	 WoliicetWg3HZp7UztdTl89NG2OEgVa/wV8nmTUHBKGKRaGEfQNDDo12VY0TnzUiBH
	 AomRpkN8SEnzNuwX081wYoPRIUCDapcdwBGzO+7b4mfBts6o1yJJY+OUe8CfBD22eV
	 f/vHCJ7JhlPs9HVUwoT6PCOMHq8A8go3xMz9IvJlkosB1YS3r+Hzs026giKFAzcEPs
	 K1zrBZXge4oFfM5/B6xqQnpJOs5UUqKKF2icMO7/Bo6KNsyFVrL/u/aZ5vefZ/9WZ3
	 DcxB699sGN1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5392CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070427370.19405.18375758370720285971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0b35f562849a90739aa0a5979a5ed625bd84f0af9ff49bb7b62144972646c9
Date: Sat, 06 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780704273
