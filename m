Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693183859D9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779540154; cv=none; b=XqfnUxkKrUPIvWLUW+8kqGt6yTIRJQ06pMoHiG0H2MW5KE4TQorNL2oamyJLlAdhGQ+7765KsYaXXE3jWlMyKH1nwYi+mmK2lFWguZ8V0DUf7AGG72oHZvby4aMYXr9BglJNHLY3Ssa7Rxij5hLhYXZP+DypATcZMp1L0unU6uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779540154; c=relaxed/simple;
	bh=mSW2sKg5CgXfVIb0rNzxTclc/koGWtoM2tvc/HByqxU=;
	h=To:Subject:From:Message-Id:Date; b=KBXsQ3PEd1H+cBGmuHqgTpawosSzMbhCIXK3/XE8JjwkEiNuh69Af5DvxQn5kZwavyf5n4x4dzlfQnM/m2iUl97JFDR3eDHYB7rNtWU7mL87rtGNtu6fmY3GKanF9JnKbxqVuRawWxc17fTl3aom/pDtY8V025ZkuHmhozw2b4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeO0AxZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeO0AxZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6210C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779540153;
	bh=mSW2sKg5CgXfVIb0rNzxTclc/koGWtoM2tvc/HByqxU=;
	h=To:Subject:From:Date:From;
	b=DeO0AxZVldqwQqIhq4szquh1dCJ5FhX7LZr0FSl2eocEIbz51J1u6BbN6GqDbSBOK
	 IcDt46rxtQ2hAZuPbZJAqlbkkMoy9Y/cFJvEGi8rbrDP7V9qBkcpDZaNHN7QvwX2tv
	 ISNE7mQ1yp+gZ4a8y/9mNDMH8UAeREGCdc6qTr14qiZv9/CU40ne2xYVWNtsZ2aPii
	 q9bqZCEI5+cVfm8qJKSQXaTa9cXcSxUSOvTIbaNYZzg7CtwLPEZmEULqFkUoPRzQ4G
	 44NvT2srZyYq3u/JGMuLs05BJzxJWNUigHoHy36txuBpbwVHSEYlJQkCN7NkGZduyo
	 zJZEY/rhJOjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACEECD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954015368.10296.10684532926208696970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28105dd81c6ec61fad599cb3f49b27e204c152a7c4d95c63cdcfe98d4707e4e6
Date: Sat, 23 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779540153
