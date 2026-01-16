Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2ED34DCDF
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768545234; cv=none; b=eINmW4QQ0GZQn6HQegdiMrXC9xbbX/gQbSM5HPojHOzXyopuWUkHTpljkIXmEQncpaM74mKhdJiRhZWf6R+88MHz68cyZ4t8ZQeZUuW9o1teJwf07JALIhmalCPtXJpLIcYTnGSYp62SWPlscoh1Cx4R4E4UTldNIi4uNnpZPaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768545234; c=relaxed/simple;
	bh=Ka7EQ8aieWPTNgAvdH1lL9tz0xai8xBoB4ED1EevlUo=;
	h=To:Subject:From:Message-Id:Date; b=eLa5ifnFSyO4AxsXoz54jl1Z/f3N0ILt2mBJo7AzJTtHDJaj0s5P7vz6hoUaf6OJKOQX3Cf7q4dKPWGh7QAi4ETkxsUJLLdRmp0YlmsJzpGHyAr8sHGyGL64zMCM1oTWH5oIyp+xuX1c/d+9bS5c0NjC6/Z/6CXp63C85+itoEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbQn9NjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbQn9NjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768545233;
	bh=Ka7EQ8aieWPTNgAvdH1lL9tz0xai8xBoB4ED1EevlUo=;
	h=To:Subject:From:Date:From;
	b=nbQn9NjY9NyULrCCbZ5zftCVvJuuBBAOpyh9NGiVaKZrTtPBPLr/2OOJYbFWdAvab
	 1+PIHmvrv5T65wYcK7+vNhhAUKRTrCi9826HNnS7LtKa61Egp1HirQrl4SoisbXIBn
	 GoKwVM33iMLfyBWfX+/cyLHbpt4aQSGUO9OJVVuFgd+Q3ELXrcQY8KbXO4cY8e5JCU
	 FQ2N4ZLgOfX6TC3Cua0sp6u1Q/Rot62MF9sS6DB/e9gLfVJ6yK5qZ5E1gM22n2L+gb
	 vNMZHvexoQkoM2/SG3kdTLz/5DETZdFZq1PUAkbQv8y+HWaLXbf6Re1y1HiQz2cTp2
	 N28KoOG8XZxsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92236D4A604
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854523358.2260.2175281160503232597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3376467664478b94423bf04d1b8a28de3d9456b2377cb6d844730ef81b97b91c
Date: Fri, 16 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768545233
