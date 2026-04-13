Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8724A32
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776057454; cv=none; b=DVKwGFmjRlCsDKUZKnCxT3rccJxiCfXeaRcJ8kI9iPfhsb7YGIz27E4oesA2XszMFR5ha1QOvdS+Mf0/vGShOxfgwHmHA3aSl3+pcY3pyFCVEGBk7T4pKVJJY4dZN/KerSyMNma+C1W5GfCx+yz1d6rXrB222MpzFlP9iDyeD0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776057454; c=relaxed/simple;
	bh=1NGUy9Tgd/opVdxHMmxwy4T2s2Qp4VAmpDpUk+DSY5Q=;
	h=To:Subject:From:Message-Id:Date; b=o6/PbcEf0KSdGgt+Dmx1GwCnJyrytjZaTkE7htAKznoNuIaAxnP2//l91/o8K/qHu2sL9VzPnTPPkrn/6CkGb1IESGYlQ0wBl+aUGZkFp/4VppzcVrFjqD+mZv8JdFRu+DdwaWd1OTYO/0AwbuTlDzn5vMtv6ZVtIzjGM/JY54M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AF+KLLLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF+KLLLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE1FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776057453;
	bh=1NGUy9Tgd/opVdxHMmxwy4T2s2Qp4VAmpDpUk+DSY5Q=;
	h=To:Subject:From:Date:From;
	b=AF+KLLLBwxIMlo21ARmaXf4wW3hRg4K234S8LEOXueDM2fp7fy9pDEHap6Hj+AVL5
	 Cl6bT7zIl/Pi5E2SUXczh2DyTUv1O9O4TzD9QMUdncq0JnHF9OvIsrdfyiqtugnCWe
	 KX3gXqqdvBlujduFPNBt9Q3+43EKTEvWbI1gRREhxcJFL9soAE8QPcLj/jKOzC+4Tr
	 MdGWVbDeJa2DnCWsKSLNSMvCuU2+ANa0IDpyPxqKzkz6r0qfWp7w9AoItMB93ebH7v
	 uBPqLqbOinzrtFqXuicyLbUPnrwa7IyIfnvHhkLrP41BneXIMd/BlD1EE+alCily5i
	 KSy8JJivNkkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACEE93813
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605745368.9314.10994540944427747850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf8118eb35ad4b0bb39c77d9c61c98d28ebf8d6b20c2a156579121ac8d013ba
Date: Mon, 13 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776057453
