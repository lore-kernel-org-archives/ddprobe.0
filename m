Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49236AB56
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776766656; cv=none; b=sxGdimoZqrwk0vbIKcDZBqKKQXpd/5BsJ55mo5RKuH+KOssc4nfiDP0lQlLwUlc6H4XHVp1nbOQAL7aArYCgo4jFpIlJ6SRAormVcj+lGSS9cRq3OTKpeDEUwoNB29i/ZN0PG/fhh5TmpyEc3uyo+7xlllC6REK4OPAklaAt8SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776766656; c=relaxed/simple;
	bh=qGvm52lgPswU3zWLw4IPYXV/2A/OosQ3Vm7+hAWPf9M=;
	h=To:Subject:From:Message-Id:Date; b=If/j6vyYfZrVQpAY5M57m+KNLMAwaM6es3G7HR3DOyrhm8irKCxGo+TKPGqDY+20WV1yxY22fFZiemwETvM2SCbTGaDycMs8kSkrb86dSVeqLYaBq6zMQirEQMjJeL3HCDpia+AJuvBaNtBR0L785iwgpsrlfLN8LjZ4pcRKGWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzssG/3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzssG/3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4F2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776766655;
	bh=qGvm52lgPswU3zWLw4IPYXV/2A/OosQ3Vm7+hAWPf9M=;
	h=To:Subject:From:Date:From;
	b=kzssG/3W3SGeraRbQvwWCuZhjkoKQeNvQs6rHu+/vU70BIPAsNmDIzXJPl46RoeGg
	 oM32mPhaik2fVNzQmeDOXfb0BX3J8KLn1/1pg8VEUf+hemEaMteBpbKKJXPVs1PlAt
	 0UTabQfkXSPkUO9xZYk+RRTOUbOEaJpo61jKJqBFJkAVg1hAxVn0CTPYKONI3foy7q
	 MjcrrTUwaeq8QV/dD8l644Te8Q7tOlmOLvxJTMu7hHUytHelaRuSTL4lSLZVnd3cRo
	 jJWnrZZqpVMBouGHn2xYttiCxTPUbkJwVSWbKb3WPcTv5BW5INpJv7vZ56xqV/wJUQ
	 oLa3HSX0RooBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF0F89242
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676665368.30343.13187756781660493006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1f856748d8afc5d94f1ed640b229c704a3c8769e47270a2e04324c18b414cb
Date: Tue, 21 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776766653
