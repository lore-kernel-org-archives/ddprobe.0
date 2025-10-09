Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB02E1EF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760012994; cv=none; b=rkGpW3J0tTWblNyibAUtJIiQ/EPnqyxr1axP9y2iJpbsWErmvKZmHGdoNGor8yn4og/AfXIXLedblhC8M3IXV8QKv/RY5CRxfi4e0rW5vJK8tt8Kk7RIOa8s3VmAQNCt5LJzMxSd4HOiNvdzdcJrHGGp6JIIgvn6jh/yFrhOVLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760012994; c=relaxed/simple;
	bh=DsfUqwNLEQqYhZ1WD7sA1fR3MdD4Y3aon/COuE4zCXA=;
	h=To:Subject:From:Message-Id:Date; b=Gb3eQ5Iq/5zissSnIM9h2njAVIXs+FnDMzpUVUa+e93HzS/elUxPg00/fRRvXPEIZvnxpgxWwmUg1NsLKOeUyJyW8y5uZLVK8Rl6sJaKT0z2AGVwvSeMu1bOoHKAhiBLAbtv4iGoNTeQc1C76hvosdTOjyntccf2iIr42eoY0k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le2LJJF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le2LJJF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD100C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760012993;
	bh=DsfUqwNLEQqYhZ1WD7sA1fR3MdD4Y3aon/COuE4zCXA=;
	h=To:Subject:From:Date:From;
	b=Le2LJJF6iJBdmx5MljDPZv3OFgOyMG3CRlVj1PhJ2B4F/9LOoEVXBqVtJTz5WRujz
	 ZdhZpyKWolzJMQhOygGsLvMPOTXl1H1xHQsIH0/n1guu3lC9wCUaUiL9ervRor0KcL
	 4k4+sL21MIE9w+jpeWtjYW5EoNSNf9PNWWIpdXONUCja4VfGEzkqtPtEL3W4i3+4t2
	 vhEHptyoloWeMPWzZhEGilZ34afDq1u8rfbQOvenfoICTFvVsj2gSaTcQVYnD8z9II
	 8nSnKVAonWqwh9/lc22Dc+o2pFUBWdXb2d5m6t9GgfBUSI22LK8tK1Dv7fdUK13f9Z
	 9YnabBJcnNYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B48CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001299361.13706.2388711361657082865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c8fa4404519a055b35daf1b4155bc936754c7cbd0a39266a978a6dc22bb650
Date: Thu, 09 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760012993
