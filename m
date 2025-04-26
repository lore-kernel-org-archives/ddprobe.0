Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB9013B284
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745626794; cv=none; b=eskAb8KFSFpjgwkBrud7lBXlZa0jC3orrt3FYkkUDDLwXRKv5S2pQU4nRVzievyLvWV4oK0iyvTrghhv5UZ60IW2vZT8LE3xX07u6h03LuzVrFQO4uOLflqBKB5w1EAHAdFL8S0Ij4fCesPrvxL7u6DGgKDuWvzeu5kdA5ckPhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745626794; c=relaxed/simple;
	bh=sTKWnI4aPEoZUqpYZB1xKzOcQbJFW7gazLb9NFmAJmM=;
	h=To:Subject:From:Message-Id:Date; b=hHL70oVdRz+X531QAS1ivoyRJq7HaegrH7mwIzZ3S0Oi9IkABdMd8y7RxHHpiUuWoFx/A14GwrXi83gJ6OAXE80Cwld5f4lwxgG8yb0hWuc/Nxa0lHM9RUHFZa60AyY76a0zGm/wLVK2nHF6buSGhOyqqdTnFEoxjzH9N1r8kdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0NmggeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0NmggeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7733C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745626793;
	bh=sTKWnI4aPEoZUqpYZB1xKzOcQbJFW7gazLb9NFmAJmM=;
	h=To:Subject:From:Date:From;
	b=J0NmggeA3GFufIJ2MoxNQP253IOWUrqbRGkV7o6i4eT6A8B5pj0bvBa/ar+KKtzQj
	 45qBPyYCXnX3CaXXCPJ8ast+2KrwVczxchYItt3HdMZjETqOCQygprQXOlgVeR543c
	 FZ8x7F0HRPcOkRPg1wgOdgiZGib+ApdddKJrqBEYEb3OSNeAw/PyAy+cuoXX6WDBoK
	 BgNcyaf4ur2bA4jbuYlXZ6BXXyPapJhQ/WgEs0Jv5xEgqIMT5goG7OBnQZIJyRgolg
	 tcCXv9/DNCFhzfmTR6aAYI8qekYWuF4RkOYQOLrh3FMZmou7ZLclBOGHgkGvNrLuVQ
	 3vlT/R8hCSv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95730C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562679358.14143.2261280254746728808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad0e50173cc05b9f0c70fc1c7aa3f070d7ef4531a24a5d05c2eb47479611c9e
Date: Sat, 26 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745626793
