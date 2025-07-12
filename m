Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCB2145323
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752308394; cv=none; b=flHvewXZ2HRZp9NO0MP2XO0XxWjzhrRptzfFM0S/PnILRGUmdgNQGoICncPN0kJODow+ky8mrOoCHC9LGVVpqhttv7cITAQoOfFFD8n3hEmS0lRXKSe/gX1qgOif8j2nhJuxKk8qpGE0oSjIvXD1YU+Pd7FAg90wrgo1mcJjezA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752308394; c=relaxed/simple;
	bh=72haExwx2nca5YK0XzRwdju5BIop00Kqv9YhLd7yYco=;
	h=To:Subject:From:Message-Id:Date; b=Vw880yzztN+NvvkzE6jXuzGI1at8OQXqCeOOvXgaMn4jJlXuxd+i93AFMwpTBxigRqlzibEKrtLTzZncwzGulMXDoOcWfQSbxQ8rol8MINUaOMPEIA4v7Hq6whhGTps+TSI+zPp8u14ytblTk4btMAMENkcN7+jR1uJxw015wXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK/vqq5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK/vqq5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A8C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752308393;
	bh=72haExwx2nca5YK0XzRwdju5BIop00Kqv9YhLd7yYco=;
	h=To:Subject:From:Date:From;
	b=bK/vqq5kCj2pc3Nc66crzyJN3wlJB3t+ejwtEwWI6LdUOrTzFyK/oWKr79/1sBM/z
	 XVdxTIk822ZQLs1Jj00283dXie9soYVjplXcrNX2ijeYJ5RC/UfYnsT9IXyBA9+gI5
	 1NjVML8Xzwoq2e836F9SNUeHr6Jr0yssKqt4mtnHr6LsEMKg9QYF4tsvARQ386A9uu
	 0TV5fBIftGhBJK4dCEBB9q6Tq6eGNSBjC8ntnA19mVLZvQyB5Hq/Xb8AaBt00c5E8f
	 P4JhvVg4ZYzlsmNXNUL5Sz3h/k0PgmkwBQp5pvCjeEKRjAq+fttY4XdbbQCcZ86c+j
	 5YNE8+1CU2E1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB36C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230839357.10911.5120025806355848914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94852fe0bd5f368ffc2ae6d9203271e0215c3de74974602939d9bc584b1d46e8
Date: Sat, 12 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752308393
