Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3682731F989
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778724634; cv=none; b=AWRlIouSpp91Bm00Txge+cW82pWYSaRiI7JkxivFCp2ItltZ9QptP8M7pTWw+/kwNyHzXha5UCpe8ZZZSx87vAb1Ddo6F95ylD7rXGrrUziNNlK1jbvParx4ylpmIB0KOoC6MLuZlGKUXo4iAviIvkr5y9ooq9rv5YwNchlqfxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778724634; c=relaxed/simple;
	bh=0Bz+/n4CIiV+mgWMabEowb7MWdzGqWExL9LWL+6W0EY=;
	h=To:Subject:From:Message-Id:Date; b=Pso9609e18FBHnHjBvaDSC8Jbv4X6dEN3tG5Z1v18ewb2UFu8LEMNxByfkHR27/0ODMFGtzyWpVkdQcyZh+h8DK4tiwrckNboyx7wVmdXJKBBCu9aIMoNwJCnHTjBAtEYCfOmRkb8YLcDLTfimFw/PkBLo8t70Rvp/zNllAyPxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc0y8tCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc0y8tCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB743C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778724633;
	bh=0Bz+/n4CIiV+mgWMabEowb7MWdzGqWExL9LWL+6W0EY=;
	h=To:Subject:From:Date:From;
	b=Xc0y8tCjfHrurkYqcgy5aKSLoqKtHsnK5vasHU8iylFbJzTFHrA+uHGvCKDDW0ZRI
	 q0SkXxV8dO4HbRs8FdjyyL49MjRDZgbaYjwvQAfJaQFL5JWX4zZ8WMlETPEnjgiMyA
	 FsKZXXQk/5qc41N2qWpmNx3Qa1jvc661FHkDttJGq93Ybxut2Vo+Z1g2REhBcurdfg
	 1SlkS85QW3+DpW8EDZDDrn3dqRfZIaP360bUNT6KIxbhfEwPNStYsRSgoFGIOqOljb
	 /oV53oIU2H8YMnQOAJvdmPK/8BM5EMB4oWANuE1Vpy9B+ANoaZ/I0lrPEN1qelOvRN
	 7ev10FYHjdbdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0E1CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872463369.5960.15534865596643868397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9799a162ae35330a40b2499851f5a170e1e6ca076b5c44351c80495adaaa28
Date: Thu, 14 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778724633
