Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125488488
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756445394; cv=none; b=ZBFTqULbW9u27yOGhOduL3Mg/y6ouyWj4q4srro6wQZaxyGjc4Ij/ZVeZ1/B9umPYS9VMjKLw9tOn0pdAhLcOzI9bj0MRi7127UR0ez2BBu5Ix9YeqhilB7BthERqKwv7eJcrvFTb1QPxv2RzqpgIzMWLGiVatTkWZZuTSZ/foI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756445394; c=relaxed/simple;
	bh=B/2YaSUpja4myfT9SqYP3yhCW0+Ypjdksn+fw/qPezI=;
	h=To:Subject:From:Message-Id:Date; b=odYALE3Z5xv6R5EYZvfcNmfqMmeF4QawWNHglTpBCxbG5Y0pfY7ORb8NZKMhafhOA7Md6y3/qC5zJRwAl12UtUmf+ffyykoE6DN949bvWq45sHd1lGLE7M6RbcJan7lXRVp4IwonWzXQTuRbgsHBd3ZfKLHTs1pTOAB30TZTO/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4eu1U83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4eu1U83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756445393;
	bh=B/2YaSUpja4myfT9SqYP3yhCW0+Ypjdksn+fw/qPezI=;
	h=To:Subject:From:Date:From;
	b=U4eu1U83ywbuFmbD3zWg+ptr25Ztn9zmomp3RQqX08nf2oLk+FjPgSamy0/SvkdNz
	 LXeMOK0tzQAROWXgkfh1ipdLzLMfh1CR2jIetV9zrsQJIyNxziZcdcN26lKyw9HV4l
	 yBYtUCo5UAVTamiv/idZb39G0KeWMbyV+qPPA667J1y5AKq4CHn+TQCYI6LGPABpOy
	 NaeMZNPHH5bnQYVXzA+NxwlPPXleQvGiWHqPiqKIP5In0YikVjTMH2y1loS5YAkmJX
	 CXTEIkyC8tHDNQvGV/xOiTXVKj91BcYTQ6F9HVJjbkucvkagcKngNBJM3LOrBDITpN
	 BKDQ1S3TGj9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C2C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644539358.15034.9078369290685179869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b563ee4d53645902646bbacfecc198d1b6fc15a09c4084f4626f6a1b8b2ed1
Date: Fri, 29 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756445393
