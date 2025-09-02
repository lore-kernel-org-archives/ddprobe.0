Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F5613A244
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756781394; cv=none; b=LaP+pDMrn1YGnyW/Tv/304kZoPKJYC+8sX56NUW5+ABwpewWJkvZi8HOU5Ekan9TedQ/3WhaAWjonkI6uTmoQq82pwA6L2QWntnQLiRTAMEm7LdH81EjcxJkFjfI+NpCp203Jsrl65y6tpb9B2XtuitX7+99vLv8LEd6/ktjzoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756781394; c=relaxed/simple;
	bh=MDwM9rrB9WtAvJHoZoEpQPgFYcHJQcQ1RCmbm8NMr6Y=;
	h=To:Subject:From:Message-Id:Date; b=rj5fXuTcvipETMIXKrvu8oPwEfZp8vIcSJUyBGxHCC1WagIpFm2HWaHSF8vg3mUewkyGF67q33I0J7xaCE7jUQI3WeUUydfTREDtJFDLT9CAPhOEsYCOr9wwWcCSNghH2UXXw0SiFNhxrkwF6DbZObMDhvu+XIHPFBiB5Dm8NAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH16d8bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH16d8bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756781393;
	bh=MDwM9rrB9WtAvJHoZoEpQPgFYcHJQcQ1RCmbm8NMr6Y=;
	h=To:Subject:From:Date:From;
	b=eH16d8bjuBktXoOoY6+FWjTrvO62zFYZ0syH58ra8hcI9YP9F2VO/2khhKbjXTcOF
	 V5tuEMcLbz3PWR6IK4LevC/OLGb7pCrv8Xld4InuvBBQXtdV2dlZCXyC/4Kep62C6S
	 3fU0iL6eZy6fn7XCiONRIv7DniBcQuz8/NC+DkUccE6ZG7OdnKAO6G0x6HNN6gPP7R
	 w7sHOGN2W28qjXmjbYobPFyC3YHFm6tHsNS3WfyHvqqAlK10cg8FwjoNbFfbfju0Ma
	 //HAWftiF3WwOjV7gPzbqK0rZFSiyzPOcArk7xmBzC43yOIVYJOBbG/9Vdoze5gPp6
	 h5sRlJXp9CnbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E840CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678139357.23428.5867475466194739071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f340711bea381ae3df40c0c448d21b984593fb7b4a65e82691f1997bdd5db284
Date: Tue, 02 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756781393
