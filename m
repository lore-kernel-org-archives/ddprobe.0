Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081917263B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772676294; cv=none; b=q1IwbrTlQjwgD853frbqyrz+h0aLVbl1248Wn+orG8UsAKQiDiIZHzv3Feae2aMDIk0/A94KpcmSUJ2ksa4PVlB4WIr/IRKpVp3saveByG1QlYyg2PgTLD3hVS8Uj4BfJ64ovVS2DNR7guoPTJ0Z7iDp1B2rH0WwAudwWmIA3BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772676294; c=relaxed/simple;
	bh=YsmYQ+OQB+9OtSLF+Y2JLK/5Dkd2YrPiVptFi9NCM2w=;
	h=To:Subject:From:Message-Id:Date; b=nD+ISv16FhQMR9XQ071xLpa/W32F6AlbR9wOVqzlW5IyQduZUPv3TlDATbB3Qa3aqAT4w/MiEEnf7K1hj+tEoNKdtHVQjRuNC6bpUJlFkjxi75GmzA8agha6tNXPzl9yDGEtajHNlRhSzFzzzNGEfbXdXp8ddF82yxSgshj1je4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOeYDWYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOeYDWYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772676293;
	bh=YsmYQ+OQB+9OtSLF+Y2JLK/5Dkd2YrPiVptFi9NCM2w=;
	h=To:Subject:From:Date:From;
	b=MOeYDWYq1EA+WK9qRpvfx+d0VGkpntevUYziuc/iTY9H9nUkAdQzFRos8+mzneDuf
	 59RlOSBdTw7gvlQn89VTlcMbAHSqKkoFHKt0CiYak67ZJwxidOOn08/N8P55kjJcMK
	 7iMmt1rFu6vONgSTTn4SczImY6drfZFq1/U1G4x2UIO5eQfaluw+UqhGyr9UwBbs/+
	 CyxxuBfSW+dBh9MFDuJwuWVrcXPcGYI0h+N+g6aqz3DzHBghmLz3ZBQnmhrEzooavp
	 5On7bc4KaXtj7HqJt1OGxh8FaJF3t2uXPY4IEgAS4nUYbx90dVUOJalsGcoHoviyGb
	 JT9NKf7JmD0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E46EFCE43
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267629360.21407.2893088824142896171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3594f530926852a93bd5e0ac4bdd013f26da4fd5192e8b9da9417c7ee4ccf4
Date: Thu, 05 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772676293
