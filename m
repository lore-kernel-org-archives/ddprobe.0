Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE972341677
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757009393; cv=none; b=u+ZEtXjRiMsmDVr9X6INnPF34pocFl2TPtAZpSuU4Lm2swkgvQNM87e8N4xbYOrUyXpBz6ge/+aI96IQrCgpNgC5vLuqpKdEJQjKqCVKJFEQhoAto4loXLzQmYOnv6i8n6N9QxfONur/S2IRZ0u2yOrfL3PdI83B12yvr186mlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757009393; c=relaxed/simple;
	bh=IliJwAFh6bnn9XWtgscp6kWK+Hha2QLczyj+xAvB5aQ=;
	h=To:Subject:From:Message-Id:Date; b=bNXUA7OoLiQFnCYiXVkyCAD7SBro95940xAaKmKoGGi6Lkl2wuKwSDWkvaCCtmdCFJRyUEJ+w1F6T30wxV26ZwT4cmwMlQbw7P7azmr38U2PfqhtVEBNVl6utI+KRfnWy3HYk8bOHTpy+7u9WtK4c4HklxPr8gWnh3E5j7dshrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0u9HEet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0u9HEet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A829DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757009393;
	bh=IliJwAFh6bnn9XWtgscp6kWK+Hha2QLczyj+xAvB5aQ=;
	h=To:Subject:From:Date:From;
	b=V0u9HEet8P93iC3UZJgIqSt/eBe+2I05k3w/RKiRTpwRvpasSHykEYUTcVy18ncL3
	 GhcYesxm7XTxoYOXOfEO6GihmpvdcLRfY+ewwFvCaA8kG6vXgUoH0BG9sOvGj5CjwN
	 OaA+NyUs1gRBhv8IhrQwElHR58MeE/i3YqE0sUh5RDAxE7Lx156sJsgxuuLFHSdyNE
	 VUD0SiQbYf2Q27otJ3u3y1K6Vkcl5/WkEFmKsckEjM8wX5utXaI8By0QXgY+C/EqGD
	 qj/39AwjAOXZmCNihU/t90BxU93syS/14pWJfeY7VU7ejDPwrtAqxiHuUZax+sYwOZ
	 UxXoP8OrMteeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D0CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700939358.587.5871186583455445956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41b98f52fea4b2b6aba00c506e5d1d05291b04f2502b20708e2d70c9d633f77
Date: Thu, 04 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757009393
