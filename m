Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D776A33A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717842443; cv=none; b=Sh21NzzRlR2QFaWFAQvtBpNvkF+o6PsuVlqAJ7BpRHVYq+b5rp+1Hb32zmTbPdNFaW/2nPQLaFSGANGOUz1oNjx9OBmt7JEWUP8k2iLRaGOSryM2kkq+T4Q9Gp4DQ3aZLVA2bYvSJBOpTfq+ebJPfgH1cua6wTsFTt/Wvv3lD1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717842443; c=relaxed/simple;
	bh=gIKt4l/w1A0N0gVcGN1UZ4/mfADdBbvjkU3ENGOGaOg=;
	h=To:Subject:From:Message-Id:Date; b=I7H/hCjyEDbMtzQK5t4CF7DfSF5yPqBFY2DAYTz4Qc/E4/JX8S1dFV+u90ZRazB1JomvcKXHcwOLA4c9AO7oTkiEjRBDIOKp4kam6qmlOXCYZyE1QKqzkuecPugxio35TvonBJcI0Hu7oUppkukWfxkmB3q0yPHevTqD0gxENlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw/Uh1Eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw/Uh1Eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86A3C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717842442;
	bh=gIKt4l/w1A0N0gVcGN1UZ4/mfADdBbvjkU3ENGOGaOg=;
	h=To:Subject:From:Date:From;
	b=Vw/Uh1EgBarIsaEraoCK5sn52oKubUumt+BGzaqQe9jfnB1gycF4t7uFeZMRn/O0N
	 QPxpfCc4pE3572ZSXkY6HKLZlJxmkbGGhkWCFMsM8bkk6GXDKRnPvhunucS4ZT1OPT
	 7tYiTEHP6n8C4qYYsnCHJs0yGY9HFPEtl3TbdkfVsf3QQEog7+D0F7CyI456Mpfoos
	 YV87G/U/Gw9XQEvDVb72COVGyoHW6vOJVzq7IPlVGJ+HuAZ7TvxiQW4z4DtyGawgDu
	 5wdU41FznKrBnk//5SrZW/GOkJ8Rh6pr4CF/D7CkXeyJe6CiKXgayUEPzA5Uz7Y/0v
	 bLaC5VoFAYRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2984C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784244278.24137.12136796295287559308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1156185538ffe8638b63cdd354879b972e8de09c3073ef410ca2925ad5396d7c
Date: Sat, 08 Jun 2024 10:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717842442
