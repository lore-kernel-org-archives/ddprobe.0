Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6831DE3DC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750976994; cv=none; b=TvfynnD1ykdxO6/Rbv3vzP8PzIA+QCMKjFe9Gbs6UGvlot6q5WRWn/KcbKzxuoSQ1EfdMAzaV/h1J2PBL82AG2EBNVo4XSOr1YRfTP/PLJTOWpBQLkMHXB+7F97dBlH5Q7Y0zCqLfCABv6CmJFp6xTTMDe+npS/mtyiXdjNzOYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750976994; c=relaxed/simple;
	bh=onNvVg9BSlMXlCrx7W7NlajI5BVcqAAQrkQGMCew8M4=;
	h=To:Subject:From:Message-Id:Date; b=boFAuX0jmouBozPhrK7lVxTEiMN50sigU9dbsxuWPwDBU7en4z/9s++UnVnyhbO3DjxBdo2c3ujHi2t0YHf97oecjIJCR1nkTNh4rPOyIRyVLQagH/VJo4aoU+1qc1NVphd5bGfB2RCrIpF502bd4m53qxLkLlCcBzJbIIUYej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbckH+Md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbckH+Md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7571C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750976993;
	bh=onNvVg9BSlMXlCrx7W7NlajI5BVcqAAQrkQGMCew8M4=;
	h=To:Subject:From:Date:From;
	b=cbckH+Md65iJqQ47qjMoyeOayux+tYCHBA/+f+CxgJwP5zt8/AWEruyxw7Z7J+x2/
	 0tIv8WIro5IDBagtIyw2KSlYEjf0FLZhf8+c2at/lzfJdYZCy4gH53YvrV5ssmY5zO
	 MpE/BsoRCF9WqP0cmnJRyBj7em8yeJYBDfaVNqXSXZx++kE3sijNyPwZwaQ4lDddrd
	 jMAB7smT3kfDRCK7g1w4z23k3sP6LiuaFLmEBDDhCNasJWGnQsaCHdgscJk3T6axEd
	 DqE++peSuqB/7coYfVTjmOe76xEeFLFNj6y4zXTrVInJgeKSVcWWssFhfOnLOPkfK/
	 1mBLVy22oNXsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90615C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097699358.1039.11156090411741649514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7ad6dca30af62c12cb60970ecffd226ca9ed7fab1d0df3eff800502fd3329d
Date: Thu, 26 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750976993
