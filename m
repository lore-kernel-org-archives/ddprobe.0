Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C209227E071
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760978993; cv=none; b=h2umXLZ2MKNnnOsQCcAc4fqOKT9WP3jYw0xnCvR/kjYHBEdL1vAJ4S7wIRHqawq22JA6E5erv2Jk5pjR7FluwGculKGSfNbOfpU8N6u6HeMVbkQ5ihFxj1jnkD6CYorncL340sBrE6mf1JOHgBK4JHtMJvIsU1wZqvTUPmDisII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760978993; c=relaxed/simple;
	bh=KAkcGtQoXgOLZ7CRfoAhPog8zGLqaUl8zn0qL7FolkA=;
	h=To:Subject:From:Message-Id:Date; b=IeNcdGQ25zpvptxkQrY01oKwM3SifTfHmhu2feXYfkTZyNgDt1wgRfWpFPeLZS1s+oLe5RsA+Se22to/NGBAHK3sElMCuwzyUzqR2TCiyzHrNmPrs7lqEJX9gJHBieUQf8NRnR2h8WWxi5n3cGpNY67PmyLM6nsjIfeJGtDkww0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK7ZVFMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK7ZVFMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F3C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760978993;
	bh=KAkcGtQoXgOLZ7CRfoAhPog8zGLqaUl8zn0qL7FolkA=;
	h=To:Subject:From:Date:From;
	b=kK7ZVFMtm1W123Ezz7Aq3U8hAck9teHWXtDLkN7COHSN+eNc1pukECABlhOcJwHfL
	 j0avJ6ImxuTjQn7OXQZ0ji7qT8dGqixbQY8010NeO6rzo1ef1ZSd1OoqyEC99GNhhy
	 7SuVCIADShH62lIN7wbPuRsvv8rRsiPlaayCN9b8LDQRP2OSfWmSFC4PWICI0NGoOf
	 NZ/9nLtTSBpoIpjNgrXesHH7Vdz3S1XgWlX+KzU5FK/A4ejc8e6nbmhwAExQm5rypo
	 OGwumZ6XjShs7P7rox468WUloC6rYCyP8tcVfvJfN9w1nMn8mIvMRbS7HIC5JZHETv
	 2h/3NvvoZGnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E1CCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097899358.6060.13708842425881375190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b78d73a3412b0513c943774b2ab43338c484dd5e6a70a2c6b25400202424af
Date: Mon, 20 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760978993
