Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3775F267F4A
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747218594; cv=none; b=qrhT6BreKtmBhZcXoUIGQGOMPw/jpjQuYgfhETZj1znl2vHlHWm4Wwed49M8D+q65bQ8QSmRQ+fEkgJg9qYq6BWljRFusZoUAbO4+ZwViLOpMEoa8Pp31zMZc/zpoPeUCzpESLpIbeUim2G5hxVzpLzUObXOHA96bcRZ66zeF+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747218594; c=relaxed/simple;
	bh=4uwT4OVhG3PHR9QDak8Pi+JOOlXEOqlj4I6qKNcR3pA=;
	h=To:Subject:From:Message-Id:Date; b=T/r6rYN9GW3d6bkc8Fk+QeQSYazx/VID+JzYtJ2yGU+4TwMGUUmPhQYsT65ht4H4AW4hZ7By6rIHJFUNyqWr9YdeXHaooChSwVf6qZ9yXmuDxo8Vr8JhfLAl+miNN3ULsVma5ZFnVZ5QRWJEpLFsVzJUagQqiQVyIWaZvd7bfWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njXFZ3cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njXFZ3cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC7C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747218593;
	bh=4uwT4OVhG3PHR9QDak8Pi+JOOlXEOqlj4I6qKNcR3pA=;
	h=To:Subject:From:Date:From;
	b=njXFZ3cs17+SWVNPXwLdbSexin0i6Cwzz3973Qz5LWFnRWriH7D+NlRF3YEjPfCtX
	 mhyV5baivdiKf64DzED1yGhpatmgrK0pHJavW1T7TYmNGxdV+QKrcztk52kMCwwbJK
	 puugWqyRe4aURKo8yvR822T70NAq62B1DOSgau0kHhLao3yskpLz5fH/JZH54FLWmz
	 tFGk7zAFNDlpEP0jjMuBybVTRDr+LtNjpW4xfp/0uTYA3w6YpgN1T4xJub6aBXM48b
	 aKzvc0iD4o6sbaP/vNYKmJfg9+u9ghNPwCi5MgnhjeI3dqUv9iUo1koe6vpccDbHR/
	 o3jfJXqbG08+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9297EC3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721859359.22528.9856945580807898734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f830a642460cdc64f5313029fc64c25cfe768a9760cfacb7141a19fdf0bbf529
Date: Wed, 14 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747218593
