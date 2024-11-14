Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353336AAD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731552354; cv=none; b=GhuBJxZchcPzgqoqr17Ofhfhv4J5ozXrtYXJxV2nKhabKKc2IN7kRXa8SIRgkVovm9X2+YIgjt0KNqJqjYAeM2uJXnhW+fi7wyhWJ9UBKWNezk//Al6FYGxaNYVttIRY7nlnWy+79u50RZEJ7U4UjY6qVbCZqZUwV1lyU7KtTY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731552354; c=relaxed/simple;
	bh=uPmyeb+N/Vydv3ui5a9bamNXVhIWV0ga4RBVYGgxIkk=;
	h=To:Subject:From:Message-Id:Date; b=OsQltIHbaUzogs9wQaBExS9qkWVqTrzvRN6Zk+rP09KprjIIvjSdFYZRYTFbygSc/GNDJlWL/k59gbfWBjJ/nr7PhuRze/WS0joNZQrd6UVDa7hnqyhinGui9q4JiGhbP+4gAsTUrVOmRaWWaCenZYoYx0HC+/JoEMMRdjMhU+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThNDhxkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThNDhxkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8AC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731552353;
	bh=uPmyeb+N/Vydv3ui5a9bamNXVhIWV0ga4RBVYGgxIkk=;
	h=To:Subject:From:Date:From;
	b=ThNDhxkKmgCaaF4ZVBivFpWE847v9eqhGAwR64vUUxVx7SBN730H0+dKWGBuiYX3U
	 kantyDdrxy0PujIDG1cO/gx2cJCiaqegKpgzayWVrRVUg3POUa2Dy26f5nVtCJ7LX6
	 sKxH72FHo/9QXE5llSCjjzwmBxZ1tni1/t64+7KvAedw7Scc0pBQAC/5QWwQFGEhpE
	 JK47nxXdz6H8MkNIhb6YsxP09KNcyOh7rUC4+8h8fUIf+eiLG7mDXAhSMsOpqJvYUt
	 6RER9nCSFqE9GD2tfovUbTanrDd7B+nM/FpsK3m7RivbOpQ6GINGuixET4LXfQhL6X
	 73h4OXedErmIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1ED637D8
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173155235358.26664.14105770917977343873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4f451e52d8e439700bab75b8c1229788fe2d304b45c0f8c75895f2ba9e352a
Date: Thu, 14 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731552353
