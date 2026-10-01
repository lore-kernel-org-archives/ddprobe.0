Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58742375F95
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790826634; cv=none; b=Mwy9eKXaj8s8Rd8+yU/rg2sc/Um4IAB5/iCKrcjvJuFG7f+rx1+e88puBwc5Inf9KIbL16MqtuWav8TW5IcUUNyY2weHGWq5f+rhYjg37FT7xWPXjqE8VmTt/qDCnjDp7QdNYh0CvjZrBcAPdiQJ8r0eaACFY1cxrPWq1KRrtus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790826634; c=relaxed/simple;
	bh=0AE3zmocR2ReGE40gQmjEepPzNBGxJxnNE0ej9CpWWo=;
	h=To:Subject:From:Message-Id:Date; b=fEMcMzObnzWrNj0/Fk2qm3VABNe4eEH1177vo7BBjtQbkLmZgPJ2Lt0lQ+MKCkudBjHQT94ExjYOBGSJscjwlgWCRTMkPaQXwHXSqpNEy5eX45SllZdZvz6QR6yF6Bgtt8KiXweTzfXSxHAQr0Xxm/191GqubyT4oZF1BZhF16w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCQvBT3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCQvBT3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EA9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790826633;
	bh=0AE3zmocR2ReGE40gQmjEepPzNBGxJxnNE0ej9CpWWo=;
	h=To:Subject:From:Date:From;
	b=UCQvBT3IqMVj7dwZjjj2+wc/x2UgEiFoP8zCnQG5+pOfL48Y2rX/Al2vL3+/NXM52
	 eMINUYB6pwHjFM6XwtBumnqxwc1h8oZ47RgliqyCaev22xD4q5eCV7SDXOM7aEy9U6
	 g1RsTqjvmeQfHyTATc1QyaLWfkzg4mZpeWlcG1GCL8KxewJn9U0A90gPJb63dWCME8
	 xy8mP3tyvX6HkfO7P0HOx8vkTgn2Asyr0datjKqrXPEazDfPVtup7z9kJ55ar3QZt+
	 pW9EEG/xLLvNGYt1+EX7b4ivyvOGgcMAjCcat2KoKAYOOdSPbHK+vM76ENsLDG6VKz
	 30D0omVXi/n2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84CCA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082663368.22025.5469355520097608869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb6775e7bc19d1c88fba2dfa9e8179ad53d59306c9f846a2de46dbfbffb8fe1
Date: Thu, 01 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790826633
