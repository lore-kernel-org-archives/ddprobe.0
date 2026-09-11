Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C2D33DED1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789140034; cv=none; b=pdlTG648AjQg+izo+aRj6l3qO/Nnfz3iBcmjB8MnXv/EeXaFQSYIozIrNSI1DiQ1UYMl5SU2+SJBpo+mPdng7nwiSmBge4+FihF/TE3Xnjcyl3IAhn9FzkvHbhF4+AfdUhzFVDdtd5Fg6D+dmA5KUftwGhis+82SgDpj35CJc58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789140034; c=relaxed/simple;
	bh=GQypEQYz4mkg3zGvzqqdcS/sk4fW8wyfBDKau57O/+I=;
	h=To:Subject:From:Message-Id:Date; b=tG3QQlEaNhPN+xXP8HGyyahK8PA+WQgySgl6FMcVgus92lJC2MvwaiWhhHsd7oKn3NZ0ewB88QKYNPdakVX+HYtpjNLXKSb5eXraE0Hb+/W3e6FsdEpWNQNy3W10ZNz6uPcO6tdqVWkVdzxxAlMzl6hjepfUmBaiYen4ata8HKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX3z8vz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX3z8vz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAB6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789140033;
	bh=GQypEQYz4mkg3zGvzqqdcS/sk4fW8wyfBDKau57O/+I=;
	h=To:Subject:From:Date:From;
	b=cX3z8vz/jwJ+eWJIEqfZwwvbsaLdJcJHEgSfi5OwyyxH5pKKdYWijmyRBke1sv3NH
	 aH+mx+0SXNtb+BtBJ9wuTlT4ucaWJATHbnlDJvtDijod6rs6tn+9OtmmeigGVlVH9H
	 7RlRf8EaqbcnhGmNSZHDBIgoIWec0qN1AAMCMqb2salMQxDXJQSsQjj3wFQzZLU8Si
	 b4dCRiHl3aZZmwgdCEUrc85GvuGtOwvMBDMz5PnX3ArS/q9+fuN4k247IpW+TPPoeg
	 KxTNcZenHlmOzowXGoPREvsbgzY4LqJrhYtykclah4/xGnTjK7ne4WmrAAoHCdr/FP
	 o4wgMln1+ZwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB777C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914003369.25209.16885625067919896899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28344a3f4a4488b1109767d2d376f1465bd72858519ebb40ffb46bf01757e98
Date: Fri, 11 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789140033
