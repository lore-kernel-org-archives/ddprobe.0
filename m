Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B46A17A2F0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760927994; cv=none; b=gn15QZJ46oT0xl8q4O9QuhusmyaM/fgEJlvwga/lgxrfNbViylL3+026fcuyTNOCrr+G5NVcPtz4hpCewz568fHUmVNk0+UEqeKnQ0OyYNefOqBj5dmPORBhFv0RqqbaLg4kNPQSIKMsBeeVZuNALB6VLhgc/XNxeHAy2DkdWEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760927994; c=relaxed/simple;
	bh=oWadLEw9dXiBBZPiQmSMU8fHC7OfbKVt/D/vBkcxrio=;
	h=To:Subject:From:Message-Id:Date; b=IFG524+QjfhtvcwrPg0EHb27ZQGOssPXZt+FFxebFYY9sJZkFW+ivPyU+HHKW1UpM6y1pheLijflH9dsMGD52tvCsgu+k5mIcsn4FLPqIKOQ2LG/PMDDj/q5d6S3YIjrNS5bx5fhKu77W3wt6Y/CVE5OoxlL8QCTRW8k3Bqvw8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOFPMdg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOFPMdg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760927993;
	bh=oWadLEw9dXiBBZPiQmSMU8fHC7OfbKVt/D/vBkcxrio=;
	h=To:Subject:From:Date:From;
	b=UOFPMdg2iyh8Ghk96O2h6Se5mNu0NqI27FKojvGFKicgn46aYaWY8BsTv4JeKDJ9m
	 tJQ+Hheu7VL2SPMWj24HgXq8ZHKEktiMvu6jQ/Xv5LnE0L9gwIylFsfafo2x410E87
	 VgqScqaLzKEBprUyJeiK6XuA/Ha/JKMZJhgEV2C7SISOPkB5olcZy4V39/1wrbv9u5
	 8jarKaYjszLyV6zc5hRHAenKvucpHySI52l2boAReg5qcBJvJ8F085H6lrwGdQMuWR
	 OwsTpm1l6lGV2TAHXXHQNvC5qAOk9yHOHH0dAYjHSuacdF5oGlaljHpco9bxOfAfX8
	 8cj9PUuHUU03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C5CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092799357.2739.725149330927956072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b0deecf1af9b8348fba626306d053e7be80e0b8f21754f0a68ee74a2ac4b4b
Date: Mon, 20 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760927993
