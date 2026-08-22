Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6A7374A05
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787392234; cv=none; b=J0O1mvphfEqb6DfHfL5RTnJlyFe0/0CqSMgaoIAbqxzOAWgFy2Q7fCQ1vH4K1FUjrRd/ojWcSQeeHfl5wp18WL9oqkngiHt5XoV4GwAhJ55trEWqhuQ2628u0CDZcXhu1D2Y35d4PxT0QqfRcAL33jDqEfqmdai10DzPivMgHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787392234; c=relaxed/simple;
	bh=BaWJgAMZ5TZLhuZKvsTQPsx1tv3TS+UtZHekYLyhqlA=;
	h=To:Subject:From:Message-Id:Date; b=fN2A5R/ZegYxuSGGWenz/6i15OB2+PWz9IsjKUEHFjysmahDf5cc2hFPqhDWrlM8ruSXyiOdDkxBwGVqJ3yv06/uktgyc3sqINZnziZtwNE+3B9/Ey8a10AWdXg59/rXLtlK4OFGE8Gdfgp/XzkajLi4gfX13uMLsFX+3Vunl24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtfM7jbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtfM7jbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787392233;
	bh=BaWJgAMZ5TZLhuZKvsTQPsx1tv3TS+UtZHekYLyhqlA=;
	h=To:Subject:From:Date:From;
	b=NtfM7jbX6u2Oe/b69S5DqNYHa4F+GbGqsERJFpXMX03BVzIwzJvUvZhyhOJ8PDlaF
	 O8yeycjAMywH5+aDeG7NEJ1YbshumDX6ny3fLmCtI7JJSMNdIouPj+QEZW9eGTpsx1
	 6K16hvI7Ra44mbEmsNVaPG4cuEMMLoPlDDsR38Tts6PNhktwJ7w2B4sLUqWDdgliHY
	 KN1lUftAIBuUfaFCjuFg/C04Dx4uKi0BHaBAJuhLMpYXr++cKT6iZc+ooAAyiMYNf5
	 mZkBu4VST588xLKeKSEsTrPTgMrSlcB8eTFVIvU95g0iNpeCn5HiiFfU8XkcEVUP8r
	 wbMcghnG2aZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA671C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739223368.21684.10423698805298394015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82fba343595616e821ccefb772bfa598c754e69afe570bebedd356c30e3ae17
Date: Sat, 22 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787392233
