Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFDF215F6B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752642594; cv=none; b=rj6LuEhIB+h2W1FhWJ2iU7HJWEky9bLF+Z7hDENq+N5Kf7Q29hLO5DyZu3zPlMt/HYYZm7oEIEpTZZGbYYElV5mtsQdkH2ix90NYzLgAjbLy0S/stT/4+ijCnIhijK8dGD80tH7ICVHjn6e6pIViz8W6xJFyatZDGrM0sRI2Ciw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752642594; c=relaxed/simple;
	bh=Met1DDP50aKyEk10aJEYcheXbB3p1spII4AJeMGVKSY=;
	h=To:Subject:From:Message-Id:Date; b=i+PkMRZwM2CyhmOpb7bU1CAaKJU860VHQWxKybfDIBeQLM97MkqSMYZHus6vswGtXHM6qXeQgrCnbjA57HlCGNIJ+4di3FQQQBi5uUgZN6DXIibpWCufof3y/atlvxNf9tEPk8msex7nG/FOyJeUjeNZMBs5o0g78RViSRVrblg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMPH18ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMPH18ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752642593;
	bh=Met1DDP50aKyEk10aJEYcheXbB3p1spII4AJeMGVKSY=;
	h=To:Subject:From:Date:From;
	b=FMPH18ec/u+F60N2e/uVGrQhwX0f9VMLtIe1RUnJZ3GHsc1PH5UcZ8MObCQbMxynm
	 n8YJFmsoVLCBszXQ5OFx1ki3etYh/dm8AZcFPYd9hcmQgau+hVf/EQhcjnJd9Ge1xz
	 Hv/hQsW6vjF6H0jvnbhFcX+c/CBNwJTK8VPDPjU8PCDt4YhAa+oHHhQSkVjWIyi2fh
	 N3lSSOqZSeJQx3xPBSd0LnfzMBQ9FLYqd3S/3UN7jaKB1cbr8zId0z/AbwJKBdH6oL
	 J5YRJCgPPqhr4Hd/jpSDtqQYnyIdMxtxuHtojTxzGJ+8Znq6IZpd09BFIzVVWADg1W
	 Ap+sOSg73/RFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955AEC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264259358.10733.12694587047805908702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf311e880f69ae58247179b94f51c0ed9d7a6d9547430d8dbdab7e0507fbe0a
Date: Wed, 16 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752642593
