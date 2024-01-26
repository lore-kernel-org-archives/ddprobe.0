Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2075B1CD34
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706305697; cv=none; b=CxD8C0/DkPnY4W341JEnooqruJfgckF+BZWvwtvCON3wnrNccG4mHgOZW+mCVPhMbWmhWKNOSg7/oXo9vXd+yYJ4zIckr3bLAYy48QNaBVUr+qJIamz1EDqLgK7kwAea0bORnOfLVUb59Tk85Rf5zABD4c939E00h9/Vz8kf9Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706305697; c=relaxed/simple;
	bh=BLY9SwGsUAWj5D25QUcNik/jnEdm/xjBRb+EKBsPxh0=;
	h=To:Subject:From:Message-Id:Date; b=hI8vbQSGJ5iKV+d8sM18XUIRxOt82ERNQ13iJ7v7kQkZw08LomLCfezye+awnpticcjpKA9feS9WxvdUP+8CVaIB/u+HagjaubROT3004UyjpFaIeosg0lmVjm+KDSf654iPCYk2w2W1tWMxHc7753iOM83+CDJJuAjTfqRpfW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2MMAq0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2MMAq0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766E9C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706305696;
	bh=BLY9SwGsUAWj5D25QUcNik/jnEdm/xjBRb+EKBsPxh0=;
	h=To:Subject:From:Date:From;
	b=V2MMAq0MSYRxXdlK403RGk/MdFHkLnSTxLKt6qYl6wa5CUZBVEY1l0ubIWABYXzJ4
	 SUnuU7gLJZxoi372A/fRFsqN1yc1iOLbCHRnb+2KyN30Gn8oK4fTmuqujQHkBWBrub
	 mq5ygdTvrfy2GZ8Uu7Sa2NaOjg6ziCoLeEqoxbiWHoq23lYutUUz+XoIMcZ7oPzeYC
	 ZyQ8UktQnrHhT+hrfBRl+1oYtfLePS2wNc54nd5APBU0gkmMyJzPbMKTYuruIxKOxb
	 5FWFJAz8KUqTo0wykXR/7Cavt/Bii1Al54GrJti6Pf0YzyBb79Hiah6NWcZ0Jq3SS6
	 Zaa97fw2E0oFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA88C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170630569638.19740.16342249471978139557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba71f4874e96564f2237eb71cfc19da325e56ffc12e735c496f8aa48da1ac021
Date: Fri, 26 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706305696
