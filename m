Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366D36F30C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746461995; cv=none; b=MsKIpjbm41F1IYcQiiN/iyrX0zu08tlhU6xtStFuaTPjut7imF2x4zJNK07G7uAd+xFvcxOTdJow3b7ClGtUvFWDjKR1AomHIe/+iC/RNTNNw4Rang+magDcdVoweB9SOp36fMKZver0/fYb4/7mdiLb0MKZ2sIjd/vh8Gv3yNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746461995; c=relaxed/simple;
	bh=+iMHLR+sHoViM4e6j/fAuWCfzIAoBxmJ4lbvbVr8Lpo=;
	h=To:Subject:From:Message-Id:Date; b=KCC84sV+PdqLrGfi3eZrhtTclUE5FBGoK5ofGgmE1GU+REtbDFlW26eBT6S2QDlIYQfDM4x/7hg5A+iSakZXG1vnJcUryUi3iPLC4Elg5SvsKIPequvJY/PkJUqMaw6XoGJZZkl0pSpproEEoj5hug3oz474bDuuIgFZwnDWWFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEvXWNkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEvXWNkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E072C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746461993;
	bh=+iMHLR+sHoViM4e6j/fAuWCfzIAoBxmJ4lbvbVr8Lpo=;
	h=To:Subject:From:Date:From;
	b=NEvXWNkZ0uk9RamHnZbjym2sfkwuLXpMlphmLRMSHJljvT0KzIxoFyHrA1RR58lbh
	 ZgkGUZV6FHEmEAomg14TwoHOdwTAYLqeiU2JsnkxYnvxOAlOv7eSqq8QD+aSU7sv7d
	 yhIZSCKI9tEq9Oo1RlXpJJgd6IKnpFr1URN89Bho9ffBMYfdIHg5JXha1xs0XW/q/q
	 niuIIAFVFFgS1jk3uxNNanDT0vwMNXc0tzlF6BK+O42D/hFp2KDLWAhONYbM79nzw5
	 eTG/dcygZfVgQuvYHF7Q1aiM6h937AmaBKKXofCiHWyRiWeCo7qO3K8IQOxH0WNvBL
	 b87idAiaLBv0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646199358.6896.15973026068978130092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b1e3cc4685aa36cceb9925103ff887a423a8e476e56056a4e44bdb65e22938
Date: Mon, 05 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746461993
