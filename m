Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF4F255F25
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746194394; cv=none; b=E+0GVLXKDihcrcgZc7UQu0D1aVUXJQywOz6MEKevq3PsaXHlrxIq5GsgGpEr0k+Ecp1xJNWxdFnDdCeeWCvCk32goKTuhT/SQelHluLjG92+4jNMoAcRv8U7oZ/48mWbUVs9lchQeC3UN56EIXdePx6GI8siVbWcns0I4ayNIWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746194394; c=relaxed/simple;
	bh=CX31unx3nA6SrLHvZoCFtutX+xD9TVtOrQ6DuV2Ewig=;
	h=To:Subject:From:Message-Id:Date; b=rygI9+VcGJl+dXgOBsZECxSkMGu3dMA20YjfqhFbmWFu45sSKiYpYgop1GJq45rVjgJ3yUc+cSpy3sJc9welSRJTEtZao8aM4gmzEfabm7UhkltOS78oImK5In6EX+CxHjsK/V5xUGBXujqydwA6GGS+6KFKR/OqM8I5fGqzRuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV87n8eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV87n8eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2660C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746194393;
	bh=CX31unx3nA6SrLHvZoCFtutX+xD9TVtOrQ6DuV2Ewig=;
	h=To:Subject:From:Date:From;
	b=TV87n8eXld+GfEn1mrhl01hOtlW6hH1/k251hzckHLcEY1qQqfjZHtnTfvwqWP+yt
	 OGfYJ/AkumE2N2kvKIvfOp0dr2inFdRDzCMxCVGFVbj6cuoUTQ8xbmbcviPRLmrehO
	 /rLBqpWvvVR8q6pu30jPhWtjwK7T1rpPCJd39YVkhs9cY5jr/plCktm+Ivi8ABg82d
	 c/XFk550dXAcZriday79VmrsH/EKlBqV0X0b5ckU1FDWjze9OTCrRFnndWZaieI1lh
	 KFrcRkQmlnwhfnWFyjEgLKKLReOaIqBuLWFNU/UDhJvzf1QzfI70HdYb7nE0Mc4g0f
	 mOew21ZdKN+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1CC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619439357.10100.16204899320102123898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f4d6b960edba18e6a74053322edef8277b069039b21d26ddd59129c55ab86d
Date: Fri, 02 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746194393
