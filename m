Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2627017A2F6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779163234; cv=none; b=U/9WsjRnwCOECm4y16+on4skpSz6MM5mDFcAskiuu5Bn9f/SqVpdIWj1/eD5MNwT7KBVrP5MCOHrO6xGEc+fzKbmM79aBx+79hW36qrF6laE9ZGePmESVS0uQkmRM1oXHlCNL79OcpPAwQurAHdwmg/AS01OUyu1wVrS6sRPiMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779163234; c=relaxed/simple;
	bh=pfN1xN6VjzfBixYoEpH115RN/TJxh1SIEjLPq/Ic69w=;
	h=To:Subject:From:Message-Id:Date; b=Ek0KsZb7q1xb79cOOJEf97Id8AfqajYwEKKh1rcbH1INt2F/Ya+RvwVgECQV4wA8ugJ7l+XztKHzwN8m18HEVyqk0MpmZV5jcu9OzzbNeVDbMOBkeNgwUO+QJXwpXSn/GcuBlN2eyWMKKg0fDhe0ZNeY59K0FNOGoBfGbTuQXZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeymjgRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeymjgRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0839C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779163233;
	bh=pfN1xN6VjzfBixYoEpH115RN/TJxh1SIEjLPq/Ic69w=;
	h=To:Subject:From:Date:From;
	b=WeymjgRGi9zmn6CctRnujlcH8XksklD/kRqES3JNA3zk/sCRkg6xtPEsdYNjJbll8
	 CxnLPCxfHZnw66cyN8XXfwdJCM2Gyiop1+Hdx75H+6ynQRig48R+JFD3+xx+gqKgom
	 r2V7OgxZmebRhzpnpapFiXpNhuPSm9ynWxuCQ0jbbPsDaw/MxsphBf8+zpAXg1hEo1
	 4T9vgfvK668HgAkN7fmK/Sp+B/TuH0KOMRMPESkdxGO7OIwa24ZY+vuTnsPZw3ZEZw
	 X+dzO0JVKhgPd9YZw765f5V1obX2XV/agX9F4abKQWwJmxZhISTPBRfV+OC/m4tHdz
	 Lc8A8IO0pQ+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D89CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916323372.6354.14440454371265068479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d559a7beeb3be0652e88d6c111157fa9b226b4f9e98424186ed0016611354e16
Date: Tue, 19 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779163233
