Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0907DEEAB
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706934497; cv=none; b=qmW3CijgRHKYzRCeVCLrBHlaIofF58mgHIcW1pf7qe15Nd9ddTearvcpST2AoPtrq6OjgpbXP3gcR3GN0fQyizDwJchEWcOsWDwtdQMVxNpAhIZbLE4X066S2Z8AK9cZP2+Oha2lW7RGN24oaZwEQ7AUqvUagcYnzLPXOk8ax30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706934497; c=relaxed/simple;
	bh=u0OG8LzIhkwR1x9hE1yMYmdGKLOItMu0LxK2mC9tt4k=;
	h=To:Subject:From:Message-Id:Date; b=WFBhpApQKHHCt7wmmVmVJXKfdOLpRyrJHRuQAw/4kMahs18hm+PhbVPMH+i2ZXOkD3/3LFiPsdxmWPak3JxlyKbL3yTqWRe2hh5qExBq6L3mj6HYXhyR+5xh9b5IPfP6QAtwE/7yD263eaLZ7PaVjS7JaxSziYSZXNcILAmlW4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n70CrTH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n70CrTH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA0FC43390
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706934496;
	bh=u0OG8LzIhkwR1x9hE1yMYmdGKLOItMu0LxK2mC9tt4k=;
	h=To:Subject:From:Date:From;
	b=n70CrTH8fa3Hefx0OcGyDEDqQ2UCGsm/Zk+/7c4j2gRGkcDrv3gJSR8sK6XNYDXs9
	 mAfxVr3x0/gaVYkwJ7Uz1IZJLsYLWfd9Iwnip+1MY0oaYFszzVMBatu3CKzFlh+zNf
	 MpMCpMoXWUybpNf7PBxuU9GkVuk3C0/fyGNIyD821GXm7FDzkSk/m5lOBlrNzaKqf+
	 kD7Ts4ZB3jkXoWbriCUy9XOi3YN7SqxLE1Ow5LOkRdYYbxa2K98t3blnZK6GV1E00T
	 ad/PoEfktN7zYvYmrSTbyzZ3ez/wcbYG7x19agD1PM5rFVznZDKW/PH9F6JX+YVqrz
	 m+QcoRrMU0eEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F225C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170693449637.15215.2655097812657471554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2aa1f3c412c0be988add6d0eab967c5474a1122298c811f0c09041f2dd89b6
Date: Sat, 03 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706934496
