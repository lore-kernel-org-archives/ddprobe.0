Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6009415B132
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720700843; cv=none; b=CHicwAvhKsy79ojBKaS5XefhlWvPbbiCJNO6oBN1OJRIDvb0Rb7Qberk/vyrInZ+T3pJYzfnpt4sE9RxEaCfsupyseKXlMyLpOup0mFKRdTXmtIz7Q1RHzNDMpGGgYmFSrddmsUml0pWdTL7Jv2SFh+Rz2yjJ8vA9ofulvaf+Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720700843; c=relaxed/simple;
	bh=izlQccQlvvKu5RlOfTCsjntUQyTatOeXi4Jfw00vfMs=;
	h=To:Subject:From:Message-Id:Date; b=dDdFcpzCDznJdky46DxQ2Fw7ayHmuhQHjW+PAN6jBj5KTlYc3+IMgmg8mbubyzZyYgi48ptpmnoo5tJf8z838DxDVSxKa3YpP/fpyPZmkaIqZPgPNeAZrfKVYbT5vIne2iuPcE2lN3qke7E4mOub9WLlPQPoAv7eOyhAXNjz3zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLCGuWAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLCGuWAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DD5C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720700842;
	bh=izlQccQlvvKu5RlOfTCsjntUQyTatOeXi4Jfw00vfMs=;
	h=To:Subject:From:Date:From;
	b=nLCGuWAGHi8QcxVftFqi6SE++uOnmtFgmfrRfSHdgQZlkVLNU3bt7ZAdz1C9c1sIX
	 vjdgl9tAiIH5MetI2lMzEe9eqahTbO+9j3MOtWl/W9bRD33vtxzJrCZqVi/b6UOnbN
	 NPEiM/mNcM5awyWjb+c78x8Lhn36Urll/yiUiYdL+v0s+4+uvndSe6dT78RLc118hV
	 SNEV3sqVjFlKb0ru8xaHfe5atI7yEtZPDtSVkXeRld65OIV/gu3LYyvSE8Gvfdzy1g
	 5K9IsIxhtbDF5YS4VRoKdc1ON7ZCDQY827ieXSAoX5dh+H31Jr5G8OQAWgMoPJlMc5
	 +iophvW2BuHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE94C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070084280.26589.16247226304319429369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d505fd9d9988ecd6bea23fe0a638a8ac3a2e243cd3afe9fca179f1318ccc1a6b
Date: Thu, 11 Jul 2024 12:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720700842
