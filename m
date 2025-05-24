Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC94C98
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748090994; cv=none; b=Og8VuriX3JWbl4BLg1qTdZSin8rfZVvmendrIJnvkGFaldJfTfAUhwQT27MbFGLK7n9JIuG7MbkmQjA7JTsA2N5VE3q4husFnj+Q58ckt0aFt2wr3eELkzfE7BB9F553l5PzODaLkveCwfDzIRwBQHoaZn4P7r+CfUHRkrPpMAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748090994; c=relaxed/simple;
	bh=+KjbO8Zz2UWu40r+LlcIJhzKDlBVIGywbdzFCvYR9HA=;
	h=To:Subject:From:Message-Id:Date; b=rLwtJLmaELEpvivz/z9OeowvkAzVpfvSc4lQgOzQgJJ4nGQIiNy0PR5bdbg+wRkm0062xcztnWZ/kc8WnNiQRSLJM5oeBfUOZnTvbU7l9cMwx7/OC8VWpQzAtF34AhxA686yF2FB0shaWUftZsOv776gWPbu9vOzsjcRRFan7jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFTVrx/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFTVrx/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18BEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748090993;
	bh=+KjbO8Zz2UWu40r+LlcIJhzKDlBVIGywbdzFCvYR9HA=;
	h=To:Subject:From:Date:From;
	b=VFTVrx/6a6tkD1Mce56NWz32iP+ju8i1/R9beb9GV4kd7xhThqYihhL/wZnhMMjUt
	 mdU+luICTOe7+4cSSfjwRRJG7vlwVEWIsYUfYoqsuHupxxvj3agzzEXBBYlfuemh7G
	 lE+o3CN+z7wz1R7AdDVT3JzDA/dSqgWUsmx79qEYfjPxA5Y45SKaPrjjwc/DgqvtOQ
	 isaOEvtq/7LlQZ/pO6DDvNxjcZ290+e+rIqj+CKtM73007cIcRqtkP7PBVbJNnjlvx
	 jKFC7+tg5844ubhNZE7UUpQUuDbzUXtP//65Plxtbitzl8OwrlFQXPvT5OxGNgqcC+
	 t/RGQpEhfBWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF4C54FC6
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809099357.5245.4996679890229357728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5131fb864a96b87c294cb884a28636989bcbd672b8344ad977cbb38b0768ec
Date: Sat, 24 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748090993
