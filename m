Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDE637FF58
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776970054; cv=none; b=EZ+BfVcHYAozc5BQZPDOeR3wWkWpqc2kzpyndu6+3S4gtKEA9x09X8v0cKprmyI47F5exwjGqbozygXG+uDxHuKevGkYdYkHj9Eyo/EaHToOiKzVBH1HPa63uPCWVKxxSZcNhfhneJGDfowTtawETHni88dfeuoH3kA7eWucnXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776970054; c=relaxed/simple;
	bh=91z5zxoBwqiPCMQvat9S+iJHIYF2Db6J5R0nkVOjv1g=;
	h=To:Subject:From:Message-Id:Date; b=QbHy2KbPKsfCjxT/8F51oc0JT8va7KyZ7oPLa5rihgylXZG5uwOZsQRpoUfm/9/V6u52BvB6n4FF0f4URi+RAU875mFeqapjEfKpykJlkKPgQCogseEd4R4oATqUiHwg1HGaX51faiEOIsrij0pV+l/FcmYPfXjG8evjj+qZI/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/3hYi8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/3hYi8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B904CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776970053;
	bh=91z5zxoBwqiPCMQvat9S+iJHIYF2Db6J5R0nkVOjv1g=;
	h=To:Subject:From:Date:From;
	b=m/3hYi8zab27bekjZfYVKqL46M8mj5P02qEdpF6wgtiE4hnxV6GYRStFDZ5etB9cT
	 NhvV6yjXHXNRm33mbr/yKlEEFUpek+CgzEqNo2JjnpRzRduac44SwlCZXAjeZ6/2kv
	 eBAnk+1Z4VTRmpN5UCNj82Pp5kNDHpqdsE8UseLkR5NMq2Jmw+i0Zri+A14rsRglXm
	 WDleflgfrCbisue6cvORPs6HkVhFnm5xpFSjGMA/Fof/dLe+HYmpGLKIQRNSMPsFHj
	 vJE5OO+EVMsYsnDv5cnvJ0dSnWmT5RiV0RJRylVYSy2ed+9Ln6juqj/9/MC34wAxvp
	 RqBx0V3FTWYxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F0FDEE43
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697005368.18652.5603422232004176186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce02493328ad40f5688b0c83f193eda6124ac3f9fbb27e34458782f3493d0e34
Date: Thu, 23 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776970053
