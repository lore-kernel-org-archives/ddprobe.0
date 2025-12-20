Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294C91DFD8B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766247834; cv=none; b=crKrXCvddmI3ZGNXojyDA5AdBsGCD12Sn/i8kyoJZnDm037O21mo1qhFtsHfDwtp6kk1+uxa8Y1hZ0qUIUpNDwFIVHmr0IKt5YOu9Sme9IAsm50PAy6GU6pZIZ3tYgQqwWAwVazH5szak7eFZVMfsz0yRFISgwJgmJnpK8DS3ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766247834; c=relaxed/simple;
	bh=3hMIvwy3KByiUVbp3locejdBcoK0Kr1HoAVVw+7GbqY=;
	h=To:Subject:From:Message-Id:Date; b=PGdmoVGRnoVz5NmzHffsdGb5qj81P+PupfTnhRgd9dLw8ixxgE2ywtsV2G7Grrpgb585G2Ny88FRPezZ0oOPM+DakT60EbU0oTQXqdi41aKkwBq4y72QiOh3oWuGIYoPCec1DWMB6rsUD5HaSuPD2wh0Gv3ihXW77OlpKmmXI7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj87fJ7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj87fJ7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8114C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766247833;
	bh=3hMIvwy3KByiUVbp3locejdBcoK0Kr1HoAVVw+7GbqY=;
	h=To:Subject:From:Date:From;
	b=gj87fJ7k52a9t9OC5FlM2npPFogh7TwpdHsL73bxns1VkZm3dBHDGu2VlwGQSk6Up
	 21hVX5kHTTAFssbnsTmj9WG4oFE1Q9MVidSkdHHGTk1rIgY62l02RwvquE3raDNY67
	 +kiVokcJ7xKLtuW4nBrsEE3vSmILtAbaLAXFEc5+byHnXniaRbEPAsuE0a2JK9zCmg
	 SiVrcBL+P7QE47IOgCB69Xe2zNlxt9zPMnj/rWFEldHHztFKvU5NnN8KyxYN5AZ7GM
	 grdoesZNNFyIa8r00JOPQnZy9AscKBArEsG76mmi8qKKypP5+TokN1M4gL1N1VjfOz
	 M+xkGLvPSCxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA6E668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624783358.6302.8995595242745284287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b866a08adc2a174a7f47595bf89a925745347bdbe8ad55a061acda95278ddafa
Date: Sat, 20 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766247833
