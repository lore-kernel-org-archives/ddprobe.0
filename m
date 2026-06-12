Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353262BE051
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781296594; cv=none; b=pBLu50IspjH30igRqjR/m2n96QZt4rprxvPfGFwt41E1oGCmz9O44TvosYNW/ZYj7sS3izWNgxQzmveN7bwkSEgRym3po3e8LV2IoZotKc/x9mNkJKJU85UGpgAifmUhBctjY/PMuE4I8jiJnxRHHD0Z8zZvt8g6SYh4dkhxXlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781296594; c=relaxed/simple;
	bh=CEpPv/oIr64UwEWOncOoEa1FQna9Z78PDjcrMUmiACM=;
	h=To:Subject:From:Message-Id:Date; b=dc1WHOhncrzadUCYNb9JGy/Ohd0g10FefxlrQB6pltMhB5PcB4dbrOie6pY1uwqs3VZJluCKHiQfxx/imdCrGrD7MID8hGkjI8QXrbyfnkVv4lRi6hXOU39thvmphLdjFjS5kYR4kOxMa2T2HuUJ7lIZUTM+dc2Tu+I/qjeLasM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7YOeWDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7YOeWDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43C5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781296593;
	bh=CEpPv/oIr64UwEWOncOoEa1FQna9Z78PDjcrMUmiACM=;
	h=To:Subject:From:Date:From;
	b=n7YOeWDBBK6kMynZsiOjUQaUU0LwJmyH4QLU47xhI1dcek2ahOcB/io+wXw7YnYA2
	 FDpUCF2YN8gcZE1AsY4SrG2oAEG/BC3+oZUxQwlvOO7Abl3BI70UkiwB8hnsyWFPs4
	 0Wz3og91PmAw9Wp3uKXFDnPiavinD1KOriKslzffuJcY8tj/tbNMGKv+FUGoYYPJcs
	 VpDP4nkyj/IEUqZOQ8KeUzUWSnV/YraaDqapHPC+lO9b9UgU7yGi6ht9PMUqlwKXkE
	 Aliu8KNamJimDmxsprAIdUaMiY3WRn/0BHdhR+dHWLG5xTu/uRGpU7Yt9CvfubtpBD
	 3u5HgN+o5mUzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F0DCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129659368.1380.6939032063235165565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c391608cbd6881b4a04e9a1afa5a26603d1775798600a1d2a5fe3ae22f8728f
Date: Fri, 12 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781296593
