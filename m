Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447CD19F137
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749684594; cv=none; b=kgO7NCtxtaoosiXbbOyT3U5EhX7wKaFSfiI8ZXIPeLVQkGWnv+0hDzu8r+n1iKqwAdoGvixjxbl8JBlVGc/nbs6ESsQyI3zwxw1ygWbZXtEIJfsStYyna+B+Zd/Lp89y0iLJ/VYN/kwkg5JIC40zXZRKqatIVVZFpg1MM/7TFZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749684594; c=relaxed/simple;
	bh=yIPtTk6OGZb7WTZirk3ieJ9aLw5/dsUMYMZrFEhGl7I=;
	h=To:Subject:From:Message-Id:Date; b=ME/WJ+zO/2e7S3Yg1uOMVg4hY1iiGXnw3sPhxkXPtGazqACTHdZccAeQczv5lXZCmhiCpkWnuHuLusO/VuxLRAG9xfZHPME7+a/D8djVGMZbvxLIJxWWaHLdlt2Z4WjHkmRzHeAjjmX1KEp+7k59vMYW1MrdDA5G6lG3XoD3iKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO39jxZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO39jxZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B023AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749684593;
	bh=yIPtTk6OGZb7WTZirk3ieJ9aLw5/dsUMYMZrFEhGl7I=;
	h=To:Subject:From:Date:From;
	b=JO39jxZFAMrU+sTbo1aKEph8AchuWJVz516LvF/LdGf5R88J/OkrZvGFD36qQ9rO1
	 sv/hQEGFZCcNBKsQdTBqiYmB+/fz3ZJwIq6SpqLOK/LHvKpuqBh4mzNUX31hXEI5+Q
	 2+89n428iVv65lSjSB2+etX3OeQuef0kt/JhdLSTip25nA6nqxKFa/q+4rwTLwEA7M
	 4GPSRxVTFFcev1U6f0NiDkbZc6tgOv5+57biyTPdVo0TKQ7vISgLV9m3Pvmw7oaITf
	 TPQTWVv8RuO1AwHQyAWodhVHTC0O0NSFiLrW9m7obvZzvJjzKQdnS3bXmWh0zQaERM
	 06GPmlbEK/TrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9947BC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968459361.29135.12165834547785812649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa80efbd3f18b9cf747b78af91b9e69f7677eeddfc7a97691201d9cfce9b040
Date: Wed, 11 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749684593
