Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251C0311C39
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764677574; cv=none; b=IxExkcjt57cg1YUWhkn3xe9wOfngLAtUpAwNWYprcf/4xG9IEV9Ju5Y3C/qQ7L8lGxkJCcg098yzocEykInPPEuXKcjnRxNRZUEcoGozeBMn1lkWD6/WbnxWZ+vdJsBzJVhsCnZGC76e+njEXBly0S0sfS3FnFZNgdKjI/QQWg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764677574; c=relaxed/simple;
	bh=1fFJva3OWLT71wGVdr52QlRrRcnQUatcZaN4tYghihU=;
	h=To:Subject:From:Message-Id:Date; b=tBI9b8uSyFBLpn5x4APqY96X6l//bPzxQcWszimYhRHG+DQge7mY5QrkuAYuaRWtGTQg40ngXXXaZ7WjgGCfiyeYxm5GumGbfgja1eeMePExBSOWNJPCPGJw/rZ/BGzMbPI7kdnlynKHObOMrQhQAwQpAawNLCl83U1uG1SoMxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRogZTr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRogZTr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A532BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764677573;
	bh=1fFJva3OWLT71wGVdr52QlRrRcnQUatcZaN4tYghihU=;
	h=To:Subject:From:Date:From;
	b=BRogZTr6dGcnkD8g2SNwSxVD2OyzF1YX7VGR1iO37wptnWkGBkjEwdqV86YF2306k
	 Tgpr150mq0rWffBmb4396lghyx8Ejij5nMrte/fWX+XUtvq4nqlcOjZiNJcedgrMdg
	 cUH/pwQMg5fNoCfY/I/VMPXPpCEe1MRp4ygpY0lk8cWttG1cWVr3N4ZeFuhZGPFvOA
	 AdZmKVaKELXID35OOLolz2lGQ0yxu3EqACqgEpOUIXDKnLrS5C7JYjTIEdokbnXHXN
	 YTxRZIY0FhthQwxJaZN09CtnXAvU5Exfq+P+kKVPdXV/tqX+0MqCyWuWV0Udgy9a9Z
	 1dxQVySEUdK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9319CD116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467757359.18823.15486090430133951895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c324821e2ae8714e36c4d689986470f6a190a26940f89b726ee348024e7f71e3
Date: Tue, 02 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764677573
