Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD473E47B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737875154; cv=none; b=g2vkhFh4OITvOaB1WNOUcy5F4IuWDurBRebBcv8AK/hSOZ24mZOLiwYOEoj6TvMkSy9f4a0mQmXBvnb5IgS4vgWOduHK1w0mOizoWvJ/sl/HFNJvDU53c1nFuaac842Zt3cVlC2rzSFUGLAEzBYpRsbvgh7+gBad94tPFqLMO/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737875154; c=relaxed/simple;
	bh=SAwXGgKowReZDRAnqzm0TOWAJR+nOj5HyBReGSNM9EQ=;
	h=To:Subject:From:Message-Id:Date; b=gdDc/3h2sb4PCXEFoZ4FpOjgjGRIEtkj/PCq7nk9G+dia+Is2sqs0QXar4UlU9NMRAjG8OWD2lYtKLWkTDCkOQrLuIlMBRIfl9Oh3gg03qi3S6cM++MAsQg3QrkONk2odUElDHHfHvLQVce/qGXBV2mXyKaMm740Tam1y/4LUDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXMgjpZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXMgjpZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51CEC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737875153;
	bh=SAwXGgKowReZDRAnqzm0TOWAJR+nOj5HyBReGSNM9EQ=;
	h=To:Subject:From:Date:From;
	b=BXMgjpZuZYYtb1j/Fdr/IdrBHs0buxGa2zi4VLkOJnRcISuLtEGZ7SLiPoNIXs0wE
	 na9P45IEud32UgI4kQgmOweLuQ7AFVrwiiYesmujZMVaDMnJukS2ksC096tLTDgjjy
	 PWvJVXJeoXlCTDkxtRcvPqHlq/0ruV3ZLrFC7hJJk8hgHIsUn+frv2igqreUx/9Ohj
	 XUZbxtD0UwnI/OW6efKokbJ/1nI1vkUVOQxENcil9yoF/rOI+H3MRc+RARHE6uyA/+
	 g+BogyixSlrHnfO2SwQ2PxQsW6HlVsib/bYQ5Qpsv/+x9TX3E2AAbTzrHa7Y2aCGy2
	 5zRBc81ctYQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95280C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787515360.16545.3184409894757629554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b21f2115b768135c6cddd56d7a4adb014357f65445290f2879e9b867b8840c
Date: Sun, 26 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737875153
