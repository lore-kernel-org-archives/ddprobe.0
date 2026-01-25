Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59C2741B6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769375634; cv=none; b=fYmoIKse6MSLyY0soQewtFylZsO+lzsho8iVzl8KDsHiFt1fI/CtN0mKHRpW6Mbijv5EHiy7IPkcdi7PpAlise7y9Eg1vELIF0LypHR0C60bRyfdaM0ZRielgufg3p95aGBtzlG6DOdjwLI+KdxvaQTQSV9wj7mG4fHBEoQN/as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769375634; c=relaxed/simple;
	bh=BJKEE5jEMgS94cMKG23IsG6m4gpybI6uE3GzPxq2XCA=;
	h=To:Subject:From:Message-Id:Date; b=vDFwzKevn8jl04lIOYPRt12Hx82tU59XB2wMasKm59tGOq0EqlJ48EsW16IHtHvFyb8K551ya9rAmymifUD+DDAw7uPHUAEwzqYLmo7+Na9Yf/In0nXRXV4zar6Lek5SDjsCSMW0PSzj0rcN3PZewtns5Ue6LO28AlL9lVcMDTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6KTl+vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6KTl+vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA1EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769375633;
	bh=BJKEE5jEMgS94cMKG23IsG6m4gpybI6uE3GzPxq2XCA=;
	h=To:Subject:From:Date:From;
	b=N6KTl+vz6xnqzlieOrFjwKIxWIO4Limmvrml4K5GtXICmq2OrOFIV7JzPSICqm3zb
	 lZc9oPWXTm4c+zAoC65m9IvdQ3xd3+BU2rDy3wo/F9ErfA9GXtQZsezH8lMeYmKwjg
	 9JI8iSxUXAf7t+qs5GFqiJKF7jh/kzp2VT5rUj9FPRBQVhDiuEtURwJpmTDI7UQZzQ
	 0mmDn3FYlEoX+NSXAJSZOYny3KUrS0lvQH9Awmff7FbNKNS+KvuZ6xxxPFRHl+Ctq6
	 /sCvh6IRsnLPBRZicBy5Rq+os4Pu5f+aLMa8rGVIK5/oS5uXGUm9enuN2MbYqM/wh2
	 Avmu5SEy6VwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9744DE63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937563358.11114.10777129436373294585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7353acc9f91f3d5b7b3afe77d686ba8b9d896889b207211df501b9bd97796162
Date: Sun, 25 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769375633
