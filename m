Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4A1FBF0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760219994; cv=none; b=Dx/3YOFlxhsteqTpwncMGVzevQbjpQrnEL7ZD322SSjYMEgF97UEmSsHvS270G46hHSq2sYpHBbkAHbOnRABkqTtQmvN0v2RDcXf0kzz3wABmAfSwyRYqnhRXko28pD4+tSqPLQqXsmrUP9JMPKdkEiWV2xQ3SWhsWFw04wYDd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760219994; c=relaxed/simple;
	bh=BcllDYlSdse0AfHw7Zg10eu2msWg8eLIAf2bpPvS5Yw=;
	h=To:Subject:From:Message-Id:Date; b=bYSICds2x27JxW55IvwgUjhKNuikmggZBDXoR/b2ViaCJVxCVC7BM0dnLHjk7abb4hkJ5cWkPSlgSlHP4YdZjDy8Q5Fh8MgcMrGeacIRT+sJCDYGbFo5QR0xwH3oPo7zP33Z+nRge43v2NEtwenPMIUlbO0WDbYF8p6A78WPhiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjutLKrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjutLKrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F14C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760219993;
	bh=BcllDYlSdse0AfHw7Zg10eu2msWg8eLIAf2bpPvS5Yw=;
	h=To:Subject:From:Date:From;
	b=RjutLKrkxWoeNsTjZkkcND4RDDm934Bl7JSiSw7ZM8pWya7hx4BPdWduM3xhcTvH6
	 IQxXk0yoQ9FcQyzFmtWWPPQccS/hrbFXZmco6+FVa8XQbPs0CzwQpYo3XMO9I66mi4
	 4bf6OnMEUo5GZxW9yXzjJbV7PppbacnLEmRVjR6p6uZO2deaFVlA8C6zowKpfPPBSa
	 xUZ2dQeNPQ9iDVWhApsYjQRUk4g5qJpaBucOVOnnVpfv5ImysklEgmBAm5c8+c6tMZ
	 bxnya/1xToHS7dMiR54d40Kcq/zgJG3zOl0OhhQvqsjQSvnQFkLt5+Zsv/vpmjIDZs
	 AYEuBlIYj8/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116CCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021999357.21196.12327884843582828927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00dc779e35f248bfe1c68cdef31839194eaeaa0b967e9eae066ef3f890540c9
Date: Sat, 11 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760219993
