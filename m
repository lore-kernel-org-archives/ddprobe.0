Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613BD1BED6D
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714513343; cv=none; b=WvnKvFqq629vCjkXo8q6SvjmCVcXlDFKO1CCJCezvkxKE1BrwvPQqkZiYogUFAz/M72pTZIlx/4Xho2B++VYgueNVWhVqpxFTh/+bJHRcONZcS8hLgPzbYdgHguZJETRWJyshhA/+0uzMTChS6+ikKNsMzl716alnXudhkJqAqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714513343; c=relaxed/simple;
	bh=BlqbL1X+FUtBYWXSmh7Ih8pfz63dbsvT0IsPM4IiM78=;
	h=To:Subject:From:Message-Id:Date; b=LzUIUFELC+GICzIQayw/vwTwci5rFHoFIzwk32LKYgSdOCToWntNUd6sAGDznlbxKQqFyRWU0EX06D2kGVncx2LgM+YsACNqyG63v2/A2a/MCr1rmJsQDq7Uw2wKOcxXu8Zx0ALDcW1Uf/n+m/+GWcdgoXTBxg2SXk2LIE1dGws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSDvo0eF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSDvo0eF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E064FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714513342;
	bh=BlqbL1X+FUtBYWXSmh7Ih8pfz63dbsvT0IsPM4IiM78=;
	h=To:Subject:From:Date:From;
	b=YSDvo0eFHTFnrTZ4Gvv+X3illJdr6GSyT0rUjSVBMUaS1RnMjxC+G+WADkXW4/DLA
	 VQhvQeqUW5DydosKxYR5fk6Ibbr8pSvqtEDq9re9Uw9NMqvW9N9+8s09//oQAAiDfg
	 uzbMMBhs5otj1jNK6/Z9mtAgP3B42TP0JRgkaa2puNr+oM9cSPB+R26pPQ8/FGN2cp
	 UhTepcNmzW257R3k7VNPbKFYzRbXvkvEGQPKoVBWJg9P6wcn5MBcbvQxdN7Zhx0ug1
	 VMcKthLyEKKgIxkBW/UCQYNKxL1d1c0N+IwL3KaI01nuXLOkzPDM3IuuOrpHSFoMus
	 IbcPxBzRfbL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC469C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451334282.12022.7776813631602670019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c6f690c7ddaf1809a3da633b05764fabbc737814d267f8b2a5509cb101b075
Date: Tue, 30 Apr 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714513342
