Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C17D1DB52D
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726233954; cv=none; b=buLUUo8QFkKfsIO11l7pYk4rpRmeZXuwCW0rUP7CuMYGDSPj1hW4rtughKNUHncsTuMHUqAlybncRkQVO4iS0Cde/CPxL98OoFlePWNX7rdU0f9KQTxSwhqxkAC86C6+mKVhW5A5md8D1exRcfVjIJNXfQDSPpcGISJzKjFUSqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726233954; c=relaxed/simple;
	bh=6FbunH5ZA/FKK3n5wPiItwD4SOHQyxZtGDGNbyvIMtE=;
	h=To:Subject:From:Message-Id:Date; b=HXC+9OK+Nt+3/0AMHmndGfIw8RO/cuDG219inEh/9nHy2uZxW8sasCq81KcAf/hE2VPX0XjZ3UR6FfsjfAvJbU0ZZxbdIcMoRWWYis0uy4BF/yb8SIC2pZ47tqiYfG03EDvb208rHm6l79pwIDzBVxmkCrqbfZ93Jg6PbuPAI70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z17A9z08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z17A9z08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4BC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726233953;
	bh=6FbunH5ZA/FKK3n5wPiItwD4SOHQyxZtGDGNbyvIMtE=;
	h=To:Subject:From:Date:From;
	b=Z17A9z0899bMWppf6QFCx1V9z0ySleZE/MHyFOofB39HIDnJvqFZmY8NtzX4k5+ux
	 uHcBXgyVtvdtJvY0CulOlRF3Ixnx+f6IOLX9tls5oGDd/tiNNiZPOhm5govmboiQa+
	 3DJdDudwYwBqvJoKnbsHoaxB4C7Et0dtvp/pMBsB79YH1JCH5pxcuLpefBmiYtU8tu
	 dFDc+x5kYYNDvnJOgoTLlefIR6aUMlQyOba4OlX+MJ6c2P6gjSzgKaCD65LWiITXTj
	 hfBS5/Q69PsiAetCTmPbMb2fXkG4lLNyvOieSHJffGuSfk6NwRrH5wSEmv7dL6YPj4
	 loYSfU6lkNTLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989F8FA3754
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623395361.23699.2491922497810247995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e51c20e3ed9777f7fe5b3479528a3f3b472ab46700144baedeb1171e6f9efa
Date: Fri, 13 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726233953
