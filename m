Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273701DE4DC
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744764594; cv=none; b=GQUjko7d3Ydc2Hx5NwUMo73WZe7J5ImSU3Y8cTipzqkNNKElAMeuGpDEXgUNmnamofX4jb2jDHrDs3GcDQAQ6KN4vUbQ2nIxNI6AeiK969Oa8dZVpjbxiT9TJdwKj0uWdaiCo7/uzL5guq/+BXV3/Zp53tLJfApeaBkSbF2ZGbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744764594; c=relaxed/simple;
	bh=EfWmBX4DcVKyP7Nr1j0giujt3XWDeH8ttA7aC5IQcv8=;
	h=To:Subject:From:Message-Id:Date; b=FhhSB988x35VNuDsf86NXKnf2h/kjvYFXTQLIyEdykf0RQnFUj1Kj0wJtpv8QFL2iTjfm22yoK6kkxsHOIpAg6uzEdUKqnY8TsCXMLLWNvx5TBXPr8ygww4a38OV3riR+K4mbfM2bfHrRa/pPNhCgINZIeBMuqVuN00/RiFdXvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHVw4WVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHVw4WVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF05C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744764593;
	bh=EfWmBX4DcVKyP7Nr1j0giujt3XWDeH8ttA7aC5IQcv8=;
	h=To:Subject:From:Date:From;
	b=IHVw4WVNNnpV26vuvHxFhN/M2k04tvOtG4shEd9zjZFxgj7BLUFjWKVRnPwz+eNNf
	 ooj17/dFqjknivtVrEwnoVxZsbAwecNq1wLKfQBd/mf6nyGknTinrLiF01tQ3WTFcE
	 M64zoz1A5/jcHHYD7T51CchOycAOijHwO4Fb8edY+68ERqJQelkNS9xAJSI51jTFfU
	 dGSJjPdD8dUDMV7jiedPdGqk21lrKgDxIihEf/SS42ouG4AT1UOUbri/WKXndomVJj
	 BNi+U7NtUZaf3njaehZ56nK5VgJUN8B5+y/tglGX9ZvAmvi2UgEEzT0BJJgkT32F4x
	 rSs021yHHnkOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F808C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476459357.18923.10430385754292174192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963864cfa2589aa94cd80a8ad821a2679406e5534a3f83a73c5ddb741cd9d869
Date: Wed, 16 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744764593
