Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DE52F29
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762318794; cv=none; b=EQI7nB1XC5F7JISXec4M13Eufzh8DBs1na1jf0LRJvUstWc+CBfSbSAFSWZ9hYJufFySerDy/SOn4pnbt9sdQFH4Y1Q/ukpCRXRtGCHB5i1hE/lpfnuc3TPIBBQfQrBGZOKn02aDdKbpOZk9A9FWsodafn+ASzgOIzcOmoekwj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762318794; c=relaxed/simple;
	bh=Bn8HKgsYx+M9ssVkibI8Fm87PmJDH7biWaTKFGwg+Sg=;
	h=To:Subject:From:Message-Id:Date; b=MPxlYhkvSp2NaBY0feZVcggAoTutKwDvq8iSBf0UaV1JWZ+SHj8uobm5/dmrqzoIM/PaQfSSl5LR83NphGVlbOArTGpKQyR7KEH9Ur9m6SB/3F9U8s218qcGmIEYkHr8IP0d7wMTxBlaRQwf6K+AdubRMV6NZQ4ET9CiTZnui3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYVOD7fJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYVOD7fJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D392C116C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762318793;
	bh=Bn8HKgsYx+M9ssVkibI8Fm87PmJDH7biWaTKFGwg+Sg=;
	h=To:Subject:From:Date:From;
	b=aYVOD7fJfEo5SBuXt6MCQR6+5QJ2tfVv4ZnmmmXAjVnXlz1TiX08EnWH+wWS3ckmW
	 bCys06UdhnMNEhYRo0GEStMCkmwR99aESInd429DHvctCB/fM5fNwDfjqeXKvJkLGZ
	 OLih4rhXoL+qTpkwnxcw3xtqsbd/L3eqhsZAPFEej0XUMndn2+zegw6lTJu+RC/UPU
	 gxY6JhzxqagEgq7p7vHh4ZCUD79F7Uy5O6TuhMYgeh9bZ3kcapZ9sWlF0geUtSpcby
	 0hg6/OcucVq4ssaL293GRYfpjefFW13pBXDsindVHjq7fY9hYnXRgg2aNo0byg5P+n
	 gCKnlLlwgb2GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41CCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231879358.24189.14503214409773495924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a272487cb8acf34e22174803bdd58e187b369fc67812dc4479819be0517146
Date: Wed, 05 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762318793
