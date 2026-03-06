Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010B22C0F91
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772766894; cv=none; b=j3rIwwZcULi3+i8gNDzWAp1B/zFsQ77yF/e0CGslCR2177uXbeDph9HBtgO9FFFSSrqD0qX+arCe9DI+MltS8+0hzgS5ZF1akV0ilfd5bRwyUgIK/IjzmlQlsELwFHucku4h4SApOuueIy6UebyCfqWfivRMn8QMqscWs0l2NNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772766894; c=relaxed/simple;
	bh=aRIqnwK0uab1XRqjRql2a7ChBEs3R3h3c5bSTRhc6U8=;
	h=To:Subject:From:Message-Id:Date; b=E5rR1wRLY3eaViGT9J3K8kE5iogkgvuEC3dXPl6poV9tbP1ecdxrhLa0TImQWmPlsL4Ku/JPmRyq30VTaPC2qdZqybtD8q7UAdhzeXLFlV5LT7wkq8RE8lxnNpFfLuD0xqYrwfKQbRD2Ja+jSmD8s/mognbCD9TFYTeZVXN5pN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PODLSqeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PODLSqeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772766893;
	bh=aRIqnwK0uab1XRqjRql2a7ChBEs3R3h3c5bSTRhc6U8=;
	h=To:Subject:From:Date:From;
	b=PODLSqeMkOiEy0sfg7pjxbqPrpWZgBToJ7EVT7rnI4rbkLpLY50fVFQhSVedrkzbJ
	 P775MkuAa+kTpwvUAjBhEp1sY9bG6lIL+gdfpekKfHGuuXvA0DDDqMwQfiugiLnh9y
	 xVb1Y+jqc/9hLTTN4OnfVe1SlrOT4VpT7gXFk19aIVrUsZ4W3fxjWFH7Ro4I1mCPpl
	 wFPeMI+QlJWx3Y2gLQ4VXUs9T87Bn/6nv/HoTGpmxe8TLuoANJZs9GQWufOGc536pj
	 renBarVev1KOCnkWInTwLuXqrNhHb/eaFv8TkeEmWQqpDUZ1mBe0RHUfmF7F/9UfS4
	 MgRzpM2d3315w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93068F513ED
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276689358.5050.6437623151011498976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fa0c7bdf0b423f964e0e97df0f4826356e5642c69f987afe155ee9a94feabe
Date: Fri, 06 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772766893
