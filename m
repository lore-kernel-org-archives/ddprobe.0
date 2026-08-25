Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1FA3242BD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787673634; cv=none; b=glWsPBbX+M/6ua9/5m0Y0i4KYJbEM8DzhSfE4H4mnP4lWu+R/SaC9XE0Ko86C75hahN/7CQy8hxGFKswLN43oaCrXLv0NsdESX+Uiq1rzbnrGD/aiLKmZP/sb4xuaeYZ8/OpgS5Hn/ps/NXz4v4Zn6Gn6Aqp6PgIaZHib9dKFFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787673634; c=relaxed/simple;
	bh=7d+QIi/vK2/DjPHZKH58w10+q/0C39jt2/gZtw2sjTI=;
	h=To:Subject:From:Message-Id:Date; b=nbYXB8C03FLJYE5f1xZKBw5igFA/rwYxB+YbNpvbOexkjudbxWfPRkhW9ujKmwUTZRtps1WlfC4owT61hmOszh5JZgaH6BfiaXCwmlxLT/i8ngcXl+R6rbDB9ReELmivySUVbJDLFBFhOyBgtdf9cDgxmgqdlSTD8zvPRp6jV4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3t+sNhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3t+sNhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D055FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787673633;
	bh=7d+QIi/vK2/DjPHZKH58w10+q/0C39jt2/gZtw2sjTI=;
	h=To:Subject:From:Date:From;
	b=U3t+sNhl/U/7KFlKwk9gw53R47145Yc2Lxu+oMj/n4Icx3ZYTN46CYA29Y+kAEhne
	 7dugwuJFRbw2X+MdB/VIMveZ7NOSZgWCCE/eV0EmqN4gIvVR2p9cDtOXsoNzWjj8qI
	 JYvXjMFMgEsMfQ1/SenTY2jXEPynZsHyNypzNKgcLWGxG7LFIrkE+TTehKlHy518tb
	 r73fk2Rm5G/tp6wCzQo4HYR8zyjmphO0g6+uI3rgHKz+B6uRZ7pVn2rGqgRiZmD3mq
	 6511OZxBisEbD/l5UV82gkjJvwnqkZbMmHdf5UGPqHW55+DZUBJuMbtLeF9M2/wS8T
	 cCIJ7SPsmajBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA37C61DBC
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767363369.18364.5985495737618188187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e819ba56ab52b9572a3bc6b93cba4210b3834bb02a35a107fbb1e3d95dc8ec6
Date: Tue, 25 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787673633
