Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17820392804
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772022894; cv=none; b=mUJNhc5QCXxz+SfB4zTceBJfDnjqeimEge6oCgx7gqRWLTtydgWgsLWWbTl4YdFs3AwTEZ/8d6RuYeNCAwNRDcJEdrIEBCx8+kcNXOOY2xpt/HSZzZdfc4LF4wVDwFbYOJ8rpejP6pZNMqKOYePzKZyl1MOX+WN1mO1i7SRse/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772022894; c=relaxed/simple;
	bh=7msQJwYk+OZTC5buiCHB3WFeZwImysm+Vsm/RsX9ATw=;
	h=To:Subject:From:Message-Id:Date; b=sH8/EVDde+9pV4JCgdlx6NKN6ci9TgD8zv9CUpqu4ru1Y0kciMWVQOILl11xuERi/4e2eyEcBQ5lWEEgJKbS1Io4bYoGmaiczll8P34aui75SYeWeC1PopLbc7azy3CXp9JaWC1+Vpjpg7xjLshfX/8xGrbsk0gSh1Rj/KDnROQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPzv+tCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPzv+tCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417FC19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772022893;
	bh=7msQJwYk+OZTC5buiCHB3WFeZwImysm+Vsm/RsX9ATw=;
	h=To:Subject:From:Date:From;
	b=cPzv+tCMEess0dNa3eL/RgNH1GQd+imKMdnUlb3tLfp2RinN8bFUg0OTeZDTH4Sxu
	 YpQC3Ab6cNv4vGtGbRJIhMrv9DHTymjD/wE8aGWuxaYKFyNrvo+97BCk970GXnRMHP
	 engDgJko6O8prqFHaqCEbG2FTr+2f2WIgKzLVAzkctEu7q1aTTiGFUPhRVk01AGMf7
	 29vUP+4GcsR4eNWzykEZubsiJpKZGaN9bCHYv7VPG+df+0vk9CgVKBjPMVdPncxcKF
	 G7ZfHP6Iht1F0rGjzLs4y96aUYImB1+X2Qp/9QeF0MlYPlpGEcTVYsX7EZQoBOsXMv
	 nYX0urSpRDKAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F983FD374F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202289357.19624.12213755371969308044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60a7cddc606854c5ceaa6dec805acfbb5f64aab85d2e2313ace68736b98316f
Date: Wed, 25 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772022893
