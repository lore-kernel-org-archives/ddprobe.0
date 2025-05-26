Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276A123741
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748284795; cv=none; b=kGOyJxNCajWLm5rabyVGspHMMQU3HClyp0WYfMiMgjRr/C6NOXfyqsTIjuSnL45uFtocotBoRCFOUVAw/excPLG7Jrubr/f+uDytsr0mDEwX5OSibzY8Wm87yDWSLvXaNRknSV53mKRiUE+AMFYOsGhsJQPGvh++OZeHQVNRVyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748284795; c=relaxed/simple;
	bh=CdjvnFKzxlJdLrwAf1EBVghqWmn3eq0tu8ffT8eLFWA=;
	h=To:Subject:From:Message-Id:Date; b=KcSOQEYdYgP+rv2WvaHzQ/X/FoY54ON0M1Fnc1P+TJlWNiFG6FNqK4RWcKd6o0YynFJHT6O/P1itlkeHeqFpGyi2x6coThizem+TPIOsYn47zTkHvpKueUwbdilWm9sv3aLWrlj50HXW+lv1QFN/wBYdFzU/pFsansVtDNnYj/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sujYa4Ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sujYa4Ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0307C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748284793;
	bh=CdjvnFKzxlJdLrwAf1EBVghqWmn3eq0tu8ffT8eLFWA=;
	h=To:Subject:From:Date:From;
	b=sujYa4EyOFv9vOqcX9z1Pv9tiqcedn/RZ9La4QNrB9SrpQQ3YQD7BhKQq7zfsG1l3
	 kAYUvxCIzBjl7nSZwmacZAl1rbVut+jPESKqDGsOIZs9xcuIK9zt/l8JZaQ1H8q25d
	 LSKKYuaZ20X3cS9sEIKKHQ30piJpbewtLU95fw7PHaHwI4+gUCIGytVuXNGXS7vLkf
	 UtYHz+cgiwso/vrL32Qqinx/8u9lyAyp/WkCiWxJHweKEFGw+zCir/NYJHIsEDBLiH
	 zA3jE5BC+jqr2kfZ2Yud5HXPm7taf46kaNFbBXgNqoj5v8upzPjlfxxb3THe9AT/be
	 XuNuemQg9+QGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17CC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828479357.28356.6720542502592478697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd97b75255944d85dd71d6c37812362f5c49b4956acfe9b5f5425f3befcf6ae
Date: Mon, 26 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748284793
