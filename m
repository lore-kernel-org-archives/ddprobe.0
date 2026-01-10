Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0B223817E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022634; cv=none; b=MQpVyOsLUmvEKxIVnEA1TGtjJOPwm31D55csVyyLHiw5ZWBujANWiTeeMH2CD7KmxiW/B3plLakgViylBg43YH2Eb9y6C42kU10pQG11UD0r8Be9kyDQUxoDOHjCq2outJzIkzVSY4PgBx+XvPG90+2CnZwWSxPmL1WatvKuSTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022634; c=relaxed/simple;
	bh=w+G9ppylP+97/HrV+cOpymTzxDo98gMEgXae86ERp34=;
	h=To:Subject:From:Message-Id:Date; b=DyCUX3VcUKTxXsq54F/1jdW0LiDrIBjCaj1PvQXDuH/SziltHeAefzoEXkPhfxCp1OsoOWX9zV5AeNW7HX49VtP9hOIzzlI5TNtv5ukweDF91vKz51pTyEeY54gBdoTd/kSDUumkQvVEluHsSbv7cH91w/IlV7GAizLhzFqD5Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFPAIUEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFPAIUEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768022633;
	bh=w+G9ppylP+97/HrV+cOpymTzxDo98gMEgXae86ERp34=;
	h=To:Subject:From:Date:From;
	b=qFPAIUEuHHY3/N0Njeql+Sf8pBwIRrcPWP4tUTzIA6a2w6O1LI7MlE5v/c1aLe/pv
	 dAuAqNgVUAqkFQvVdvaF3WWz1EcEuz8uZaKpfAbK9JHCQV6QnJQSWho9hIhpLhixox
	 d1dEjUbM/XCnGsUV98JbG+aHPhyvuvnwOjh93d0n2Cg8C4OD368HWmDzyabeu9ER8d
	 FIKC/QBQn3Gw71QyKDuKjLznVezuYgancgDnTI9Q1g9yy0YOTqb+QXWh5ta4zD74Ml
	 /MCbSI1q0q01rWbP+5YdKWHeeoHtw7ocrYP61NPvj+IgrkcvRTsXBZJLeADoQRNGJo
	 AHlyDLi5pYhsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD3D277D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802263357.25313.10093407781835027743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac98d5d97dbe6c74d21c45b637f6acc2f387538f065919980afdd39c880ac7d7
Date: Sat, 10 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768022633
