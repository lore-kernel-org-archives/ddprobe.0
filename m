Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427CE14A85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720505783; cv=none; b=Fh5P6qAzmRQtU+RhWWRrAi6aAv7N0u6TnAAhC7wfpl/rTJclIflgCopSXp0mwyOlO2SipFi0PqAnDZTeusuQz5ifoY7eHBzl236/aIUeFlNGW4GVIY0ClUGsFrLeYNRnd8VNQlujrN/fubG6wNb6zURY9In4tm+MbV/8M4ALkqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720505783; c=relaxed/simple;
	bh=SO8+ZAT/bHxij8/G86+hClgGEmd8CrMoQjfKHJyaD1o=;
	h=To:Subject:From:Message-Id:Date; b=D21Q9IeCIOjj75B9jRSXineJ8tZ9+8hcLQx6yuBwC51gPkWc4RGhe6BcQAH/C2jyZRpTCnRQaDOFOtgJvDGOdTRI6iteRS00fQFDPAyQ84TlST+YnrJE8ULWPExuFizQJd/Hy18wILhEZZ0G5wAnPE0sJRNmSokWvFkwFlwffSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auOtl0Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auOtl0Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9FBC32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720505782;
	bh=SO8+ZAT/bHxij8/G86+hClgGEmd8CrMoQjfKHJyaD1o=;
	h=To:Subject:From:Date:From;
	b=auOtl0Y8S8ykoIoafliOXvJQUQkPzVkIQmC3FtZ1DoGfcOjPhQY0be+LSEDHuT2v4
	 bkKzu6ojcEDL0sH6bapM9BMF5f6SXVZEAfLuGbzfXoNeurprYaprap4xW3rjqjZBPL
	 O2v/lx/cv6QVbrQqcXy7j34FRmkpivTnrGHtwjbzbaOGJ/VBxQwwKCcxzGokIF4RKN
	 UqYddUptXdr27h2FVxA71JxYJ6GqP0KxEvxBlb0uD9wCbPo+ca8Yq+bXKXRqIMlXCD
	 LUu6WHVhRiHP9aVkNeoPmON1J9lsx+f81t0yZO99NJrxnu2+DeFzgReTFHZozzMOHT
	 tRozJs3W5a0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CFDC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050578281.19367.6089432614799385144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3320a23d5f238b616d5fc986652457a386f77bd69648917d32982c47be7d2a3
Date: Tue, 09 Jul 2024 06:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720505782
