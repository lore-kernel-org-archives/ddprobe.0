Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361DC40DFCB
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775447134; cv=none; b=NF/rSV/Mwa1E44dTag5hEIjFqHptBvpWNXQ5OQD4WY5MwSBrW88ruMTMKJY9iVadw6uK6ur8m96z43gNCe6QWmG3NOsTab/hSMI16lHikyG87+eK93Ne37dQ0gnQAl0LDtf5wcm7NCr/1ImyMJy7dCAqILBlywe4p9HkPmuYUZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775447134; c=relaxed/simple;
	bh=Rsc7uDLxEMsfmuIoL8NtLc0XMwxK307QH9akoImjqlM=;
	h=To:Subject:From:Message-Id:Date; b=qxbDExDUsy75ykuoZ3IRsGmR8+x+M6/xBVOP6PwA2xFjabByrdzfSFYk1ekSb0uVYTAFTUJ3Ow0Qk1AdnvY0ZWvMwjse4WmxZqzfD/lLiqe54t5xFU36GNCfW0l/+qIoWkGuEldQ5s90SNs/OBD0aWIl5rynBktsxR9z8i47ElI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaW/mhgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaW/mhgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC015C19421
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775447133;
	bh=Rsc7uDLxEMsfmuIoL8NtLc0XMwxK307QH9akoImjqlM=;
	h=To:Subject:From:Date:From;
	b=iaW/mhgGoIDX9pYy/O2qRBnY3ynxSL2Ky/ze0xpKdohsYm1KSK0KXveoHyY0EnPcL
	 JRJ5ohktP5iE+pDBF1+RiBbgXtgATmwR9rORsAd+Q0UXE0jHByfyPfrvWJlgpLJoku
	 YN74iU6ryjw5HNZr81pLyl3STNBbk/uvad+b8r9dKUIgrjXwz9Pd7b6NLsFalSQrt7
	 EyePT77GHb+IAioRpaQUzi1hMM529x0R5EJODn/SEP4N6Gq55owHLWXzvqBLs9IQo3
	 S4rJvaSZ81alLIFNLjMNyRSDd4t2YfuJmyQDY1s8M77cvwYp7q+c/Y9KAfrttDZ5pF
	 R2iV1HnqRidWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F3E9D833
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544713368.22977.15367334523605332055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec1ae548c405f152e51d7f04393edcea8377a7a1ef3e21fca1b2b654209fd8b
Date: Mon, 06 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775447133
