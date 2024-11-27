Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F61F8F1A
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732727154; cv=none; b=oQlOpPkk3E4F92fYOEafAdbg53QrShbIO567yEBnHfxZj4lVukLfrpOtSYbEpGAUK9DaNFI1HsEFv0kZ9XiVDGtS8BCMjwPrfX1BZaUcny2gRTvherlk/s/hdWTjYpuXS0fSUnk/OuCf3cosuA3p+Kt7f2lAnZ/EtoDX+mRhitE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732727154; c=relaxed/simple;
	bh=VXMSvynwAIoMZg/xtraRLYgW0VVBcB5rNbSTo0feWWY=;
	h=To:Subject:From:Message-Id:Date; b=MlGIVVQWd2+T5uHAnuFZJjkncMwElVb1chLWgvWcnABWDLFR4ABOfakQOS5N58J7ods+cK7Est62p/ysO7OErpxrwEYD4vFvpYRXD1psyYOSm3S3m4VZh/CLpkk2Xux7QjV1JXeZ2oCJ11UptyevN49FNQ+Qcaog9NXqsaI/owg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne1jC45x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne1jC45x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03BFC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732727153;
	bh=VXMSvynwAIoMZg/xtraRLYgW0VVBcB5rNbSTo0feWWY=;
	h=To:Subject:From:Date:From;
	b=ne1jC45xQhgxaNhimgmeR5gNZckngX1blydpG2kNlpOlZaOln35pIEsDpTZEERRQ4
	 6EnD1JP7bkQsaIErewkDTMcfGQ5kJZWj9Zh1tSFSBCYpKD7hp9IBcuubP4mFu2TVr5
	 ZflxKy/8/hjBqgFnlncMAmkty98Ll2GjZec85qKqmzIqO2qb7giyYjF8bxLFpnxtkI
	 ul9NG70wxGqPIiKbjMqpU4/7FnNNmu/mdGQnJ/N/UhThAGhtMfjTcwtaWOSl0lWD6O
	 0INwkMye7CjDhuyWwV8lBI+9Tqp+gP9NYQNr6qxOoi54byoehpsT5nkOVos3gtFZmS
	 wuMrwXW8u6QMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6330D6ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272715366.16848.8539455313532258813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e9d220c56f6ab77471029a9d0b4f27e931699812dc4bac13845301c895823b
Date: Wed, 27 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732727153
