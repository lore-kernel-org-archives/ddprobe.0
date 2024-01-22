Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54093D386
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705931897; cv=none; b=R2VoHhvC7PycJQoQDeQJt1rNjDRobSi377C0bp9mdw3eQKlbGgo4nw6BLLO0YhBB8B9taKXQtH6eNbP6Reu/7oHp+1ipaxt6CMjl75NZLjcox2Yz4mqtoHskg261x4bUA71lU2vFnUWusWB8E3jN2SOMWbsSF81OgI0t0UMvY6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705931897; c=relaxed/simple;
	bh=eDWVSgt3wasJvnRVXuFfKlZrh7CIraHArUUqdS4Qz9I=;
	h=To:Subject:From:Message-Id:Date; b=EOFVPVNafdgMzRm038UOd/RGMnXXcwK6U569n2XUoLSrlmROhP2HZK2826tLY4BHmNZvjncVmYPKvSOlnaosGl9yiv0gI7OKMlDzZvoSoSmtFml9aSsDi2KmzOrPrQYAvB2tBjaEsvSzMEuAV8BZXhVa8eMmBRi/z3sk5bszzeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqgoRxIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqgoRxIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE33C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705931896;
	bh=eDWVSgt3wasJvnRVXuFfKlZrh7CIraHArUUqdS4Qz9I=;
	h=To:Subject:From:Date:From;
	b=lqgoRxIQOoTM+wIMa3vrEdbXi/GG3CSFLv6IyzE2j6ponVyRdlfdeK5zjRzj4wuAC
	 gmI/ubXvU4HfV3l0NRWfdP3DOwuc8noLT2l9160EpMWxRDHOvpZDTMhHWO7mANaXgh
	 zvuRRK7+db6Ecrj3U+/C+E/top/VRUwKIcS6UMR38nXmy/4MHNvyVP9HphLhfEVeKn
	 WsFk3H2x0vgnoKrRaKgMLW+XvXYYDPDNmPymPMsrTusqo8HygQt2sHGXgyem5uKWXX
	 lGFWdOhN8LDx8BDfJtoSV7BtcoBHC0bjD2XVxcSRrlgkrg3YNkQahAxEMxubOcsCB1
	 rKkFzrpIA+YvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6042AC4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170593189638.12897.1224271663344070326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8602fab585f68870954fd1158de7a70ab71eaf820d555939a79137ebac4fc10
Date: Mon, 22 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705931896
