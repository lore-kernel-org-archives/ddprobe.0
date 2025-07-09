Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9F5801
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752099594; cv=none; b=R2w3sRiGMus+MpgMtwC+a5GjhRYVP2XeX2SeeOXZRroyNHI00E6YJXpKhmpE7LwSXY4nZ8oz9ZYhNkKt9ebIpi7WJtT3Bf0MtBVedr0u5lENbPSC3J/0NYVGHRzk6jg9HUYNKeEnTP6VQAS5aeyVTur6Nq6BD5xfql3aRkcGodA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752099594; c=relaxed/simple;
	bh=P6q/ucolG2KWQbjhenmKh+4kmd2G2ZJ6dQgDMtWC2zQ=;
	h=To:Subject:From:Message-Id:Date; b=ayGWAQf9iAGDynUngfGmriLS/jl4wmQXxb7vBSbIYFCSVcHQVxO0f67wKqjR57JA23BivOMO4HzAZ0o3OZUWhGGra80HpSLzFisILsy0iEe15wx+baY2MNi0MBLuiOkQ1WcLcPY6IPELqLDUzHr7+zzRCGhW/NrFNKbh7dm+rJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmJxb9IK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmJxb9IK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E1C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752099593;
	bh=P6q/ucolG2KWQbjhenmKh+4kmd2G2ZJ6dQgDMtWC2zQ=;
	h=To:Subject:From:Date:From;
	b=RmJxb9IK7l0X/4G8Jmrq5g7pRGjh1jaSdy/B/PlQKgVMzIxa0Ny2Si2pfKr1mx/hU
	 WOm5iLP0bOZ9lHAA5UGS0T4k/ykF/ucTWHGYe4tvLXIsK3Sy86JNPQWnAhlght/rO8
	 F2okxwzM4ASJg5prNam2qvaxqLcTUdyJi2DHL0by6lKMz5vbxU2ULy9dCZMww1RpnW
	 KOj8bYl2ovaUVakJp4SpEhTF2BDUC5vOgicMltbnD82r77CjzLD5QOBi0uYOdq4aAe
	 ZqD4oWvI/s/+a8DngzUqL+7AyRBZSR5xfGr+wk+vmFvWTgywSlJQzmwyq/iawTweuu
	 FAKAyn8w8OjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4DFC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209959357.26473.1645760217518630741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572d56c0ccee8e1b0071d44718914ff6d4d5ef86871ca8b553dbd6eb2a7bb012
Date: Wed, 09 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752099593
