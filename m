Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344F32B134
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780829074; cv=none; b=s4y8Y+L40rOXbeFviovipzdhcj6PtrCl0cOl7IIBhaKyXhcycqDJnqYcWfBVW0ExZ54/iH32O+MXJUzlWZssszoDSkf1W6kPCv9RayQWJxXesOzSuGhB99VR+ot4pQAAqyQY/9RNrw7wNIQaNNTBF0Js3jJ49sxlnXlcbAw6UOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780829074; c=relaxed/simple;
	bh=8u4eBL9In4vnQ0wLvOs9ZHb2iHK8xZcyO+474IZztRE=;
	h=To:Subject:From:Message-Id:Date; b=MZcDcOyhVX15KIjEeJV89xGPdZtIIp3/g5iNUXvhzM7LMG0eV5xZbpfqsBrLBfazHbcT36gVDekEYRRB6zNwpgOuvx13OQutgsQav7sD/Ybqb1TVkxZFTZEkhLwrMn/GbeZfWWhY29H7/uSqT7Kj8Ah2yttxJCpAjSrQdwNUfJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Chw2KRWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Chw2KRWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E6BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780829073;
	bh=8u4eBL9In4vnQ0wLvOs9ZHb2iHK8xZcyO+474IZztRE=;
	h=To:Subject:From:Date:From;
	b=Chw2KRWYNedwRqVLZWRhc5LpBN4JdNWU0jT2ImtIT9Dgaq+4IOwufL15VOXrjnSKl
	 7BbOy1v0Dsnnwn0+FuBxZpJNtapwTlxGNrhi1e9t1Qou0J5nxxykp8BtP6HTOxkCId
	 jdrUxbCNg4umeSoZ8yk98XrA/OAoE8UxPpSVKxceLW9eLfj2z2cNh56rJRRJI/L0Tj
	 ax/UzqxNLCnpK+NfiLwo/vTM00tpBD7kGWvHxAChPm3T4vQV8zq5OmzlC3C0HK2Mjo
	 8llsyxTx8df2bEkqN5PqDYjpJxRMbHD5+LT2WJBE+L037bCiVHmyOgVNFYNbpmBKGs
	 kfntbb71T5dUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA8CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082907369.9907.9609256278163176872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016ee90abf8daf091902472c32ce208fd0d5a845d1c0370c74a71cbf78769d41
Date: Sun, 07 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780829073
