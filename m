Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350FE8BE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922354; cv=none; b=HgiZ3L6/64PSR4yWcyX/Kjc2jAHyaSdooB7cdiJeSFkmTroHyYAoKWc0YLfhjcub2avVTTrDJp+DxaEkYr5q1v4mfHtHsaDxpOd4mejT+GSBmJCiMc0whilnAdyRRIbp/JEF2gmVO5LJw7D95Hn9zUQpIRPmXdHKonRtGT5VEfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922354; c=relaxed/simple;
	bh=gZvMy0QV+2HDeOJHC+wGJC3yIz5ivxnz/qse0w2Y03Y=;
	h=To:Subject:From:Message-Id:Date; b=p/hrDlUdS0Tj2yuxyiy7/s1xHPPjVQxEWOWBraNEwWzk2OFsmpUjtEy48vBveXZp5hYjRFAwkUB4kGnvquiWvvEW2T1WA7Qyjv7M/cfCjgF6i/JRwimZNkC3PCV4qnHTWMs1oTdYNHynnbe7QDCCKDuVmDg3II3v1z8EQ/qojks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQhdViTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQhdViTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1E7C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736922353;
	bh=gZvMy0QV+2HDeOJHC+wGJC3yIz5ivxnz/qse0w2Y03Y=;
	h=To:Subject:From:Date:From;
	b=eQhdViTMhzWqKV+NUNn271z1MTEV6hS6Euwq7UoWYAwmGvrkg2/RY2vV84zDVXrFq
	 U/POjZJuEDjLvGbq+Ozs+DFPv3bhpVG5yeNI6HsWt2nA6Xu+WkLNfU/FtnyvxgMHza
	 Pz4QjeMmRdqqoDH3kbazhibzXdw13NyX1Q7nORN0Fou2gsGUrAF8yomY+nI0NOZR7n
	 +Tk7yjyi3DW4acfIyXce15GZw61HDXsXicY0uuQGGwNIVnFG/WIOouwv/5I80rkuMU
	 B9jsZTUkSQbbIUmx/nRaPT7lYqIN4H/iuEhqkYEgSnE386HTDvYmkPgWgfDSZZzCHT
	 n19rGGSGuZfXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9987EC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692235361.21820.236493854398665532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8d7d5d3a28c63d7fc88aff3a83b72192e5efa24609874d8587d8bb5b87b625
Date: Wed, 15 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736922353
