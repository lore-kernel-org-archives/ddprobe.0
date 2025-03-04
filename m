Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D62BA2D
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741132134; cv=none; b=bjXQkGsCOCP1gJxQ8QKA31NldET6w7PZFDLj4qMhIYr8tIrGs3G+CVugRS1MAgKTEHbJN9iZiiT1+OTCBZ6LHorxE0a0CJJA+0KuS2iHLMTIZaMA4le/FcRRstiBOeqYT53rEAFCu/QF9b7/CUxIQgjYoAiKPem8HcPxRTWNC60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741132134; c=relaxed/simple;
	bh=AY6wX3GzHsnAY23yNmX7dRrySes1UGd0EU9f3cmNo0k=;
	h=To:Subject:From:Message-Id:Date; b=Kr3Y/dtAjtKxyJcJywpInjUu9bLkWvNNtYss9Y76gxoB/ob71xwmBC1RmbnV6t1swzzd/LuFwyLaobQ3FBK2iQCV3115Ermett4Ud92AMICcEPdCrD7cNzVNH3ei6cV1wx8rY6PbvshBCLLHG7kZWZQXkFxHQ46UkRcFndoE2IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H77Naqxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H77Naqxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1B4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741132133;
	bh=AY6wX3GzHsnAY23yNmX7dRrySes1UGd0EU9f3cmNo0k=;
	h=To:Subject:From:Date:From;
	b=H77NaqxcVS1UgkQ1U7vz+dhKiCT7qYnKZep+Ug3Cv9vmXlKJ/3sO5/fiLYKNsZwvS
	 owPf2MN3h4zwk2YSrZUl7IzE04wLS/dlUCH9AHbk4ZYCW7/FB2rvh8a2i09TPHX0/t
	 AhATeCDlUMyJwAf/LznsJba3XRHlkPj88YiGqLAlkXdsC7eyEYK4KsLhTipfkvtUUU
	 w4gvXAAwh4GdPTBV8RgzRHC/J3DajS6xfhgC02OHouBSK1sHLPeyx+Fc7QY3sdXrh5
	 W6WMamZ9Sl2BaMqyg42bmqn6rabNX28Bz/wTWfnrX/KHhml6cl1qeiTPXkxtG5tyUo
	 YwODNV8ciRsLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292BC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113213359.9017.14077386989000158343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af46e3b842071920942dcd918de43e389dcea80da9b3db9f9c80925123ad827
Date: Tue, 04 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741132133
