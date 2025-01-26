Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B749476
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737913555; cv=none; b=GH0do/sb646Rt8/WipXrIaCTNdlwWq8Vqmlp2Xca/B8T1BwdOyzTGM77gVv+s21970YrYDCgw04N8nDWjLb85EHQVgu8+BioAs+FQUrjkmaKbtNRzpFSAjxZxd4LomxbYmhVQZ72icut/gQoTWm5O3qGacYPZUtAO7g7eL8NIIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737913555; c=relaxed/simple;
	bh=Ju9lE3qtgPCw2RG6QNqjJp51h/h0uzvjTNHdbEDkfss=;
	h=To:Subject:From:Message-Id:Date; b=KBmBHGLdfYPQsgP4wrPnlJ3dW9VEaQkpwDDf32wB/rgqQUwgOpQVq8a9p8FVfzaiLYpK6meZXbTvUakFwNB8CFQ4SJsxVfwPgOALels2o8N8zVPLTFz4jR3NkWyOg0s35pIKNutgs71uI43htmmHEbyaYNQOcct0gUB8VvhN9HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1GX0ulD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1GX0ulD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB911C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737913553;
	bh=Ju9lE3qtgPCw2RG6QNqjJp51h/h0uzvjTNHdbEDkfss=;
	h=To:Subject:From:Date:From;
	b=d1GX0ulDroFUkpOFd+DF237Rlp4ba7EJT1qqfRQd+awO40I4kj+nGjm0MwMdV8Cqc
	 npyMAe26G9GUIvk9E4IRCbmx1CYNlTUuwDjkcERMRnkJwegeh7wbxnvsxWB+glrEk8
	 Fki9qdDOEHA8gtgwB1In97q+wkwqBZdGU3geNsOQ969Mu3vjpKxt6TEdGK/GlUKV3B
	 WzFiH8dkwTsLQeM3Va55GcvmynqbH7cK7p37Iz6d8w+a15hj01e+phvfsZVD+yy8C5
	 /1pS7KgDcWqF7/Jf50gBaomUvYpq7ouSLHM0U1E7Esflaw5ssMsHdk/qVjP4zbhERr
	 WE+1FC70Acrzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98333C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791355359.17625.10486148623367061237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0f2d31bff56354358651630c284a0922a6ae64f68619004ffb18205d75e0b0
Date: Sun, 26 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737913553
