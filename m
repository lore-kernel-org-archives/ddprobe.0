Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED2A1E47A8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759706394; cv=none; b=s6+rVDahRz7kAjiBxPZ1VQa3GqJjdf2GzrQLNyWzSjeOiU+DX1O668su3N7Tv/aPBpKYx3IFRHNGF0IilXRdhjRi4hZpT2Lrb7DipOto+5WkU576BxYBJKPjBjF0erzRAOp3yp9r4/I415JEQdIuVXz02hxHIqTKv8+eZ4y/Uek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759706394; c=relaxed/simple;
	bh=tFTcgmoJDncuNRnB85IGXf19jEx2HwM1xvmXXmAwkDI=;
	h=To:Subject:From:Message-Id:Date; b=QDi4Sy2wMuc0Q12/WF4LFB8boipQhB/8hbrxK/Tvu1qvpgKVJh9CXVuAX8ISO2nyQ0GzX1Pk5KbuWYjqDiPJ3uUhLSZh9ql/oygVIlXsDJ0ZcnhfzONARIUxyKYSransNF9eDUDV+rzTpJunSS+QbuXcSOxxml/fQyDAUlqIPgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u43KlET7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u43KlET7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA7C4CEFF
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759706393;
	bh=tFTcgmoJDncuNRnB85IGXf19jEx2HwM1xvmXXmAwkDI=;
	h=To:Subject:From:Date:From;
	b=u43KlET7GmUBSvMHk/whAOxqqBi1iumToJ510N3z2pvVdp1dBPRWtYc8hWpcIHy5Q
	 r3hwKVN4UXpbQVD93eyIf6BLZrREQCjgv9n8Lb3zfayxV45CifNGNC808IbvpOyRsO
	 H1Cld6r+i49LYvA55VYvQIq4AqiQOX0F1+3STm6UCBKw/9U3lPZiwOOXtl3GJp//jZ
	 nbhxedjxThgWTajsseCJIRl6mQgo1/37uWM9TNaBlIlEPM6qwX3qzzMzh1Xm2HEZvU
	 tq5PC6jqndJemEqlkbVhyxvvxlDZ64QDxsb5R2L+9tJv34RKBzASn1PP0jVQkU5YNl
	 mmwIKJ5J3ewDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E0CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970639357.4459.7536871737329414860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1e47a54747ebbfce060e650ae150c96d24caabc5308e2da1e0387e9b4df739
Date: Sun, 05 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759706393
