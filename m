Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F6A356767
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788973834; cv=none; b=emtBFkX4MBX4/E7i6FRAa3Qt4OwWBVQCAX/1GgVwjcTDXApscKoHrC1dXU4UWYlyQtnODTECQXBwjpsxWjzLEC4qOYKm2zDUO6lKCNqlIbyYaVv2/7VghJxUOApeAHkAUJB4pTsXJjnOLh0xtO8vVr5rbsTR6UCNzL245TjmkWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788973834; c=relaxed/simple;
	bh=fm5yWeNalajKhOf98jfWrNMJgu/d+WrcbdKVu6R939E=;
	h=To:Subject:From:Message-Id:Date; b=Nw2KUgmDcsQdI8/Y91Js0trGzJmv8GB3zDWD4IMl6WgwrKCNdLhVSbNeWqbxznAnRKIzlYQR07v9sjTEJvsn0YADGe1D4oB4xzwYAYnB01NV5h5AttQZV2wT4BmaJMQKaHlxSaqfOmrIE0Oe4GAnstuNnEBA2hHzBZKbad9a16E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzDwliW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzDwliW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4C9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788973833;
	bh=fm5yWeNalajKhOf98jfWrNMJgu/d+WrcbdKVu6R939E=;
	h=To:Subject:From:Date:From;
	b=ZzDwliW/HaQoWOUnuAND5XTjyE8VMMvSwcwJHnznc1Xlz0KyCTfetxcicH1N5IzKh
	 L2ZOysMFi7Y2BNVagrojW9mKHysPSFULyBIR7/seCuBu7vTDYFW4SQKsgJi+jb+a0L
	 avythFHh8AN+bkB9n43Qa9YOML4fw2/1kl6A4dZp/0Xm3AcZWtnwfihUDqsztgorZS
	 bKMEvvsY/ri2IeH/bSRBuGiFMlzFvQQg7JEyyocoskrBnqVUMvL9UtvdNbS8bCeqys
	 C9JjGZyWskcqIz2cQ4sDu+3BEOEYsYG9NA3LRlSk1dUavg1haoQFdPwGafA6ZoTjim
	 3Bb9h0MYycYOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B304FC79FBF
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897383371.8133.559694062858997188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730585b05ae69eddef425179d2ff877ded4a74b93cf7b27629798746cfaf8dc0
Date: Wed, 09 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788973833
