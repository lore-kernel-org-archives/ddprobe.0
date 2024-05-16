Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4777E4691
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 16:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715878343; cv=none; b=sU2JA5Cozb9zkF/tRNWUptP/J2zrVcCbQK/BTTv9noxiokMb07qI1qEEpqLuIxmT8bTM6KVn2ZJbA2+DLCoaFNE3Aj++x2qzYm3w7Eo8BM+sCgy0eqBl2OZ6u3ZETaAqq73kO4ois297NVq90Ah4z6R5eQEq42iWVvSlHO9NWpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715878343; c=relaxed/simple;
	bh=pW2H/Yjv+gvOnGGkgK2on7rYCSBEFwI9pwOH8veuRLw=;
	h=To:Subject:From:Message-Id:Date; b=DbqymnxLu9VF9Ag0kV88p2UX2iKPuLBDTGpsI1xhmv5NWQpAlClf+y+OV/ZsMtmf/WKDQpstrblTmJX1k0r/ZffEqW4aXFkk+pYLU+/spMRnr3bG6b+Xzx3XUs/t0WSRMcTiG8ansDhRH1F7HYryKvx3RnHqVrobFyzbNJoDG70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhIbWQ8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhIbWQ8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26F9C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715878342;
	bh=pW2H/Yjv+gvOnGGkgK2on7rYCSBEFwI9pwOH8veuRLw=;
	h=To:Subject:From:Date:From;
	b=lhIbWQ8PQtHprHaqiCnyAesXPZuW1h0MAxYXZRkDL+QZF8Rj5gA6xfZRweCCJekVh
	 3OA2B7Ay311CFgKOQx//I+EHZD/0fM6CVsq1Z2Ej3gvlS96D5wMNHGgN0/iVeJbjJg
	 Ru8c1THiXAnBScuXhMu+MPQnfb0hrOMhdmpApqa/MiR1x7G4UO1up+DNLa/2B8S6HX
	 BM8EZksbabxpKKIJ7JfB/JsmJtDKsAr5DfrXmtnxAxRMrvAdEPIyYIJvtB8GkO3I4T
	 a5HpkVF7uMEac+QJlHLExJrKF4ijUjkdmKnEZXpjSrPSFG3lWXNK2GqVJ5t+qZhSS/
	 3jKzD2rnKigug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD355C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587834276.7315.7381487335183288256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7daa2aea52435b3c46205848a73fe51bdf70318aa2ae082c2ac2195e8769b42c
Date: Thu, 16 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715878342
