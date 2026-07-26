Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5FF3D8125
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785088234; cv=none; b=cDs2pEEg6h10VJx6BrGEvlaMA4cwcqPcBVtOrMGvyQBwRcER1bTWofnXxdPVQ/Juf1DgGhGSZTmrOFsKztt8w96ZDmWuA2bpfd/4rk05p8y3T1pobfAsO1fcRt4IeQbEFp1cwQ6GxchSjWElqrEfjZSFKxLM3+gFfMKAFaI9/jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785088234; c=relaxed/simple;
	bh=7+uDgEMvuadtFWWPA16UIYYNK9nhyJex5o+gMdmNh/A=;
	h=To:Subject:From:Message-Id:Date; b=N5jRZLK/T9MGSUeqvsYBtuczk3DZQIrhbW0oPlffvHYyTJx0IA5CvDIGedE5wQsq/wCpJh5ujSAF497r3+5d6Z6Qi56k8c6ECweNzvh2MXFKkE81DltFE/Fog40NsVObb0sjgEu0JEvnsIMZ+q2Dt3SCeS5PNUumK5kJQfjpFo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joB6Jq1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joB6Jq1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA68BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785088233;
	bh=7+uDgEMvuadtFWWPA16UIYYNK9nhyJex5o+gMdmNh/A=;
	h=To:Subject:From:Date:From;
	b=joB6Jq1SVQxuW2z31RVABB7+PNMBc4wNQoe8xyj9+wxOmy0dBHaI7HJX7bOn9SwQ9
	 N7YcBO8r6tYpZGbJnF6FqIp5uvTi+qG8yefz/WdtvWmFKYKrAyuc3rE/QCauDKxdNn
	 Q+DyFwv4hZozpf/O0bjEahbqWS3zA59Zg+tB4G5S36XHFxE8U1WjPPopJG2PlPhYfS
	 WVmjllaIhzb1UULTAkOUlfoTILCp/Kix4xE9uVY0X50NWvSI4ZCIddfg2Fx2OewkMq
	 70Uz71JuhdQhHTmE9vRm1obcvkHgHN3qs3RiM8t/54EdChCYTp5iba8C27T09Sj0pP
	 wDJ+1DSeoaoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8493C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508823368.14687.4540766848731322979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d9424321f088c9ea8176c9ab5b1114deb517dc4a959ecbae58b36f0cd6e67e
Date: Sun, 26 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785088233
