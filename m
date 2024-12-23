Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39457187858
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734998154; cv=none; b=AMGklGSc6BlJKlXKaFWN+pyfjrerKBG55ahC23isRgo+ZGbmYDzLNZ7TItFjwYN4iMdksb2QvjNv+S6o7WtXRmgoF1pHrwC3U7FOB8fHCt4Ie98qjqVXKKSN+xP4a8qBb9Nw+cK5akc22ApuEK1y0VPduWwjN9EgZ3/r/zaWqWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734998154; c=relaxed/simple;
	bh=sHLXimjR6IFXYnBr6Swl4plQYa1SV+m79XSkcDB+TD0=;
	h=To:Subject:From:Message-Id:Date; b=G/cRb9RC+gZgkXaq3dGLLm2TTqMCH/m03cbQzelJW57eUlSHMfuytw6LOJWe/sCzC1iZLcIMqhQ7VVyC3k0UxK8P6GyyAqdBpNjMU41pPV4XtY+s2gFmtO9QfUVKud6IJtadszCJmacBdGqqwvOx0zgMm6cYxOnLWkpQhSSF+k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT4SGWmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT4SGWmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82D0C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734998153;
	bh=sHLXimjR6IFXYnBr6Swl4plQYa1SV+m79XSkcDB+TD0=;
	h=To:Subject:From:Date:From;
	b=JT4SGWmBMv4m0OFIcVYX2CM09fVsPHxkOT87iTwYwfi9gbzdQLe1ZWz/ugXrckblH
	 5RAZDEZjjXk2vm4s33V3YocUHjpVkQ8IRuB8lCnk+XTMfp3gn6aEP+e8VhCI95mA+i
	 mitm5uwkE1tqKCo10XTRMIKkXhA3XIimKkHGy8EBi5wBEp8heCollqVVcfntSAVJp/
	 aVbqOs3MayO7YZDn1Ihq74PngopGzAvf7l6rTX5HSQFwRi7pk6g5LMOS48eoV4kHY/
	 kdFO0r0ZJWU7QmJoUeZKEkewHGuaNUkWXYTJ56jPuN+k7rydUI3RJS2DA2MjjfaOuU
	 jqymAi4TgeLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA9EE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499815361.24688.5181389843802548715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3872c1054488655bef5bc1da4410459e04cece27ab9485d719db7999fa1d45
Date: Mon, 23 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734998153
