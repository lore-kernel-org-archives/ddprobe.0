Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B05199385
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771706694; cv=none; b=RxgD6vVqdvGulUJqIn38Vj3MSv4HMI60qzIQP0WH9HWnnn34Z4DYtx1S1+NdjepT/ESXAfFTMUnQp4EC4b8uPvSTlQMeH3Bw6mSH2kKhqQiVbR3UAz58BE0++4mbcQnU7XLtq9AfZdGJZqDTMmqRW49LV1VKH+J6u5L81SpqTpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771706694; c=relaxed/simple;
	bh=C9MArwY31RuodzkUobOCAzGk57zX2bS41VRdBBsgvhI=;
	h=To:Subject:From:Message-Id:Date; b=cQmmyMd9EFMlYrCFGnU+WW54LG3zzD8RzMyzkQnmL3pUytvdn8EtmPMO3MvriTiRiOydYN7iVurVJ3YmBbe46w5HlGXYUnwUJDd2uSnvXEmS/iY/rl4AiA7KIKNFxlr9bAskLRzZAwxnjfhGEwRbDF7dHHArZf1BczjuntZZXtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trQA0SyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trQA0SyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD477C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771706693;
	bh=C9MArwY31RuodzkUobOCAzGk57zX2bS41VRdBBsgvhI=;
	h=To:Subject:From:Date:From;
	b=trQA0SyPmcoe22n8d4sZ8UxRLuj/q/HJdfkLcOvu7MziT7+JzPjPSpLqtPjmxoQqr
	 YDMBKq4xvvF7uhpejBlL1uO23NBVdUuLU41pMZYHhQFIGFhH3uJqOAYwVGHM86+itv
	 tc6TqP77fiMaSCey2rQ3oeivFemp9BcxeButgSvnRWSXWC9j9S2hY8uQUEC/qrx1Ue
	 UOECDFgH682LzCpLslYh/V1nM+658C8205qfeqS0jvQdP9JzxIRiEUeW+4dqDdDdOs
	 ziX2P6YVwRbap5aa6qnUtFNuhM4U8ro59vxr/fykW+4JoCW5Gr6bY0cYTN648azzQU
	 iAJNUonihcQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A420C61DE8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170669359.26216.12984961932445220070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1604bda63e34a609b6e92836823f77a23b42bec233fd1c3f22c7d546257ed1
Date: Sat, 21 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771706693
