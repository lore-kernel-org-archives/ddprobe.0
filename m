Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484D16937B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718953943; cv=none; b=tS+u6QGaZc8UNLsiorq58dJxoJVILIzz815m0NbJjO2INq1JBM8NwBETketmt9Hp3oRmaq15EBMbnt0hZ2G/IsQJ6rmA3ec0/4AqXczlFTz0qpzbqYjs9nuwOBk/oVbwS417RKjmxzz3OAfC0vlSnK9ntz/1znL3EqFq6OZgYZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718953943; c=relaxed/simple;
	bh=6wiufASq4XTE8n/TyRn1Uwazz712m3ZVov7B+xEZFXk=;
	h=To:Subject:From:Message-Id:Date; b=hiJACyD2WhqY7IK6BJLdV0o53qv/mzmlrKo9M2A1ylShs+oesWgMQhktx80GvZvpoK/uAUoYUiuYom5h9qZjRXpoWNJXGhF97vI9o9NQCCPfZOrxd+K8z8mOjO0FDdjXoN5Xu/ha5k+yfssG+sYNFxZFQQsdgJE52n5MNrKNlMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrZPyM8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrZPyM8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34D7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718953942;
	bh=6wiufASq4XTE8n/TyRn1Uwazz712m3ZVov7B+xEZFXk=;
	h=To:Subject:From:Date:From;
	b=KrZPyM8Ggz5wTDhPZO+MOtZ/Cay42/PFyC/yCAuiNGAhEu+0o9vl6UCJx3/XCFYyu
	 IPzzmHthH7I5a9QMn/H5AhpUwVUcfA3+o7nHVoST0tojp7eEx0JraWv2XD13WbpevC
	 to154x+ylGdHZEL4RZh0GYfhrWwfPqLDIIgUv6k2IgMcZTebNmvVFo2f1cbvsZQDhD
	 78aIZHd/8cd2IkU4KRm9SZOohn6Jo2kPCJjhaPPdADnY//ECgS1EIElaqhxyUbFXzl
	 OESU3EOnCthvrDZuBB/Tp+j/y8uDi9d0icYuRIHIBfla2QMzuDc9J18PG48lYEUyrr
	 e00mgbR4hbfzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8EDC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895394281.12194.4854586228342362827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb6ee303d22283a2803509370f1d9f2424c6bddfc2f37ea261a0f88020214c0
Date: Fri, 21 Jun 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718953942
