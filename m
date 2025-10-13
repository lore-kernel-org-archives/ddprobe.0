Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4F830C61C
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760368193; cv=none; b=NVnPpkBx0hVMys9ROm5j/zDsuB6+v7cP4GHxO88OUQnLB5e6BQSsh+leO/sWQfyErrZFnE2rzD5xgvy09+BB0EkEGksYBzwmPGLP7XwF4Oe43a5ctlaPsD6Vzy66+pjFasfpu9myFWr2i+KgppcRrNyF+GS27spL+J4CKNOujTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760368193; c=relaxed/simple;
	bh=M32GCbAt7sDXU1VDWQ6lZYcDeQLNlS+U64kgeRWPueg=;
	h=To:Subject:From:Message-Id:Date; b=BA9M2mScYa1kpPncs1YAVnvR8heMFkW1vl8tpDhQAPyR1bOtdu84NRyyxfsg9hJndk+HJsk9DMCfViJklVEed/HrjrWV1/ANyjMOI1cYSbOSKTGB9uPh0yfW8xZYE9iAc5pHORHx+1gYx/t7TB+NqvQM+HQjmJII1DZLjHs9ua4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr6aNC8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr6aNC8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760368193;
	bh=M32GCbAt7sDXU1VDWQ6lZYcDeQLNlS+U64kgeRWPueg=;
	h=To:Subject:From:Date:From;
	b=Tr6aNC8tmeW2rXMyQ9JgGMBfWfxQbZHOwqnkvAVbLqfSSywgF+760BHnQkOqWcqu6
	 0TWBA7Ub0hbWDQmVJTREl9d6h45Tp8FSXMKf9QJZ4lGUZ5FscUEG5/2ZcPW4jGwnn1
	 5UV5NiuBja9NVCq51C+e9zKpW8Gh2rn5eA0nIS9L/8VW2fMKV4eUC+NT87sr4i1uSY
	 zRJCxoV23KA57mwphb0U0mInt9msIr4cosCmbJpQtEDeoTfZWIBHvYC/3AJJs3n1RR
	 yfyyUELZNtKeT0+gPR94kUNEN9clFxpn1CiPQ8FL2YYC5IRY8DPhqxcTvwcCcNbT1l
	 X3BHeA4wc0RTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9239ECCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036819357.3751.12632301906599985679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f30021efce7c99613537a7e3342ba6e86ec836061462733f94bac2e70d57a14
Date: Mon, 13 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760368193
