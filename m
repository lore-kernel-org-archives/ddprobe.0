Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC9183CA6
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752304194; cv=none; b=nG69zBVYv/WJceq7g+MjnlZA7B2u1n4mUTN3r7RJJbfMIg7+S3DkfBBnrXDPzGD9SEon9/cjnZ9CWDUe6tm+91EC29pzjUjzJ8WlxCiwgmxqST8Kotbx6Gs+Fag+8TPbnoVOsMiH1VUTnjyFPAjucehVkWRp7SxOlDrtajfhkdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752304194; c=relaxed/simple;
	bh=RiAwcjVsuZKvw9jaCBbNzP/MXAsrIyDcy0T0JFTnuCs=;
	h=To:Subject:From:Message-Id:Date; b=G4E0pR2xdLqe1ZndDG/55FPBNYS+xQXlRww8rE8f0ep86VYZUWVtnEKzj81jKyxMsptCZWUD6oFBt3xxdn3MpKTlRLvRj3V80yZ5QFWREPmTP5/hn5hLCilgKj7D1v+63sePtvip94Yf0TbWIrJeuAu4k96FphaGGStWw9lxmsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mnp18g3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mnp18g3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A43C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752304193;
	bh=RiAwcjVsuZKvw9jaCBbNzP/MXAsrIyDcy0T0JFTnuCs=;
	h=To:Subject:From:Date:From;
	b=Mnp18g3XO1/8RAUOaYPZ7ALy+Xv3pGkp3QmmeV4szc9mB5BRGfosqa8LFFoChvcuW
	 iLd4fjk58VFWwMqWoZF+gcH/jGgB6RhtXlxZHTFfMGfX0vwazqJ6/hpEZutBVEho0D
	 1X4LRnKZTZsfKfnyOjGQa283QG6spfRDgEb5fwVXOdLh1Ks8C3EKlOYfbkfuVHFBFV
	 67/7zboJtrxgqWIX+RPdiZxK9rlsOIq+yxGLdNE6zqfrO++BtkhZD5A1LOzyNcaY+6
	 LwWZOxHPTSd7y0W7rtCe1pbCJS6+LwdeXhICeniDnmFR7qbWzn/Gsc8pnGFmyYOzKM
	 Z0lQFaM4OfChw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8BC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230419358.14897.11745394042505043692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6362bda3caa379ac77db30697a994d76a55cfba7845010aec68a2e115148b3da
Date: Sat, 12 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752304193
