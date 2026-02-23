Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0692D35CB8B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845894; cv=none; b=f/VUvDH3c1egjoAqKir8RximhmdX4WItR9Sn+wh6F6/pHeazhXk9U1h4NDs+qoH62PeqInNdN4kfVVFkJhB17pvdTnUuDw1UMqlv4txr682ruh0ogG5VbxCd9HaiRgsBn1Wu1xNAYPnVtOVycIKJ8UpchwzJqbrU52fjlWZfkGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845894; c=relaxed/simple;
	bh=naCWwHeJWfKeiUeMfXgee33xnHn62gCnZn/2l15n4mg=;
	h=To:Subject:From:Message-Id:Date; b=HfVzomnu38N0iPyM7fNKPjivguCqxyaf5Jcclp9NL91xWHFKULvf3uSBvxWhO0dPpGNAnMQrY9HGqxftg5uiWnMmAf6PvZOtzExk3IlJ0SxOiP/lNibyP5NRG8E1pqv8bAYnIBxhV0OhMwDDPyUwVPEdSHes1vXbixV0Drhz/cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGELUXBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGELUXBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771845893;
	bh=naCWwHeJWfKeiUeMfXgee33xnHn62gCnZn/2l15n4mg=;
	h=To:Subject:From:Date:From;
	b=tGELUXBuMYGkPljTHFEOmBGc2sgJayXpW3xGyCrWuh75BbLy0H9eHwcX1+EQOFiu/
	 jRKlA0ISJ6AlF2pgbItS6hSfQAAdVqE4Xl/mGP7iaPDLwYVXfCXzRtWdl1lYN7oroE
	 RLQBLhoqvYW3dk9fP2pg1QnY3cVJ0tustGS281xJQ8MZFwWAoAbxAfyUb2UOLTrRST
	 9jz3218n7SUumf69DzGuquGm1CnuuXmcepHvLK0EOZdrY9ynzHrn37lVQlwGQ/PQ/R
	 J9QCdU6u1ZoffToGHjuyULxs325jh22BctWN6r4Ts9t9b09IDrF1LuGjI+3HAhIIMB
	 sGASDpTGpa5oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD1EA4FAE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184589358.3674.4895452142647912901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca06ee42baaf17f290aaac8f605f3d23e037fd635a17a3f4e540f4a88075b44
Date: Mon, 23 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771845893
