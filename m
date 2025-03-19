Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D3211464
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742372394; cv=none; b=L4geeP53dSG6BnC0656d5uz3ot7uzzyac41y7wdREofMgVqavt/+61bN7jmgMBn7ZiP7aOoicNFnwuk1H9JQ0XhHUbije1MRwpeypKnqX/3GNW0XHDeUBS2TX4FIisKFwOTaZFNNgo4aZA+1aQleyp4I+JLWVCjEdx2FZGfMrSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742372394; c=relaxed/simple;
	bh=n0AS656XnXgXyChb8yXcMNvrFGil7XDu615iOhw6z+A=;
	h=To:Subject:From:Message-Id:Date; b=Qf3s6WnrjctaGU7aUAg0thjYUMIKiqCgYpmfK+LAmt4z3m6igs7YH9AJkDrS7TjfRzyg8Rm/GdG1UFQ8NCcKkcO/Dg2X6D0Mv7iPBmCgMQLx4CNKNsBCCyBQN8CxNnpRXsziDw1AQ8EIwfRhGGXGCStHPYvEMQuj2rB5Ygd93/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPztNzIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPztNzIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA7CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742372393;
	bh=n0AS656XnXgXyChb8yXcMNvrFGil7XDu615iOhw6z+A=;
	h=To:Subject:From:Date:From;
	b=DPztNzIPOGNlkebX9QD1SlRAuTcSmW+DpK/JjJj12KoPpMBaTBY+PxITKpOuHq9tc
	 8QJPd0vS56lPfwWOODqUO/WOnGzx/EVZbeOrZcp8gMQnrc1g3X3/D1aWVei+ujmnZe
	 HibNl7zQTB/LPOnum3zASZWnwcWdw1RNaN/7uMt1oKcqXXlV1igz1f4qH23HdjekKt
	 seW9zvi98teaQA0in+a+jPQMlhObNmfPSDr6D3COCUTmXUuFLC7DJiYhOGR1JYaFhA
	 /boPxtmCuZxN+b+WuD4IwyW895PHDWFKEP7Qiq6D1GJODc05SdGU2hAIbVxBQ2xe9b
	 xiSPEznfTTpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41EFC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237239366.29892.9244473070327241863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e6c79566b4a66fe20c1b0be2f6ffbc8bd0a8dfc5327597168355452baf7c83
Date: Wed, 19 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742372393
