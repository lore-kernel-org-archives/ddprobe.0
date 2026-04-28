Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDC330BBB8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777345654; cv=none; b=D8zzcu8ISpKiwOZfJelzwZhUa4SmL4iCrC7pq16e4VkEnK5uuvUq28FapfkhTbx1U9GgskLFUMeusnhaYU3w9LpMqGMrQitGnodvc/3evSB4pQP5RN2Qi9yDGbFId4yHU87wysuIOHs3VXZx/B5/9R6ETXjVwdoPXXuwwkafWSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777345654; c=relaxed/simple;
	bh=sOqXZRPQwTvBMNFWMCf4hgMhjN54PwJR3doyGMhxDKo=;
	h=To:Subject:From:Message-Id:Date; b=R3QClQbQaYTjS+V0H7t/PuL0yNxdl0M0/T7mtUzfI+LKheBvsOvOOBaAqdom7yd42zFA7NyiompgkinsdKHxo0eYNZlgqRdd8KxgfRbQEE1B1Dx6aFiz2OlUkkwqt5J+g9YP9ZHX0Ya5d/kyWfyEDq3K575+vdajz69qy3JEnIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh8eBF6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh8eBF6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDF9C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777345653;
	bh=sOqXZRPQwTvBMNFWMCf4hgMhjN54PwJR3doyGMhxDKo=;
	h=To:Subject:From:Date:From;
	b=Gh8eBF6gLCSmn5bZyi6PtmlWi9jEvffiedFoc06Qd/xzE6FBAj/Ndowu0z0NoCUuj
	 bzpbG4UYyAn1WeT9KIMxL5KcM6pJqW1ThESLuY8eNbCZt/p7luuDurZx5QTHqXrDXd
	 JTKGYoUIwp0Iq8v7gUnXt2oCRlYdQnxJlqZkVep7VKMJKhIAEdSnE81jHkubTLu2M9
	 Cwewoa6H4i+Ki7CRmbpoGJU9c9Wd0+xG9AHhOSDdyJ68hUJi0o6PESaXE29/Zuv6Bb
	 XUBfn5M58xRue3Ra9845uWQSwaUSu1Q7NuF7b2vRcTqZ17N4luyiv786hW6cCOs6Fq
	 pQn79/0g2jjeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB301FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734565368.13280.18238539636209159486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a16d9e4199b596416c7be3c89f88ab70203161f807f3f7f506db1c5388f913
Date: Tue, 28 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777345653
