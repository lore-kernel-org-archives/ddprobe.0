Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373012CAB
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731207954; cv=none; b=R+WQ2JcJ+am2FBzoHVqsOWtLXqHC7B526PIdcoLwhBeDJYvFanO2tdM8OLqiUeLxoJwi2azOz0E7vj5gX+cYAJ8C+II8Qpc1ySBsDTXWrl1G1IE5ozznxdzrnUWRZ0DsENjHnNvcbjMg9p/qQRAxX+KqJbbpOEIwky/TF4RfSTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731207954; c=relaxed/simple;
	bh=3yipHiLukpXQtw7EvQ0e4nD6ulbXlxNctlMseex21Uk=;
	h=To:Subject:From:Message-Id:Date; b=d0iXs4A7ZLS2mPjGy/56TaMedgrImrNcJQH/lKbHV+xQz9vxszMioILDBCnzf4b0+n55kujxqs4Y2DKx2MQvFqhiv7esu1KFoFgcxxQDhlwmV5ESJry1eTe6inFmyHabZyHxu6cJXesPAkokxpV2lOV802blLmQ6wGMdxJdk/C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLqcRSH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLqcRSH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF0C4CED4
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731207953;
	bh=3yipHiLukpXQtw7EvQ0e4nD6ulbXlxNctlMseex21Uk=;
	h=To:Subject:From:Date:From;
	b=TLqcRSH7kEE6dfp8QD5BxtbSOHXPx7/B12Jj/XwefDUuL8zvnvZmdy+1DoKoWn8P+
	 kZn9ArSDe0AEGpKgV0SU8W+2STiyTiipsx40DSsftFdC/1IAA5sFfr/SKaGWDlxkH/
	 CyGfXiMDoXTMZN5R4hCnPTACz+oFBehiR4yMiXl0KosaGBDcGRrMo1KmCuSOyyNQzK
	 rL1lRnbjA90rl4xPenZLzVMFeRPhEhb600rQw+d9ctwnucVzu8oDtu7l7Lp47OOhLa
	 cgTqIMuSh4Ju5EyqoL8gWy+9XqLuNf+Qpitk4rBtscn4skJ7zrYRZqMz2RNzEbj4Wo
	 9I4mRxYS8Ui3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB7D5E36A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173120795358.6845.11159989504854974931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce6046341dacbe867323b6ee9d1b67c83e198843f9513929a26c2529f1b38fc
Date: Sun, 10 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731207953
