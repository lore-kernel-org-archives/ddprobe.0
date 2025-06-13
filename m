Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C82DA772
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749800994; cv=none; b=owdtMayGq4ew7TQ7H6k6oqu9pcViWgB0bZOIPoaDN+DuJKt6+GTSpkskCFUIbmqzh9WOEAdFlWpYXLLMezLOg81lQoUNmWl1TC37sPCitKo6SghUJJIzQSX6TgZQVKr7SbmQdSMXvZC7WalAgnZyyVX4ll9HPw9XYMcuPrMvTJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749800994; c=relaxed/simple;
	bh=RGHr1OeHhmZDoQ2/Setg8fJEaYgQf0urQlPXKwucjTU=;
	h=To:Subject:From:Message-Id:Date; b=rgHPaqYK670zLAuxaT7CoOsULucC6RcGMhDrDJjG05Zy1IkvsjXeufmxPRjwj//qiNmAx+A+IhSq6IAjHgJQuEFg+RHxJE9YAtAo+5Ft/pqaynmIEaGPc4K7W1WW8ehKzhbIZbUDoNFIzNlyBcTpRoF6dMkB1I1ABtl6m+taXm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJgmZy8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJgmZy8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0304C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749800993;
	bh=RGHr1OeHhmZDoQ2/Setg8fJEaYgQf0urQlPXKwucjTU=;
	h=To:Subject:From:Date:From;
	b=bJgmZy8gzSFC0dNlzyIMXnAAqmJQ68hod1Ot6yLiqIaIDP+AaE9UERVCWTOCGXqsN
	 4LMIr6LkaorlQhokIWyOAN6JOEG6xaVu1wRBqreyt4qBr624gTONo0CCXRQvNM0HqC
	 xutWOjLUoPB2uuXWzzZdPfuiiIyLJnENW47AQ7jiu/dHo5X/srSkMhOUggXTkmgxpJ
	 VR4geuMgQ1RZJXz0YYo873gJadipLvaDWpd2U3PQD/etrkUWY0gETOXA5UjMqIi8hW
	 tXWUXkHu6rspcCkkygyA737K4ulqFmjeEql93L6+Uak6DC2TTFm7tqQGmtiSUeR7RF
	 BS7kPv6IoVhFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90476C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980099358.29055.10751880621181203099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b04a868120c48298ae58564eb2c0abc97bb8f4cc1ca8c64a0ca258115c7d03f
Date: Fri, 13 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749800993
